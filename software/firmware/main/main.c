#include <stdio.h>
#include "qpc.h"
#include "esp_log.h"
#include "nvs.h"
#include "nvs_flash.h"
#include "string.h"
#include "project_def.h"

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

void app_main()
{
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
