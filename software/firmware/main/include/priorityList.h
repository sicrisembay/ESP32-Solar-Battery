#ifndef _PRIORITY_LIST_H_
#define _PRIORITY_LIST_H_

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "qpc.h"

enum task_priority {
	AO_PRIORITY_MONITOR = tskIDLE_PRIORITY + 1,
    AO_PRIORITY_WIFI,
    AO_PRIORITY_MQTT_CLIENT,
    PRIORITY_QSPY,

    PRIORITY_MAX
};

/* freeRTOS task priority should be less than configMAX_PRIORITIES
 * as defined in FreeRTOSConfig.h
 */
Q_ASSERT_COMPILE(PRIORITY_MAX < configMAX_PRIORITIES);

#endif /* _PRIORITY_LIST_H_ */
