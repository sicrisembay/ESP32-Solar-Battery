/*$file${iot::mqtt_client::.::iot_mqtt_client.h} vvvvvvvvvvvvvvvvvvvvvvvvvvv*/
/*
* Model: esp32_main.qm
* File:  ${iot::mqtt_client::.::iot_mqtt_client.h}
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
/*$endhead${iot::mqtt_client::.::iot_mqtt_client.h} ^^^^^^^^^^^^^^^^^^^^^^^^*/
#ifndef _IOT_MQTT_CLIENT_H_
#define _IOT_MQTT_CLIENT_H_

#include "aws_iot_mqtt_client.h"

/*$declare${iot::mqtt_client::AO_iot_mqtt_client}} vvvvvvvvvvvvvvvvvvvvvvvvv*/
extern QActive * const AO_iot_mqtt_client;
/*$enddecl${iot::mqtt_client::AO_iot_mqtt_client}} ^^^^^^^^^^^^^^^^^^^^^^^^^*/
/*$declare${iot::mqtt_client::iot_mqtt_client_ctor} vvvvvvvvvvvvvvvvvvvvvvvv*/
/*${iot::mqtt_client::iot_mqtt_client_ctor} ................................*/
void iot_mqtt_client_ctor(void);
/*$enddecl${iot::mqtt_client::iot_mqtt_client_ctor} ^^^^^^^^^^^^^^^^^^^^^^^^*/
/*$declare${iot::mqtt_client::iot_mqtt_client_is_connected} vvvvvvvvvvvvvvvv*/
/*${iot::mqtt_client::iot_mqtt_client_is_connected} ........................*/
bool iot_mqtt_client_is_connected(void);
/*$enddecl${iot::mqtt_client::iot_mqtt_client_is_connected} ^^^^^^^^^^^^^^^^*/
/*$declare${iot::mqtt_client::iot_mqtt_publish} vvvvvvvvvvvvvvvvvvvvvvvvvvvv*/
/*${iot::mqtt_client::iot_mqtt_publish} ....................................*/
bool iot_mqtt_publish(
    const char * topic,
    uint16_t topic_len,
    IoT_Publish_Message_Params * pubParam);
/*$enddecl${iot::mqtt_client::iot_mqtt_publish} ^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
/*$declare${iot::mqtt_client::iot_mqtt_disconnect} vvvvvvvvvvvvvvvvvvvvvvvvv*/
/*${iot::mqtt_client::iot_mqtt_disconnect} .................................*/
bool iot_mqtt_disconnect(void);
/*$enddecl${iot::mqtt_client::iot_mqtt_disconnect} ^^^^^^^^^^^^^^^^^^^^^^^^^*/
/*$declare${iot::mqtt_client::iot_mqtt_get_client_name} vvvvvvvvvvvvvvvvvvvv*/
/*${iot::mqtt_client::iot_mqtt_get_client_name} ............................*/
char * iot_mqtt_get_client_name(void);
/*$enddecl${iot::mqtt_client::iot_mqtt_get_client_name} ^^^^^^^^^^^^^^^^^^^^*/

#endif /* _IOT_MQTT_CLIENT_H_ */