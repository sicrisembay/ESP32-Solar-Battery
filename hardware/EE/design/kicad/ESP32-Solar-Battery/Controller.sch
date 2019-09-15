EESchema Schematic File Version 4
LIBS:ESP32-Solar-Battery-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
F 2 "" H 4558 1510 50  0001 C CNN
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
F 2 "" H 5078 1510 50  0001 C CNN
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
F 2 "" H 3758 2490 50  0001 C CNN
F 3 "~" H 3720 2640 50  0001 C CNN
	1    3720 2640
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP401
U 1 1 5D7C237F
P 3180 2790
F 0 "JP401" V 3226 2703 50  0000 R CNN
F 1 "RESET" V 3135 2703 50  0000 R CNN
F 2 "" H 3180 2790 50  0001 C CNN
F 3 "~" H 3180 2790 50  0001 C CNN
	1    3180 2790
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5300 2410 3720 2410
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
F 2 "" V 3650 1640 50  0001 C CNN
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
Wire Wire Line
	3180 2490 3180 2410
Wire Wire Line
	3180 2410 3720 2410
Wire Wire Line
	3180 3090 3180 3110
Wire Wire Line
	3180 3110 3720 3110
Wire Wire Line
	3720 3110 3720 3180
Wire Wire Line
	3720 2790 3720 3110
Connection ~ 3720 3110
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
$Comp
L Device:Jumper JP402
U 1 1 5D7C744C
P 7040 1860
F 0 "JP402" V 7086 1773 50  0000 R CNN
F 1 "RESET" V 6995 1773 50  0000 R CNN
F 2 "" H 7040 1860 50  0001 C CNN
F 3 "~" H 7040 1860 50  0001 C CNN
	1    7040 1860
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0404
U 1 1 5D7C7DDD
P 6680 1690
F 0 "#PWR0404" H 6680 1440 50  0001 C CNN
F 1 "GND" H 6685 1517 50  0000 C CNN
F 2 "" H 6680 1690 50  0001 C CNN
F 3 "" H 6680 1690 50  0001 C CNN
	1    6680 1690
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2410 7040 2410
Wire Wire Line
	7040 2410 7040 2160
Wire Wire Line
	7040 1560 7040 1380
Wire Wire Line
	7040 1380 6680 1380
Wire Wire Line
	6680 1380 6680 1690
Text GLabel 7500 1010 0    50   Input ~ 0
VDD_3V2
$Comp
L Device:R R402
U 1 1 5D7C8CD2
P 7860 1300
F 0 "R402" H 7930 1346 50  0000 L CNN
F 1 "220" H 7930 1255 50  0000 L CNN
F 2 "" V 7790 1300 50  0001 C CNN
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
F 2 "" H 7860 1910 50  0001 C CNN
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
	7860 2410 7040 2410
Connection ~ 7040 2410
$Comp
L Connector_Generic:Conn_01x03 J401
U 1 1 5D7CC172
P 8660 2610
F 0 "J401" H 8578 2285 50  0000 C CNN
F 1 "Program" H 8578 2376 50  0000 C CNN
F 2 "" H 8660 2610 50  0001 C CNN
F 3 "~" H 8660 2610 50  0001 C CNN
	1    8660 2610
	1    0    0    1   
$EndComp
Wire Wire Line
	6500 2510 8460 2510
Wire Wire Line
	6500 2710 8010 2710
Wire Wire Line
	8010 2710 8010 2610
Wire Wire Line
	8010 2610 8460 2610
$Comp
L power:GND #PWR0405
U 1 1 5D7CEEF1
P 8400 2770
F 0 "#PWR0405" H 8400 2520 50  0001 C CNN
F 1 "GND" H 8405 2597 50  0000 C CNN
F 2 "" H 8400 2770 50  0001 C CNN
F 3 "" H 8400 2770 50  0001 C CNN
	1    8400 2770
	1    0    0    -1  
$EndComp
Wire Wire Line
	8460 2710 8400 2710
Wire Wire Line
	8400 2710 8400 2770
$EndSCHEMATC