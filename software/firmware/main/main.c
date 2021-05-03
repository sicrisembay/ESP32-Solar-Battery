#include <stdio.h>
#include "qpc.h"
#include "esp_log.h"
#include "nvs.h"
#include "nvs_flash.h"
#include "string.h"
#include "project_def.h"
#include "esp_sleep.h"
#include "soc/rtc_cntl_reg.h"
#include "soc/rtc_io_reg.h"
#include "soc/sens_reg.h"
#include "soc/soc.h"
#include "driver/gpio.h"
#include "driver/rtc_io.h"
#include "esp32/ulp.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "ulp_main.h"
#include "sdkconfig.h"


#define CONCAT(x,y)         x##y
#define CONCAT_L1(x,y)      CONCAT(x,y)

#define ESP32_SDA_GPIO_NUM  CONCAT_L1(GPIO_NUM_, CONFIG_ESP32_I2C_SDA_IO)
#define ESP32_SCL_GPIO_NUM  CONCAT_L1(GPIO_NUM_, CONFIG_ESP32_I2C_SCL_IO)

extern const uint8_t ulp_main_bin_start[] asm("_binary_ulp_main_bin_start");
extern const uint8_t ulp_main_bin_end[]   asm("_binary_ulp_main_bin_end");

static const char * TAG = "main";

/*
 * small size pool
 * size: Evt
 */
static QF_MPOOL_EL(QEvt) smallPoolSto[CONFIG_QPC_SMALL_POOL_SIZE];
/*
 * medium size pool
 * size: QEvt + CONFIG_QPC_MEDIUM_POOL_ENTRY_SIZE words
 */
typedef struct {
    QEvt super;
    uint32_t data[CONFIG_QPC_MEDIUM_POOL_ENTRY_SIZE];
} medPool;
static QF_MPOOL_EL(medPool) medPoolSto[CONFIG_QPC_MEDIUM_POOL_SIZE];
/*
 * large size pool
 * size: QEvt + CONFIG_QPC_LARGE_POOL_ENTRY_SIZE words
 */
typedef struct {
    QEvt super;
    uint32_t data[CONFIG_QPC_LARGE_POOL_ENTRY_SIZE];
} largePool;
static QF_MPOOL_EL(largePool) largePoolSto[CONFIG_QPC_LARGE_POOL_SIZE];

static void init_ulp_program()
{
    rtc_gpio_init(ESP32_SDA_GPIO_NUM);
    rtc_gpio_set_direction(ESP32_SDA_GPIO_NUM, RTC_GPIO_MODE_INPUT_ONLY);
    rtc_gpio_init(ESP32_SCL_GPIO_NUM);
    rtc_gpio_set_direction(ESP32_SCL_GPIO_NUM, RTC_GPIO_MODE_INPUT_ONLY);

    esp_err_t err = ulp_load_binary(0, ulp_main_bin_start,
            (ulp_main_bin_end - ulp_main_bin_start) / sizeof(uint32_t));
    ESP_ERROR_CHECK(err);

    /* Set ULP wake up period to T = 10s.
     * Minimum pulse width has to be T * (ulp_debounce_counter + 1) = 80ms.
     */
    ulp_set_wakeup_period(0, 1000000 * CONFIG_ULP_INA219_SAMPLE_INTERVAL);

    /* Start the program */
    err = ulp_run(&ulp_entry - RTC_SLOW_MEM);
    ESP_ERROR_CHECK(err);

    err = esp_sleep_enable_ulp_wakeup();
    ESP_ERROR_CHECK(err);

    esp_deep_sleep_start();
}


void app_main()
{
    esp_sleep_wakeup_cause_t cause = esp_sleep_get_wakeup_cause();
    if(cause != ESP_SLEEP_WAKEUP_ULP) {
        ESP_LOGI(TAG, "Not ULP wakeup, initializing ULP");
        init_ulp_program();
    } else {
        ESP_LOGI(TAG, "ULP wakeup, running main program");
        /* Initialize NVS */
        esp_err_t ret = nvs_flash_init();
        if((ret == ESP_ERR_NVS_NO_FREE_PAGES) ||
        (ret == ESP_ERR_NVS_NEW_VERSION_FOUND)) {
            ESP_ERROR_CHECK(nvs_flash_erase());
            ret = nvs_flash_init();
        }
        ESP_ERROR_CHECK(ret);

    #if 0  /* used only for initializing the NVS (delete this when provisioning is available) */
        esp_err_t err;
        nvs_handle_t my_handle;
        const char * ssid = "ssid";
        const char * password = "password";

        // Open
        err = nvs_open(PROJECT_NVS_NAMESPACE, NVS_READWRITE, &my_handle);
        if(ESP_OK != err) {
            ESP_LOGI(TAG, "error nvs_open");
        }
        // Save ssid
        err = nvs_set_str(my_handle, "wifi_ssid", ssid);
        if(ESP_OK != err) {
            ESP_LOGI(TAG, "error nvs_set_str wifi_ssid");
            goto cleanup_nvs_close;
        }
        // Save password
        err = nvs_set_str(my_handle, "wifi_password", password);
        if(ESP_OK != err) {
            ESP_LOGI(TAG, "error nvs_set_str wifi_password");
            goto cleanup_nvs_close;
        }
        err = nvs_commit(my_handle);
        if(ESP_OK != err) {
            ESP_LOGI(TAG, "error nvs_commit");
        }
        cleanup_nvs_close:
            nvs_close(my_handle);
    #endif /* #if 1 */

        /* Initialize QPC Framework */
        QF_init();

    #ifdef Q_SPY
        QS_INIT((void*)0);
    #endif /* Q_SPY */

        /*
        * Initialize Event Pool
        * Note: QF can manage up to three event pools (e.g., small, medium, and large events).
        * An application may call this function up to three times to initialize up to three event
        * pools in QF.  The subsequent calls to QF_poolInit() function must be made with
        * progressively increasing values of the evtSize parameter.
        */
        QF_poolInit(smallPoolSto, sizeof(smallPoolSto), sizeof(smallPoolSto[0]));
        QF_poolInit(medPoolSto, sizeof(medPoolSto), sizeof(medPoolSto[0]));
        QF_poolInit(largePoolSto, sizeof(largePoolSto), sizeof(largePoolSto[0]));

        QF_run();

        ESP_LOGI(TAG, "Goodbye app_main()");
    }

}
