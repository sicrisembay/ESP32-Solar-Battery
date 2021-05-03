#include "qpc.h"
#include "freertos/ringbuf.h"
#include "freertos/task.h"
#include "priorityList.h"
#include "esp_log.h"
#if defined(CONFIG_QPC_QSPY_PHY_BT_SPP)
#include "bt_bridge.h"
#elif defined(CONFIG_QPC_QSPY_PHY_UART)
#include "driver/uart.h"
#endif
#include "iot.h"
#include "monitor.h"

#if defined(CONFIG_QPC_QSPY_ENABLE)
static uint8_t qsTxBuf[CONFIG_QPC_QSPY_TX_SIZE];
static uint8_t qsRxBuf[CONFIG_QPC_QSPY_RX_SIZE];
#endif /* #if defined(CONFIG_QPC_QSPY_ENABLE) */

static const char *TAG = "qf_hooks";
static const char *QSPY_TAG = "qspy";

#if defined(CONFIG_QPC_QSPY_PHY_UART)
#define RX_BUF_SIZE (1024)
#endif

void QF_onStartup(void)
{
    iot_ctor();
    monitor_ctor();
}

IRAM_ATTR void Q_onAssert(char_t const * const module, int_t location)
{
    ESP_LOGE(TAG, "Q_onAssert: module:%s loc:%d\n", module, location);
}

#ifdef Q_SPY
#define RD_BUF_SIZE (128)
uint8_t readBuffer[RD_BUF_SIZE];

static void _QSpyTask(void *pxParam)
{
    uint8_t *pRxData = NULL;
    size_t nRxData = 0;
    size_t idx = 0;
    uint16_t pktSize = 0;
    uint8_t const *pBlock;

#if defined(CONFIG_QPC_QSPY_PHY_BT_SPP)
    esp_err_t retval = ESP_OK;
    RingbufHandle_t RxBufHdl = NULL;
    while(1) {
        RxBufHdl = bt_bridge_get_rx_hdl();
        if(RxBufHdl == NULL) {
            vTaskDelay(1);
        } else {
            break;
        }
    }
#elif defined(CONFIG_QPC_QSPY_PHY_UART)
    pRxData = (uint8_t *)malloc(RX_BUF_SIZE);

    const uart_config_t uart_config = {
        .baud_rate = 115200,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE
    };
    uart_param_config(UART_NUM_1, &uart_config);
    uart_set_pin(UART_NUM_1, CONFIG_QPC_QSPY_TX_PIN, CONFIG_QPC_QSPY_RX_PIN, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE);
    uart_driver_install(UART_NUM_1, RX_BUF_SIZE * 2, 0, 0, NULL, 0);
#endif

    ESP_LOGI(QSPY_TAG, "QSpy Task is up.");

    while(1) {
#ifdef CONFIG_QPC_QSPY_PHY_BT_SPP
        /* Check for receive data from BT */
        pRxData = (uint8_t *)xRingbufferReceiveUpTo(RxBufHdl, &nRxData, (TickType_t)(10 / portTICK_PERIOD_MS), 64);
        if(pRxData != NULL) {
            for(idx = 0; idx < nRxData; idx++) {
                QS_RX_PUT(pRxData[idx]);
            }
            vRingbufferReturnItem(RxBufHdl, (void*)pRxData);
            QS_rxParse();
        }
        /* Check if data needs to be tranmitted to BT */
        if(bt_bridge_rdy()) {
            if(retval == ESP_OK) {
                /* Only get new block when the previous block
                 * was successfully transmitted.
                 */
                pktSize = 64;
                QF_CRIT_ENTRY(&qfMutex);
                pBlock = QS_getBlock(&pktSize);
                QF_CRIT_EXIT(&qfMutex);
            }
            if(pktSize > 0) {
                retval = bt_bridge_send((uint8_t *)pBlock, pktSize);
            }
        }
#elif defined(CONFIG_QPC_QSPY_PHY_UART)
        nRxData = uart_read_bytes(UART_NUM_1, pRxData, RX_BUF_SIZE, (TickType_t)(10 / portTICK_PERIOD_MS));
        if(nRxData > 0) {
            for(idx = 0; idx < nRxData; idx++) {
                QS_RX_PUT(pRxData[idx]);
            }
            QS_rxParse();
        }

        pktSize = 64;
        QF_CRIT_ENTRY(&qfMutex);
        pBlock = QS_getBlock(&pktSize);
        QF_CRIT_EXIT(&qfMutex);

        if(pktSize > 0) {
            uart_write_bytes(UART_NUM_1, (char *)pBlock, pktSize);
        }
#else
#error "QSpy only support BT for this motor board"
#endif
    }
}

uint8_t QS_onStartup(void const *arg)
{
    QS_initBuf(qsTxBuf, sizeof(qsTxBuf));
    QS_rxInitBuf(qsRxBuf, sizeof(qsRxBuf));

    xTaskCreate(_QSpyTask, "QSpy", CONFIG_QPC_QSPY_STACK_SIZE, NULL, PRIORITY_QSPY, NULL);

    QS_filterOn(QS_UA_RECORDS);

    return (uint8_t)1; /* return success */
}


void QS_onCleanup(void)
{
    /// TODO: Implement functionality
}


IRAM_ATTR QSTimeCtr QS_onGetTime(void)
{
    return xTaskGetTickCount();
}


void QS_onFlush(void)
{
    /// TODO: Implement QS buffer flushing to HW peripheral
}


void QS_onReset(void)
{
    /// TODO: Implement functionality
}

void QS_onCommand(uint8_t cmdId, uint32_t param1, uint32_t param2, uint32_t param3)
{
    /// TODO: Implement functionality
}

#endif /*  Q_SPY */
