/*$file${monitor::.::monitor.c} vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv*/
/*
* Model: esp32_main.qm
* File:  ${monitor::.::monitor.c}
*
* This code has been generated by QM 4.5.0 (https://www.state-machine.com/qm).
* DO NOT EDIT THIS FILE MANUALLY. All your changes will be lost.
*
* This program is open source software: you can redistribute it and/or
* modify it under the terms of the GNU General Public License as published
* by the Free Software Foundation.
*
* This program is distributed in the hope that it will be useful, but
* WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
* or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License
* for more details.
*/
/*$endhead${monitor::.::monitor.c} ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_sleep.h"
#include "esp32/ulp.h"
#include "cJSON.h"
#include <string.h>

#include "qpc.h"
#if defined(CONFIG_QPC_QSPY_ENABLE)
#include "qs.h"
#endif /* #if defined(CONFIG_QPC_QSPY_ENABLE) */

#include "priorityList.h"
#include "signalList.h"
#include "project_def.h"
#include "monitor.h"
#include "iot_mqtt_client.h"

enum wifiSignal {
    MONITOR_TICK_SIG = MAX_SIG,
};

Q_DEFINE_THIS_MODULE("monitor")

static const char * TAG = "monitor";

#define N_SAMPLE        (CONFIG_ULP_INA219_MAX_SAMPLE)

/*$declare${monitor::monitor} vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv*/
/*${monitor::monitor} ......................................................*/
typedef struct {
/* protected: */
    QActive super;

/* private: */
    QTimeEvt tickEvt;
    uint32_t tickCount;
} monitor;

/* protected: */
static QState monitor_initial(monitor * const me, QEvt const * const e);
static QState monitor_TOP(monitor * const me, QEvt const * const e);
static QState monitor_DISCONNECTED(monitor * const me, QEvt const * const e);
static QState monitor_PUBLISHING(monitor * const me, QEvt const * const e);
static QState monitor_SLEEP(monitor * const me, QEvt const * const e);
/*$enddecl${monitor::monitor} ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/

static monitor l_monitor;
static QEvt const * l_monitorQSto[64];
/* FreeRTOS stack for AO */
static StackType_t monitorStack[4196];

extern uint32_t ulp_solar_bus_voltage;
extern uint32_t ulp_battery_bus_voltage;

static char topic_string[64];
static float solar_bus_voltage_V[N_SAMPLE];
static float battery_bus_voltage_V[N_SAMPLE];

/*$skip${QP_VERSION} vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv*/
/* Check for the minimum required QP version */
#if (QP_VERSION < 650U) || (QP_VERSION != ((QP_RELEASE^4294967295U) % 0x3E8U))
#error qpc version 6.5.0 or higher required
#endif
/*$endskip${QP_VERSION} ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
/*$define${monitor::AO_monitor} vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv*/
/*${monitor::AO_monitor} ...................................................*/
QActive * const AO_monitor = &(l_monitor.super);
/*$enddef${monitor::AO_monitor} ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
/*$define${monitor::monitor_ctor} vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv*/
/*${monitor::monitor_ctor} .................................................*/
void monitor_ctor(void) {
    monitor *me;
    static uint32_t bInitOnce = 0;

    if(bInitOnce == 0) {
        me = &l_monitor;

        /* Init members */
        me->tickCount = 0;

        /* Call constructor */
        QActive_ctor(&me->super, Q_STATE_CAST(&monitor_initial));
        /* Call Timer Constructor */
        QTimeEvt_ctorX(&me->tickEvt, &me->super, MONITOR_TICK_SIG, 0U);
        /* Defer Queue */

        /* Create AO Task */
        QActive_setAttr(AO_monitor, TASK_NAME_ATTR, "monitor");
        bInitOnce = 1;
        QACTIVE_START(
                AO_monitor,                     /* AO to start */
                AO_PRIORITY_MONITOR,            /* QP priority of the AO */
                l_monitorQSto,                  /* Event Queue Storage */
                Q_DIM(l_monitorQSto),           /* Lenght of Event Queue */
                monitorStack,                   /* Stack storage */
                sizeof(monitorStack),           /* Size of Stack */
                (QEvt *)0                       /* Not Used */
                );
    }

}
/*$enddef${monitor::monitor_ctor} ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/


/*$define${monitor::monitor} vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv*/
/*${monitor::monitor} ......................................................*/
/*${monitor::monitor::SM} ..................................................*/
static QState monitor_initial(monitor * const me, QEvt const * const e) {
    /*${monitor::monitor::SM::initial} */
    return Q_TRAN(&monitor_TOP);
}
/*${monitor::monitor::SM::TOP} .............................................*/
static QState monitor_TOP(monitor * const me, QEvt const * const e) {
    QState status_;
    switch (e->sig) {
        /*${monitor::monitor::SM::TOP} */
        case Q_ENTRY_SIG: {
            extern uint32_t ulp_solar_bus_voltage;
            extern uint32_t ulp_battery_bus_voltage;
            uint32_t i = 0;
            uint32_t * p = (uint32_t *)(&ulp_solar_bus_voltage);
            /* copy */
            for(i = 0; i < N_SAMPLE; i++) {
                solar_bus_voltage_V[i] = 0.004f * ((short)p[i] >> 3);
            //    ESP_LOGI(TAG, "pv: %0.3f", solar_bus_voltage_V[i]);
            }
            /* copy */
            p = (uint32_t *)(&ulp_battery_bus_voltage);
            for(i = 0; i < N_SAMPLE; i++) {
                battery_bus_voltage_V[i] = 0.004f * ((short)p[i] >> 3);
            //    ESP_LOGI(TAG, "battery: %0.3f", battery_bus_voltage_V[i]);
            }

            /* Arm Timer for auto state transit */
            QTimeEvt_armX(&me->tickEvt,
                          pdMS_TO_TICKS(50),
                          pdMS_TO_TICKS(50));
            status_ = Q_HANDLED();
            break;
        }
        /*${monitor::monitor::SM::TOP} */
        case Q_EXIT_SIG: {
            /* Disarm Timer */
            QTimeEvt_disarm(&me->tickEvt);
            status_ = Q_HANDLED();
            break;
        }
        /*${monitor::monitor::SM::TOP::initial} */
        case Q_INIT_SIG: {
            status_ = Q_TRAN(&monitor_DISCONNECTED);
            break;
        }
        default: {
            status_ = Q_SUPER(&QHsm_top);
            break;
        }
    }
    return status_;
}
/*${monitor::monitor::SM::TOP::DISCONNECTED} ...............................*/
static QState monitor_DISCONNECTED(monitor * const me, QEvt const * const e) {
    QState status_;
    switch (e->sig) {
        /*${monitor::monitor::SM::TOP::DISCONNECTED} */
        case Q_ENTRY_SIG: {
            /* Reset Tick Counter */
            me->tickCount = 0;

            /* Waiting */
            ESP_LOGI(TAG, "waiting for connection...");
            status_ = Q_HANDLED();
            break;
        }
        /*${monitor::monitor::SM::TOP::DISCONNECTED::MONITOR_TICK} */
        case MONITOR_TICK_SIG: {
            me->tickCount++;
            /*${monitor::monitor::SM::TOP::DISCONNECTED::MONITOR_TICK::[ConnectedToBroker]} */
            if (true == iot_mqtt_client_is_connected()) {
                status_ = Q_TRAN(&monitor_PUBLISHING);
            }
            /*${monitor::monitor::SM::TOP::DISCONNECTED::MONITOR_TICK::[Timeout]} */
            else if (me->tickCount > 1200) {
                status_ = Q_TRAN(&monitor_SLEEP);
            }
            /*${monitor::monitor::SM::TOP::DISCONNECTED::MONITOR_TICK::[else]} */
            else {
                status_ = Q_HANDLED();
            }
            break;
        }
        default: {
            status_ = Q_SUPER(&monitor_TOP);
            break;
        }
    }
    return status_;
}
/*${monitor::monitor::SM::TOP::PUBLISHING} .................................*/
static QState monitor_PUBLISHING(monitor * const me, QEvt const * const e) {
    QState status_;
    switch (e->sig) {
        /*${monitor::monitor::SM::TOP::PUBLISHING} */
        case Q_ENTRY_SIG: {
            /* Waiting */
            ESP_LOGI(TAG, "...connected");

            /* Reset Tick Counter */
            me->tickCount = 0;

            /* JSON Serialize */
            ESP_LOGI(TAG, "Serialize...");
            cJSON * root = NULL;
            cJSON * pvArray = NULL;;
            cJSON * batteryArray = NULL;;
            root = cJSON_CreateObject();
            if(NULL == root) {
                ESP_LOGE(TAG, "Root creation failed!");
            }
            pvArray = cJSON_CreateFloatArray(solar_bus_voltage_V, N_SAMPLE);
            if(NULL == pvArray) {
                ESP_LOGE(TAG, "PV object creation failed!");
            }
            if(!cJSON_AddItemToObject(root, "pv", pvArray)) {
                ESP_LOGE(TAG, "PV object add failed!");
            }
            batteryArray = cJSON_CreateFloatArray(battery_bus_voltage_V, N_SAMPLE);
            if(NULL == batteryArray) {
                ESP_LOGE(TAG, "battery object creation failed!");
            }
            if(!cJSON_AddItemToObject(root, "battery", batteryArray)) {
                ESP_LOGE(TAG, "battery object add failed!");
            }
            const char * my_json_string = cJSON_Print(root);
            if(my_json_string != NULL) {
                ESP_LOGI(TAG, "Publishing...");

                IoT_Publish_Message_Params paramsQOS0;
                snprintf(topic_string, sizeof(topic_string) - 1,
                    "%s/monitor", iot_mqtt_get_client_name());
                const int TOPIC_LEN = strlen(topic_string);
                paramsQOS0.qos = QOS0;
                paramsQOS0.payload = (void *) my_json_string;
                paramsQOS0.isRetained = 0;
                paramsQOS0.payloadLen = strlen(my_json_string);
                if(!iot_mqtt_publish(topic_string, TOPIC_LEN, &paramsQOS0)) {
                    ESP_LOGE(TAG, "iot_mqtt_publish failed!");
                }
                ESP_LOGI(TAG, "topic:%s", topic_string);
                ESP_LOGI(TAG, "payload length = %d", strlen(my_json_string));
            } else {
                ESP_LOGI(TAG, "Failed on cJSON_Print()!!");
            }
            /* Delete/Clean-up */
            cJSON_Delete(root);
            status_ = Q_HANDLED();
            break;
        }
        /*${monitor::monitor::SM::TOP::PUBLISHING} */
        case Q_EXIT_SIG: {
            ESP_LOGI(TAG, "...Publish done.");
            status_ = Q_HANDLED();
            break;
        }
        /*${monitor::monitor::SM::TOP::PUBLISHING::MONITOR_TICK} */
        case MONITOR_TICK_SIG: {
            me->tickCount++;
            status_ = Q_TRAN(&monitor_SLEEP);
            break;
        }
        default: {
            status_ = Q_SUPER(&monitor_TOP);
            break;
        }
    }
    return status_;
}
/*${monitor::monitor::SM::TOP::SLEEP} ......................................*/
static QState monitor_SLEEP(monitor * const me, QEvt const * const e) {
    QState status_;
    switch (e->sig) {
        /*${monitor::monitor::SM::TOP::SLEEP} */
        case Q_ENTRY_SIG: {
            /* Reset Tick Counter */
            me->tickCount = 0;

            /* Disconnect */
            ESP_LOGI(TAG, "disconnecting...");
            iot_mqtt_disconnect();
            vTaskDelay(pdMS_TO_TICKS(2000));

            ESP_LOGI(TAG, "... Deep Sleep");
            ESP_ERROR_CHECK( esp_sleep_enable_ulp_wakeup() );
            esp_deep_sleep_start();

            status_ = Q_HANDLED();
            break;
        }
        /*${monitor::monitor::SM::TOP::SLEEP::MONITOR_TICK} */
        case MONITOR_TICK_SIG: {
            me->tickCount++;
            ESP_LOGW(TAG, "Should not reach here!!");
            status_ = Q_HANDLED();
            break;
        }
        default: {
            status_ = Q_SUPER(&monitor_TOP);
            break;
        }
    }
    return status_;
}
/*$enddef${monitor::monitor} ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
