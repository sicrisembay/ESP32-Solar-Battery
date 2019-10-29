EESchema Schematic File Version 4
LIBS:ESP32-Solar-Battery-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title "ESP32 Controller"
Date "2019-09-12"
Rev "1"
Comp ""
Comment1 "Author: Sicris Rey Embay"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RF_Module:ESP32-WROOM-32D U401
U 1 1 5D7A25BB
P 5900 3610
F 0 "U401" H 5500 4960 50  0000 C CNN
F 1 "ESP32-WROOM-32D" H 6320 2260 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 5900 2110 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 5600 3660 50  0001 C CNN
	1    5900 3610
	1    0    0    -1  
$EndComp
Text GLabel 3150 1380 0    50   Input ~ 0
VDD_3V2
$Comp
L Device:C C402
U 1 1 5D7C1151
P 4520 1660
F 0 "C402" H 4635 1706 50  0000 L CNN
F 1 "10uF" H 4635 1615 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4558 1510 50  0001 C CNN
F 3 "~" H 4520 1660 50  0001 C CNN
	1    4520 1660
	1    0    0    -1  
$EndComp
$Comp
L Device:C C403
U 1 1 5D7C179C
P 5040 1660
F 0 "C403" H 5155 1706 50  0000 L CNN
F 1 "0.1uF" H 5155 1615 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5078 1510 50  0001 C CNN
F 3 "~" H 5040 1660 50  0001 C CNN
	1    5040 1660
	1    0    0    -1  
$EndComp
$Comp
L Device:C C401
U 1 1 5D7C1C2F
P 3720 2640
F 0 "C401" H 3835 2686 50  0000 L CNN
F 1 "10uF" H 3835 2595 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3758 2490 50  0001 C CNN
F 3 "~" H 3720 2640 50  0001 C CNN
	1    3720 2640
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2410 5100 2410
Wire Wire Line
	3720 2410 3720 2490
Connection ~ 3720 2410
Wire Wire Line
	3720 1790 3720 2410
$Comp
L Device:R R401
U 1 1 5D7C06E0
P 3720 1640
F 0 "R401" H 3790 1686 50  0000 L CNN
F 1 "10K" H 3790 1595 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3650 1640 50  0001 C CNN
F 3 "~" H 3720 1640 50  0001 C CNN
	1    3720 1640
	1    0    0    -1  
$EndComp
Wire Wire Line
	3720 1490 3720 1380
Wire Wire Line
	3720 1380 3150 1380
Wire Wire Line
	5900 2210 5900 1380
Wire Wire Line
	5900 1380 5040 1380
Connection ~ 3720 1380
Wire Wire Line
	4520 1510 4520 1380
Connection ~ 4520 1380
Wire Wire Line
	4520 1380 3720 1380
Wire Wire Line
	5040 1510 5040 1380
Connection ~ 5040 1380
Wire Wire Line
	5040 1380 4520 1380
$Comp
L power:GND #PWR0402
U 1 1 5D7C450D
P 4520 2040
F 0 "#PWR0402" H 4520 1790 50  0001 C CNN
F 1 "GND" H 4525 1867 50  0000 C CNN
F 2 "" H 4520 2040 50  0001 C CNN
F 3 "" H 4520 2040 50  0001 C CNN
	1    4520 2040
	1    0    0    -1  
$EndComp
Wire Wire Line
	4520 1810 4520 1920
Wire Wire Line
	5040 1810 5040 1920
Wire Wire Line
	5040 1920 4520 1920
Connection ~ 4520 1920
Wire Wire Line
	4520 1920 4520 2040
$Comp
L power:GND #PWR0401
U 1 1 5D7C545E
P 3720 3180
F 0 "#PWR0401" H 3720 2930 50  0001 C CNN
F 1 "GND" H 3725 3007 50  0000 C CNN
F 2 "" H 3720 3180 50  0001 C CNN
F 3 "" H 3720 3180 50  0001 C CNN
	1    3720 3180
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0403
U 1 1 5D7C6670
P 5900 5290
F 0 "#PWR0403" H 5900 5040 50  0001 C CNN
F 1 "GND" H 5905 5117 50  0000 C CNN
F 2 "" H 5900 5290 50  0001 C CNN
F 3 "" H 5900 5290 50  0001 C CNN
	1    5900 5290
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5010 5900 5290
Text GLabel 7500 1010 0    50   Input ~ 0
VDD_3V2
$Comp
L Device:R R402
U 1 1 5D7C8CD2
P 7860 1300
F 0 "R402" H 7930 1346 50  0000 L CNN
F 1 "220" H 7930 1255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7790 1300 50  0001 C CNN
F 3 "~" H 7860 1300 50  0001 C CNN
	1    7860 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D401
U 1 1 5D7C93D6
P 7860 1910
F 0 "D401" V 7899 1793 50  0000 R CNN
F 1 "LED" V 7808 1793 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 7860 1910 50  0001 C CNN
F 3 "~" H 7860 1910 50  0001 C CNN
	1    7860 1910
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7860 1150 7860 1010
Wire Wire Line
	7860 1010 7500 1010
Wire Wire Line
	7860 1450 7860 1760
Wire Wire Line
	7860 2060 7860 2410
Wire Wire Line
	7860 2410 7190 2410
NoConn ~ 5300 3610
NoConn ~ 5300 3710
NoConn ~ 5300 3810
NoConn ~ 5300 3910
NoConn ~ 5300 4010
NoConn ~ 5300 4110
$Comp
L power:GND #PWR0102
U 1 1 5DA3E065
P 3890 3970
F 0 "#PWR0102" H 3890 3720 50  0001 C CNN
F 1 "GND" V 3890 3770 50  0000 C CNN
F 2 "" H 3890 3970 50  0001 C CNN
F 3 "" H 3890 3970 50  0001 C CNN
	1    3890 3970
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3760 3970 3890 3970
Text GLabel 3990 4070 2    50   Input ~ 0
VDD_3V2
Wire Wire Line
	3760 4070 3990 4070
Text GLabel 3920 4170 2    50   Input ~ 0
EN
Text GLabel 5030 2610 0    50   Input ~ 0
ESP32_4
Text GLabel 5030 2710 0    50   Input ~ 0
ESP32_5
Text GLabel 6720 4610 2    50   Input ~ 0
ESP32_6
Text GLabel 6720 4710 2    50   Input ~ 0
ESP32_7
Text GLabel 6720 4410 2    50   Input ~ 0
ESP32_8
Text GLabel 6720 4510 2    50   Input ~ 0
ESP32_9
Text GLabel 6720 4110 2    50   Input ~ 0
ESP32_10
Text GLabel 6720 4210 2    50   Input ~ 0
ESP32_11
Text GLabel 6720 4310 2    50   Input ~ 0
ESP32_12
Wire Wire Line
	6500 4710 6720 4710
Wire Wire Line
	6500 4610 6720 4610
Wire Wire Line
	6500 4510 6720 4510
Wire Wire Line
	6500 4410 6720 4410
Wire Wire Line
	6500 4310 6720 4310
Wire Wire Line
	6720 4210 6500 4210
Wire Wire Line
	6720 4110 6500 4110
Text GLabel 6720 3210 2    50   Input ~ 0
TMS
Text GLabel 6720 3010 2    50   Input ~ 0
TDI
Wire Wire Line
	6500 3010 6720 3010
Wire Wire Line
	6720 3210 6500 3210
Wire Wire Line
	5040 2340 5100 2340
Wire Wire Line
	5100 2340 5100 2410
Connection ~ 5100 2410
Wire Wire Line
	5100 2410 3720 2410
Wire Wire Line
	5300 2610 5030 2610
Wire Wire Line
	5030 2710 5300 2710
Text GLabel 3920 4270 2    50   Input ~ 0
ESP32_4
Text GLabel 3920 4370 2    50   Input ~ 0
ESP32_5
Text GLabel 3920 4470 2    50   Input ~ 0
ESP32_6
Text GLabel 3920 4570 2    50   Input ~ 0
ESP32_7
Text GLabel 3920 4670 2    50   Input ~ 0
ESP32_8
Text GLabel 3920 4770 2    50   Input ~ 0
ESP32_9
Text GLabel 3920 4870 2    50   Input ~ 0
ESP32_10
Text GLabel 3920 4970 2    50   Input ~ 0
ESP32_11
Text GLabel 3920 5070 2    50   Input ~ 0
ESP32_12
Text GLabel 3920 5170 2    50   Input ~ 0
TMS
Text GLabel 3920 5270 2    50   Input ~ 0
TDI
Wire Wire Line
	3760 5270 3920 5270
Wire Wire Line
	3760 5170 3920 5170
Wire Wire Line
	3760 5070 3920 5070
Wire Wire Line
	3760 4970 3920 4970
Wire Wire Line
	3760 4870 3920 4870
Wire Wire Line
	3760 4770 3920 4770
Wire Wire Line
	3760 4670 3920 4670
Wire Wire Line
	3760 4570 3920 4570
Wire Wire Line
	3760 4470 3920 4470
Wire Wire Line
	3760 4370 3920 4370
Wire Wire Line
	3760 4270 3920 4270
Wire Wire Line
	3760 4170 3920 4170
$Comp
L Connector_Generic:Conn_01x16 J402
U 1 1 5DA5A1E6
P 3560 4670
F 0 "J402" H 3478 5587 50  0000 C CNN
F 1 "Conn_01x16" H 3478 5496 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 3560 4670 50  0001 C CNN
F 3 "~" H 3560 4670 50  0001 C CNN
	1    3560 4670
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5DA5E694
P 3940 5370
F 0 "#PWR0103" H 3940 5120 50  0001 C CNN
F 1 "GND" V 3940 5170 50  0000 C CNN
F 2 "" H 3940 5370 50  0001 C CNN
F 3 "" H 3940 5370 50  0001 C CNN
	1    3940 5370
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3760 5370 3940 5370
Text GLabel 5040 2340 0    50   Input ~ 0
EN
Text GLabel 6720 3110 2    50   Input ~ 0
TCK
Wire Wire Line
	6720 3110 6500 3110
Text GLabel 3920 5470 2    50   Input ~ 0
TCK
Wire Wire Line
	3760 5470 3920 5470
$Comp
L Connector_Generic:Conn_01x16 J403
U 1 1 5DA65CAD
P 8720 4720
F 0 "J403" H 8800 4712 50  0000 L CNN
F 1 "Conn_01x16" H 8800 4621 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 8720 4720 50  0001 C CNN
F 3 "~" H 8720 4720 50  0001 C CNN
	1    8720 4720
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5DA6A264
P 8350 4020
F 0 "#PWR0104" H 8350 3770 50  0001 C CNN
F 1 "GND" V 8350 3820 50  0000 C CNN
F 2 "" H 8350 4020 50  0001 C CNN
F 3 "" H 8350 4020 50  0001 C CNN
	1    8350 4020
	0    1    1    0   
$EndComp
Wire Wire Line
	8350 4020 8440 4020
Text GLabel 6720 4010 2    50   Input ~ 0
ESP32_37
Text GLabel 8320 4120 0    50   Input ~ 0
ESP32_37
Text GLabel 6720 3910 2    50   Input ~ 0
ESP32_36
Text GLabel 8320 4220 0    50   Input ~ 0
ESP32_36
Text GLabel 8320 4320 0    50   Input ~ 0
TXD0
Text GLabel 6720 2710 2    50   Input ~ 0
RXD0
Text GLabel 6720 3810 2    50   Input ~ 0
ESP32_33
Text GLabel 8320 4520 0    50   Input ~ 0
ESP32_33
Text GLabel 8320 4420 0    50   Input ~ 0
RXD0
Wire Wire Line
	6720 4010 6500 4010
Wire Wire Line
	6500 3910 6720 3910
Wire Wire Line
	6500 3810 6720 3810
Wire Wire Line
	8320 4120 8520 4120
Wire Wire Line
	8320 4220 8520 4220
Wire Wire Line
	8320 4320 8520 4320
Wire Wire Line
	8320 4420 8520 4420
Wire Wire Line
	8320 4520 8520 4520
Text GLabel 6720 3710 2    50   Input ~ 0
ESP32_31
Text GLabel 8320 4720 0    50   Input ~ 0
ESP32_31
Text GLabel 6720 3610 2    50   Input ~ 0
ESP32_30
Text GLabel 8320 4820 0    50   Input ~ 0
ESP32_30
Text GLabel 6720 2910 2    50   Input ~ 0
ESP32_29
Text GLabel 8320 4920 0    50   Input ~ 0
ESP32_29
Text GLabel 6720 3510 2    50   Input ~ 0
ESP32_28
Text GLabel 8320 5020 0    50   Input ~ 0
ESP32_28
Text GLabel 6720 3410 2    50   Input ~ 0
ESP32_27
Text GLabel 8320 5120 0    50   Input ~ 0
ESP32_27
Text GLabel 6720 2810 2    50   Input ~ 0
ESP32_26
Text GLabel 8320 5220 0    50   Input ~ 0
ESP32_26
Text GLabel 7250 2310 2    50   Input ~ 0
BOOT
Text GLabel 8320 5320 0    50   Input ~ 0
BOOT
Text GLabel 6720 3310 2    50   Input ~ 0
TDO
Text GLabel 8320 5520 0    50   Input ~ 0
TDO
Text GLabel 8320 5420 0    50   Input ~ 0
ESP32_24
Wire Wire Line
	7250 2310 7190 2310
Wire Wire Line
	7190 2310 7190 2410
Connection ~ 7190 2410
Wire Wire Line
	6500 2610 6720 2610
Wire Wire Line
	6500 2810 6720 2810
Wire Wire Line
	6500 2910 6720 2910
Wire Wire Line
	6500 3310 6720 3310
Wire Wire Line
	6500 3410 6720 3410
Wire Wire Line
	6500 3510 6720 3510
Wire Wire Line
	6500 3610 6720 3610
Wire Wire Line
	6500 3710 6720 3710
Wire Wire Line
	8320 4720 8520 4720
Wire Wire Line
	8320 4820 8520 4820
Wire Wire Line
	8320 4920 8520 4920
Wire Wire Line
	8320 5020 8520 5020
Wire Wire Line
	8320 5120 8520 5120
Wire Wire Line
	8320 5220 8520 5220
Wire Wire Line
	8320 5320 8520 5320
Wire Wire Line
	8320 5420 8520 5420
Wire Wire Line
	8320 5520 8520 5520
$Comp
L Connector_Generic:Conn_01x06 J301
U 1 1 5DA672DF
P 1520 3510
F 0 "J301" H 1438 2985 50  0000 C CNN
F 1 "Program" H 1438 3076 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x03_P1.27mm_Vertical" H 1520 3510 50  0001 C CNN
F 3 "~" H 1520 3510 50  0001 C CNN
	1    1520 3510
	-1   0    0    1   
$EndComp
Text GLabel 1850 3710 2    50   Input ~ 0
EN
Wire Wire Line
	1720 3710 1850 3710
Text GLabel 2500 3610 2    50   Input ~ 0
VDD_3V2
Text GLabel 1850 3510 2    50   Input ~ 0
TXD0
Wire Wire Line
	1850 3510 1720 3510
$Comp
L power:GND #PWR0105
U 1 1 5DA733C7
P 1860 3410
F 0 "#PWR0105" H 1860 3160 50  0001 C CNN
F 1 "GND" V 1860 3230 50  0000 C CNN
F 2 "" H 1860 3410 50  0001 C CNN
F 3 "" H 1860 3410 50  0001 C CNN
	1    1860 3410
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1860 3410 1720 3410
Text GLabel 1850 3310 2    50   Input ~ 0
RXD0
Wire Wire Line
	1850 3310 1720 3310
Text GLabel 1850 3210 2    50   Input ~ 0
BOOT
Wire Wire Line
	1850 3210 1720 3210
Wire Wire Line
	3720 2790 3720 3180
Wire Wire Line
	6500 2410 7190 2410
Text GLabel 6720 2510 2    50   Input ~ 0
TXD0
Wire Wire Line
	6500 2510 6720 2510
Wire Wire Line
	6500 2710 6720 2710
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J302
U 1 1 5DABE691
P 2040 4760
F 0 "J302" H 2090 5177 50  0000 C CNN
F 1 "jtag" H 2090 5086 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical" H 2040 4760 50  0001 C CNN
F 3 "~" H 2040 4760 50  0001 C CNN
	1    2040 4760
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5DAC001D
P 1750 5090
F 0 "#PWR0106" H 1750 4840 50  0001 C CNN
F 1 "GND" V 1750 4910 50  0000 C CNN
F 2 "" H 1750 5090 50  0001 C CNN
F 3 "" H 1750 5090 50  0001 C CNN
	1    1750 5090
	1    0    0    -1  
$EndComp
Wire Wire Line
	1840 4660 1750 4660
Wire Wire Line
	1750 4660 1750 4760
Wire Wire Line
	1840 4960 1750 4960
Connection ~ 1750 4960
Wire Wire Line
	1750 4960 1750 5090
Wire Wire Line
	1840 4860 1750 4860
Connection ~ 1750 4860
Wire Wire Line
	1750 4860 1750 4960
Wire Wire Line
	1840 4760 1750 4760
Connection ~ 1750 4760
Wire Wire Line
	1750 4760 1750 4860
NoConn ~ 2340 4960
$Comp
L Device:R R301
U 1 1 5DAD1D70
P 1750 4410
F 0 "R301" H 1820 4456 50  0000 L CNN
F 1 "100" H 1820 4365 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1680 4410 50  0001 C CNN
F 3 "~" H 1750 4410 50  0001 C CNN
	1    1750 4410
	-1   0    0    1   
$EndComp
Text GLabel 1680 4120 0    50   Input ~ 0
VDD_3V2
Wire Wire Line
	1680 4120 1750 4120
Wire Wire Line
	1750 4120 1750 4260
Wire Wire Line
	1750 4560 1840 4560
Text GLabel 2430 4560 2    50   Input ~ 0
TMS
Wire Wire Line
	2430 4560 2340 4560
Text GLabel 2430 4860 2    50   Input ~ 0
TDI
Wire Wire Line
	2430 4860 2340 4860
Text GLabel 2430 4660 2    50   Input ~ 0
TCK
Wire Wire Line
	2430 4660 2340 4660
Text GLabel 6720 2610 2    50   Input ~ 0
ESP32_24
Text GLabel 2430 4760 2    50   Input ~ 0
TDO
Wire Wire Line
	2430 4760 2340 4760
$Comp
L Device:R R302
U 1 1 5DAF88F8
P 2270 3610
F 0 "R302" V 2360 3520 50  0000 L CNN
F 1 "100" V 2170 3570 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2200 3610 50  0001 C CNN
F 3 "~" H 2270 3610 50  0001 C CNN
	1    2270 3610
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1720 3610 2120 3610
Wire Wire Line
	2500 3610 2420 3610
Wire Wire Line
	8440 4020 8440 4620
Wire Wire Line
	8440 4620 8520 4620
Connection ~ 8440 4020
Wire Wire Line
	8440 4020 8520 4020
$EndSCHEMATC
