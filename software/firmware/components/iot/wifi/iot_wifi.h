/*$file${iot::wifi::.::iot_wifi.h} vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv*/
/*
* Model: esp32_main.qm
* File:  ${iot::wifi::.::iot_wifi.h}
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
/*$endhead${iot::wifi::.::iot_wifi.h} ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
#ifndef _IOT_WIFI_H_
#define _IOT_WIFI_H_

#define IOT_WIFI_SCAN_LIST_SIZE       (10)

/*$declare${iot::wifi::AO_iot_wifi} vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv*/
extern QActive * const AO_iot_wifi;
/*$enddecl${iot::wifi::AO_iot_wifi} ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
/*$declare${iot::wifi::iot_wifi_ctor} vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv*/
/*${iot::wifi::iot_wifi_ctor} ..............................................*/
void iot_wifi_ctor(void);
/*$enddecl${iot::wifi::iot_wifi_ctor} ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/

/*$declare${iot::wifi::iot_wifi_scan_ap} vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv*/
/*${iot::wifi::iot_wifi_scan_ap} ...........................................*/
esp_err_t iot_wifi_scan_ap(void * callback);
/*$enddecl${iot::wifi::iot_wifi_scan_ap} ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
/*$declare${iot::wifi::iot_wifi_get_ap_count} vvvvvvvvvvvvvvvvvvvvvvvvvvvvvv*/
/*${iot::wifi::iot_wifi_get_ap_count} ......................................*/
uint16_t iot_wifi_get_ap_count(void);
/*$enddecl${iot::wifi::iot_wifi_get_ap_count} ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
/*$declare${iot::wifi::iot_wifi_get_ap_name_len} vvvvvvvvvvvvvvvvvvvvvvvvvvv*/
/*${iot::wifi::iot_wifi_get_ap_name_len} ...................................*/
size_t iot_wifi_get_ap_name_len(uint16_t id);
/*$enddecl${iot::wifi::iot_wifi_get_ap_name_len} ^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
/*$declare${iot::wifi::iot_wifi_get_ap_name} vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv*/
/*${iot::wifi::iot_wifi_get_ap_name} .......................................*/
char * iot_wifi_get_ap_name(uint16_t id);
/*$enddecl${iot::wifi::iot_wifi_get_ap_name} ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/

/*$declare${iot::wifi::iot_wifi_connect} vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv*/
/*${iot::wifi::iot_wifi_connect} ...........................................*/
esp_err_t iot_wifi_connect(
    const char * ssid,
    const char * password,
    void * callback);
/*$enddecl${iot::wifi::iot_wifi_connect} ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
/*$declare${iot::wifi::iot_wifi_has_ip} vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv*/
/*${iot::wifi::iot_wifi_has_ip} ............................................*/
bool iot_wifi_has_ip(void);
/*$enddecl${iot::wifi::iot_wifi_has_ip} ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
/*$declare${iot::wifi::iot_wifi_get_signal_level} vvvvvvvvvvvvvvvvvvvvvvvvvv*/
/*${iot::wifi::iot_wifi_get_signal_level} ..................................*/
uint8_t iot_wifi_get_signal_level(int32_t numLevels);
/*$enddecl${iot::wifi::iot_wifi_get_signal_level} ^^^^^^^^^^^^^^^^^^^^^^^^^^*/

#endif /* _IOT_WIFI_H_ */
