EESchema Schematic File Version 4
LIBS:ESP32-Solar-Battery-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "Solar Charger for LiFePo4"
Date "2019-09-12"
Rev "1"
Comp ""
Comment1 "Author: Sicris Rey Embay"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x02 J202
U 1 1 5D734556
P 1060 1650
F 0 "J202" H 978 1325 50  0000 C CNN
F 1 "SolarPanel" H 978 1416 50  0000 C CNN
F 2 "Connector_JST:JST_VH_B2P-VH_1x02_P3.96mm_Vertical" H 1060 1650 50  0001 C CNN
F 3 "~" H 1060 1650 50  0001 C CNN
	1    1060 1650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0201
U 1 1 5D735E74
P 1400 2100
F 0 "#PWR0201" H 1400 1850 50  0001 C CNN
F 1 "GND" H 1405 1927 50  0000 C CNN
F 2 "" H 1400 2100 50  0001 C CNN
F 3 "" H 1400 2100 50  0001 C CNN
	1    1400 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C202
U 1 1 5D73807A
P 1790 1850
F 0 "C202" H 1905 1896 50  0000 L CNN
F 1 "10uF" H 1905 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1828 1700 50  0001 C CNN
F 3 "~" H 1790 1850 50  0001 C CNN
	1    1790 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C203
U 1 1 5D738461
P 2220 1850
F 0 "C203" H 2335 1896 50  0000 L CNN
F 1 "10uF" H 2335 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2258 1700 50  0001 C CNN
F 3 "~" H 2220 1850 50  0001 C CNN
	1    2220 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C204
U 1 1 5D738695
P 2670 1850
F 0 "C204" H 2785 1896 50  0000 L CNN
F 1 "0.1uF" H 2785 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2708 1700 50  0001 C CNN
F 3 "~" H 2670 1850 50  0001 C CNN
	1    2670 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1260 1550 1400 1550
Wire Wire Line
	2670 1550 2670 1700
Wire Wire Line
	2220 1700 2220 1550
Connection ~ 2220 1550
Wire Wire Line
	2220 1550 2670 1550
Wire Wire Line
	1790 1700 1790 1550
Connection ~ 1790 1550
Wire Wire Line
	1790 1550 2220 1550
Wire Wire Line
	1260 1650 1400 1650
Wire Wire Line
	1400 1650 1400 2060
Wire Wire Line
	1790 2000 1790 2060
Wire Wire Line
	1790 2060 1400 2060
Connection ~ 1400 2060
Wire Wire Line
	1400 2060 1400 2100
Wire Wire Line
	2220 2000 2220 2060
Wire Wire Line
	2220 2060 1790 2060
Connection ~ 1790 2060
Wire Wire Line
	2670 2000 2670 2060
Wire Wire Line
	2670 2060 2220 2060
Connection ~ 2220 2060
Text GLabel 1480 1330 2    50   Output ~ 0
Solar_V+
Wire Wire Line
	1480 1330 1400 1330
Wire Wire Line
	1400 1330 1400 1550
Connection ~ 1400 1550
Wire Wire Line
	1400 1550 1790 1550
$Comp
L ESP32-Solar-Battery:CN3801 U202
U 1 1 5D73BD4B
P 4840 2740
F 0 "U202" H 4815 3265 50  0000 C CNN
F 1 "CN3801" H 4815 3174 50  0000 C CNN
F 2 "Package_SO:SSOP-10_3.9x4.9mm_P1.00mm" H 4540 3090 50  0001 C CNN
F 3 "" H 4540 3090 50  0001 C CNN
	1    4840 2740
	1    0    0    -1  
$EndComp
$Comp
L Device:R R204
U 1 1 5D73CA0F
P 3180 1850
F 0 "R204" H 3250 1896 50  0000 L CNN
F 1 "100K 1%" H 3250 1805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3110 1850 50  0001 C CNN
F 3 "~" H 3180 1850 50  0001 C CNN
	1    3180 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R207
U 1 1 5D73D0FB
P 3750 1860
F 0 "R207" H 3820 1906 50  0000 L CNN
F 1 "1K" H 3820 1815 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3680 1860 50  0001 C CNN
F 3 "~" H 3750 1860 50  0001 C CNN
	1    3750 1860
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D201
U 1 1 5D73DA10
P 3750 2310
F 0 "D201" V 3789 2192 50  0000 R CNN
F 1 "RED" V 3698 2192 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 3750 2310 50  0001 C CNN
F 3 "~" H 3750 2310 50  0001 C CNN
	1    3750 2310
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3750 2460 3750 2600
Wire Wire Line
	4440 2840 4270 2840
Wire Wire Line
	4270 2840 4270 2600
Wire Wire Line
	4270 2600 3750 2600
Wire Wire Line
	3750 2010 3750 2160
Wire Wire Line
	3180 2000 3180 3240
Wire Wire Line
	3180 3240 4270 3240
Wire Wire Line
	4270 3240 4270 3040
Wire Wire Line
	4270 3040 4440 3040
Wire Wire Line
	3750 1710 3750 1550
Wire Wire Line
	3750 1550 3180 1550
Connection ~ 2670 1550
Wire Wire Line
	3180 1700 3180 1550
Connection ~ 3180 1550
Wire Wire Line
	3180 1550 2670 1550
Wire Wire Line
	4440 2440 4330 2440
Wire Wire Line
	4330 2440 4330 1550
Wire Wire Line
	4330 1550 3750 1550
Connection ~ 3750 1550
$Comp
L Device:R R205
U 1 1 5D743669
P 3180 3470
F 0 "R205" H 3250 3516 50  0000 L CNN
F 1 "30K 1%" H 3250 3425 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3110 3470 50  0001 C CNN
F 3 "~" H 3180 3470 50  0001 C CNN
	1    3180 3470
	1    0    0    -1  
$EndComp
Wire Wire Line
	3180 3320 3180 3240
Connection ~ 3180 3240
$Comp
L power:GND #PWR0203
U 1 1 5D7444B5
P 3180 3700
F 0 "#PWR0203" H 3180 3450 50  0001 C CNN
F 1 "GND" H 3185 3527 50  0000 C CNN
F 2 "" H 3180 3700 50  0001 C CNN
F 3 "" H 3180 3700 50  0001 C CNN
	1    3180 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3180 3620 3180 3700
$Comp
L Device:D_Schottky D203
U 1 1 5D7455DC
P 4270 3700
F 0 "D203" V 4316 3621 50  0000 R CNN
F 1 "SD103AW" V 4225 3621 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 4270 3700 50  0001 C CNN
F 3 "~" H 4270 3700 50  0001 C CNN
	1    4270 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4270 3550 4270 3240
Connection ~ 4270 3240
$Comp
L Comparator:LMV331 U201
U 1 1 5D747FFF
P 3290 5100
F 0 "U201" H 3634 5146 50  0000 L CNN
F 1 "LMV331" H 3634 5055 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 3290 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lmv331.pdf" H 3290 5300 50  0001 C CNN
	1    3290 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3590 5100 3900 5100
Wire Wire Line
	4270 5100 4270 3850
$Comp
L Device:R R208
U 1 1 5D74A880
P 3900 4510
F 0 "R208" H 3970 4556 50  0000 L CNN
F 1 "8.2K" H 3970 4465 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3830 4510 50  0001 C CNN
F 3 "~" H 3900 4510 50  0001 C CNN
	1    3900 4510
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4660 3900 4750
Connection ~ 3900 5100
Wire Wire Line
	3900 5100 4270 5100
Text GLabel 1350 4200 0    50   Input ~ 0
Solar_V+
Wire Wire Line
	1350 4200 1580 4200
Wire Wire Line
	3900 4200 3900 4360
Wire Wire Line
	3190 4800 3190 4200
Connection ~ 3190 4200
Wire Wire Line
	3190 4200 3900 4200
$Comp
L Device:C C201
U 1 1 5D74CC87
P 1580 4590
F 0 "C201" H 1695 4636 50  0000 L CNN
F 1 "0.1uF" H 1695 4545 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1618 4440 50  0001 C CNN
F 3 "~" H 1580 4590 50  0001 C CNN
	1    1580 4590
	1    0    0    -1  
$EndComp
Wire Wire Line
	1580 4440 1580 4200
Connection ~ 1580 4200
$Comp
L Device:R R202
U 1 1 5D74F724
P 2420 4590
F 0 "R202" H 2490 4636 50  0000 L CNN
F 1 "100K 1%" H 2490 4545 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2350 4590 50  0001 C CNN
F 3 "~" H 2420 4590 50  0001 C CNN
	1    2420 4590
	1    0    0    -1  
$EndComp
$Comp
L Device:R R203
U 1 1 5D74FF3F
P 2420 5680
F 0 "R203" H 2490 5726 50  0000 L CNN
F 1 "8.2K 1%" H 2490 5635 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2350 5680 50  0001 C CNN
F 3 "~" H 2420 5680 50  0001 C CNN
	1    2420 5680
	1    0    0    -1  
$EndComp
Wire Wire Line
	2420 4440 2420 4200
Wire Wire Line
	1580 4200 2060 4200
Connection ~ 2420 4200
Wire Wire Line
	2420 4200 3190 4200
Wire Wire Line
	2420 4740 2420 5200
Wire Wire Line
	2990 5200 2420 5200
Connection ~ 2420 5200
Wire Wire Line
	2420 5200 2420 5530
$Comp
L power:GND #PWR0204
U 1 1 5D753978
P 3190 6160
F 0 "#PWR0204" H 3190 5910 50  0001 C CNN
F 1 "GND" H 3195 5987 50  0000 C CNN
F 2 "" H 3190 6160 50  0001 C CNN
F 3 "" H 3190 6160 50  0001 C CNN
	1    3190 6160
	1    0    0    -1  
$EndComp
Wire Wire Line
	3190 5400 3190 6080
$Comp
L Device:R R206
U 1 1 5D75527F
P 3470 4750
F 0 "R206" V 3263 4750 50  0000 C CNN
F 1 "200K" V 3354 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3400 4750 50  0001 C CNN
F 3 "~" H 3470 4750 50  0001 C CNN
	1    3470 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	3620 4750 3900 4750
Connection ~ 3900 4750
Wire Wire Line
	3900 4750 3900 5100
Wire Wire Line
	2420 5830 2420 6080
Wire Wire Line
	2420 6080 3190 6080
Connection ~ 3190 6080
Wire Wire Line
	3190 6080 3190 6160
$Comp
L power:GND #PWR0202
U 1 1 5D758D9B
P 1580 4830
F 0 "#PWR0202" H 1580 4580 50  0001 C CNN
F 1 "GND" H 1585 4657 50  0000 C CNN
F 2 "" H 1580 4830 50  0001 C CNN
F 3 "" H 1580 4830 50  0001 C CNN
	1    1580 4830
	1    0    0    -1  
$EndComp
Wire Wire Line
	1580 4830 1580 4740
$Comp
L Device:R R201
U 1 1 5D75A43A
P 2060 5680
F 0 "R201" H 1800 5730 50  0000 L CNN
F 1 "DNP 10K" H 1650 5630 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1990 5680 50  0001 C CNN
F 3 "~" H 2060 5680 50  0001 C CNN
	1    2060 5680
	1    0    0    -1  
$EndComp
Wire Wire Line
	2060 5200 2060 5530
Wire Wire Line
	2060 5830 2060 6080
Wire Wire Line
	2060 6080 2420 6080
Connection ~ 2420 6080
$Comp
L Connector_Generic:Conn_01x02 J201
U 1 1 5D75DB28
P 1010 5650
F 0 "J201" H 928 5325 50  0000 C CNN
F 1 "NTC 10K B=3950K" H 928 5416 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1010 5650 50  0001 C CNN
F 3 "~" H 1010 5650 50  0001 C CNN
	1    1010 5650
	-1   0    0    1   
$EndComp
Wire Wire Line
	1210 5550 1400 5550
Wire Wire Line
	1400 5550 1400 5200
Wire Wire Line
	1210 5650 1400 5650
Wire Wire Line
	1400 5650 1400 6080
Wire Wire Line
	1400 6080 2060 6080
Connection ~ 2060 6080
$Comp
L power:GND #PWR0205
U 1 1 5D76393C
P 5320 3830
F 0 "#PWR0205" H 5320 3580 50  0001 C CNN
F 1 "GND" H 5325 3657 50  0000 C CNN
F 2 "" H 5320 3830 50  0001 C CNN
F 3 "" H 5320 3830 50  0001 C CNN
	1    5320 3830
	1    0    0    -1  
$EndComp
Wire Wire Line
	5320 3040 5320 3770
Wire Wire Line
	5190 3040 5320 3040
$Comp
L Device:R R209
U 1 1 5D7666A1
P 5610 3140
F 0 "R209" H 5680 3186 50  0000 L CNN
F 1 "120" H 5680 3095 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5540 3140 50  0001 C CNN
F 3 "~" H 5610 3140 50  0001 C CNN
	1    5610 3140
	1    0    0    -1  
$EndComp
$Comp
L Device:C C206
U 1 1 5D766F2D
P 5610 3540
F 0 "C206" H 5725 3586 50  0000 L CNN
F 1 "0.22uF" H 5725 3495 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5648 3390 50  0001 C CNN
F 3 "~" H 5610 3540 50  0001 C CNN
	1    5610 3540
	1    0    0    -1  
$EndComp
Wire Wire Line
	5190 2940 5610 2940
Wire Wire Line
	5610 2940 5610 2990
Wire Wire Line
	5610 3290 5610 3390
Wire Wire Line
	5610 3690 5610 3770
Wire Wire Line
	5610 3770 5320 3770
Connection ~ 5320 3770
Wire Wire Line
	5320 3770 5320 3830
$Comp
L Device:C C205
U 1 1 5D76E946
P 5470 1940
F 0 "C205" H 5585 1986 50  0000 L CNN
F 1 "0.1uF" H 5585 1895 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5508 1790 50  0001 C CNN
F 3 "~" H 5470 1940 50  0001 C CNN
	1    5470 1940
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_PMOS_GSD Q201
U 1 1 5D7752C3
P 6170 1650
F 0 "Q201" V 6513 1650 50  0000 C CNN
F 1 "SSM3J332R" V 6422 1650 50  0000 C CNN
F 2 "ESP32-Solar-Battery:SOT95P240X88-3N" H 6370 1750 50  0001 C CNN
F 3 "~" H 6170 1650 50  0001 C CNN
	1    6170 1650
	0    1    -1   0   
$EndComp
Connection ~ 4330 1550
Wire Wire Line
	4330 1550 5470 1550
Wire Wire Line
	5190 2540 6170 2540
Wire Wire Line
	6170 2540 6170 1850
Wire Wire Line
	5470 1790 5470 1550
Connection ~ 5470 1550
Wire Wire Line
	5470 1550 5970 1550
Wire Wire Line
	5190 2440 5470 2440
Wire Wire Line
	5470 2440 5470 2090
$Comp
L Device:D_Schottky D204
U 1 1 5D784013
P 6570 1850
F 0 "D204" V 6524 1929 50  0000 L CNN
F 1 "SS56" V 6615 1929 50  0000 L CNN
F 2 "ESP32-Solar-Battery:SOD-128" H 6570 1850 50  0001 C CNN
F 3 "~" H 6570 1850 50  0001 C CNN
	1    6570 1850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0207
U 1 1 5D789153
P 6570 2090
F 0 "#PWR0207" H 6570 1840 50  0001 C CNN
F 1 "GND" H 6575 1917 50  0000 C CNN
F 2 "" H 6570 2090 50  0001 C CNN
F 3 "" H 6570 2090 50  0001 C CNN
	1    6570 2090
	1    0    0    -1  
$EndComp
Wire Wire Line
	6570 2000 6570 2090
$Comp
L Device:L L201
U 1 1 5D78C349
P 6880 1550
F 0 "L201" V 7070 1550 50  0000 C CNN
F 1 "47uH" V 6979 1550 50  0000 C CNN
F 2 "Inductor_SMD:L_Taiyo-Yuden_NR-80xx_HandSoldering" H 6880 1550 50  0001 C CNN
F 3 "~" H 6880 1550 50  0001 C CNN
	1    6880 1550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R210
U 1 1 5D78F2A1
P 7760 1860
F 0 "R210" H 7830 1906 50  0000 L CNN
F 1 "0.1" H 7830 1815 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 7690 1860 50  0001 C CNN
F 3 "~" H 7760 1860 50  0001 C CNN
	1    7760 1860
	1    0    0    -1  
$EndComp
Wire Wire Line
	7030 1550 7760 1550
Wire Wire Line
	7760 1550 7760 1670
Wire Wire Line
	5190 2640 7540 2640
Wire Wire Line
	7540 2640 7540 1670
Wire Wire Line
	7540 1670 7760 1670
Connection ~ 7760 1670
Wire Wire Line
	7760 1670 7760 1710
Wire Wire Line
	5190 2740 6430 2740
Wire Wire Line
	7760 2740 7760 2010
$Comp
L Device:C C207
U 1 1 5D797985
P 6430 3350
F 0 "C207" H 6545 3396 50  0000 L CNN
F 1 "22uF" H 6545 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6468 3200 50  0001 C CNN
F 3 "~" H 6430 3350 50  0001 C CNN
	1    6430 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C208
U 1 1 5D798A7F
P 6870 3360
F 0 "C208" H 6985 3406 50  0000 L CNN
F 1 "22uF" H 6985 3315 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6908 3210 50  0001 C CNN
F 3 "~" H 6870 3360 50  0001 C CNN
	1    6870 3360
	1    0    0    -1  
$EndComp
$Comp
L Device:C C209
U 1 1 5D7993BA
P 7330 3360
F 0 "C209" H 7445 3406 50  0000 L CNN
F 1 "22uF" H 7445 3315 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7368 3210 50  0001 C CNN
F 3 "~" H 7330 3360 50  0001 C CNN
	1    7330 3360
	1    0    0    -1  
$EndComp
Wire Wire Line
	6430 3200 6430 2740
Connection ~ 6430 2740
Wire Wire Line
	6430 2740 6870 2740
Wire Wire Line
	6870 3210 6870 2740
Connection ~ 6870 2740
Wire Wire Line
	6870 2740 7330 2740
Wire Wire Line
	7330 3210 7330 2740
Connection ~ 7330 2740
Wire Wire Line
	7330 2740 7760 2740
$Comp
L power:GND #PWR0206
U 1 1 5D7A1BCF
P 6430 3630
F 0 "#PWR0206" H 6430 3380 50  0001 C CNN
F 1 "GND" H 6435 3457 50  0000 C CNN
F 2 "" H 6430 3630 50  0001 C CNN
F 3 "" H 6430 3630 50  0001 C CNN
	1    6430 3630
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0208
U 1 1 5D7A2562
P 6870 3620
F 0 "#PWR0208" H 6870 3370 50  0001 C CNN
F 1 "GND" H 6875 3447 50  0000 C CNN
F 2 "" H 6870 3620 50  0001 C CNN
F 3 "" H 6870 3620 50  0001 C CNN
	1    6870 3620
	1    0    0    -1  
$EndComp
Wire Wire Line
	6430 3500 6430 3630
Wire Wire Line
	6870 3510 6870 3620
$Comp
L power:GND #PWR0209
U 1 1 5D7A868B
P 7330 3620
F 0 "#PWR0209" H 7330 3370 50  0001 C CNN
F 1 "GND" H 7335 3447 50  0000 C CNN
F 2 "" H 7330 3620 50  0001 C CNN
F 3 "" H 7330 3620 50  0001 C CNN
	1    7330 3620
	1    0    0    -1  
$EndComp
Wire Wire Line
	7330 3510 7330 3620
$Comp
L Device:Q_PMOS_GSD Q202
U 1 1 5D7ABB8B
P 8400 2840
F 0 "Q202" V 8743 2840 50  0000 C CNN
F 1 "SSM3J332R" V 8652 2840 50  0000 C CNN
F 2 "ESP32-Solar-Battery:SOT95P240X88-3N" H 8600 2940 50  0001 C CNN
F 3 "~" H 8400 2840 50  0001 C CNN
	1    8400 2840
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6370 1550 6570 1550
Wire Wire Line
	6570 1700 6570 1550
Connection ~ 6570 1550
Wire Wire Line
	6570 1550 6730 1550
Wire Wire Line
	8200 2740 7760 2740
Connection ~ 7760 2740
$Comp
L Device:R R212
U 1 1 5D76067D
P 8750 3130
F 0 "R212" V 8543 3130 50  0000 C CNN
F 1 "680K" V 8634 3130 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8680 3130 50  0001 C CNN
F 3 "~" H 8750 3130 50  0001 C CNN
	1    8750 3130
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 3040 8400 3130
Wire Wire Line
	8400 3130 8600 3130
Wire Wire Line
	8600 2740 8940 2740
Wire Wire Line
	8940 2740 8940 3130
Wire Wire Line
	8940 3130 8900 3130
$Comp
L Device:R R211
U 1 1 5D767E57
P 7040 4300
F 0 "R211" V 6833 4300 50  0000 C CNN
F 1 "39K" V 6924 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6970 4300 50  0001 C CNN
F 3 "~" H 7040 4300 50  0001 C CNN
	1    7040 4300
	0    1    1    0   
$EndComp
$Comp
L Device:C C210
U 1 1 5D770CC3
P 9450 3370
F 0 "C210" H 9565 3416 50  0000 L CNN
F 1 "0.1uF" H 9565 3325 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9488 3220 50  0001 C CNN
F 3 "~" H 9450 3370 50  0001 C CNN
	1    9450 3370
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 3220 9450 3130
Wire Wire Line
	9450 3130 8940 3130
Connection ~ 8940 3130
$Comp
L power:GND #PWR0211
U 1 1 5D774E58
P 9450 3670
F 0 "#PWR0211" H 9450 3420 50  0001 C CNN
F 1 "GND" H 9455 3497 50  0000 C CNN
F 2 "" H 9450 3670 50  0001 C CNN
F 3 "" H 9450 3670 50  0001 C CNN
	1    9450 3670
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 3520 9450 3580
$Comp
L ESP32-Solar-Battery:MAX809T U203
U 1 1 5D79FDDC
P 8490 4510
F 0 "U203" H 8490 4675 50  0000 C CNN
F 1 "IMP810S" H 8490 4584 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8490 4510 50  0001 C CNN
F 3 "" H 8490 4510 50  0001 C CNN
	1    8490 4510
	1    0    0    -1  
$EndComp
Wire Wire Line
	8090 4610 7950 4610
Wire Wire Line
	7950 4610 7950 4000
Wire Wire Line
	7950 4000 8940 4000
Wire Wire Line
	8940 4000 8940 3130
$Comp
L Device:Q_PMOS_GSD Q203
U 1 1 5D7A6EC2
P 9490 4350
F 0 "Q203" V 9833 4350 50  0000 C CNN
F 1 "SSM3J332R" V 9742 4350 50  0000 C CNN
F 2 "ESP32-Solar-Battery:SOT95P240X88-3N" H 9690 4450 50  0001 C CNN
F 3 "~" H 9490 4350 50  0001 C CNN
	1    9490 4350
	0    1    -1   0   
$EndComp
Wire Wire Line
	9290 4250 8940 4250
Wire Wire Line
	8940 4250 8940 4000
Connection ~ 8940 4000
Wire Wire Line
	8890 4610 8940 4610
Wire Wire Line
	9490 4610 9490 4550
$Comp
L power:GND #PWR0210
U 1 1 5D7B2A65
P 7950 4850
F 0 "#PWR0210" H 7950 4600 50  0001 C CNN
F 1 "GND" H 7955 4677 50  0000 C CNN
F 2 "" H 7950 4850 50  0001 C CNN
F 3 "" H 7950 4850 50  0001 C CNN
	1    7950 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8090 4710 7950 4710
Wire Wire Line
	7950 4710 7950 4850
$Comp
L Device:Fuse F201
U 1 1 5D7B848C
P 10020 4250
F 0 "F201" V 9823 4250 50  0000 C CNN
F 1 "Fuse" V 9914 4250 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" V 9950 4250 50  0001 C CNN
F 3 "~" H 10020 4250 50  0001 C CNN
	1    10020 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	9690 4250 9870 4250
$Comp
L power:GND #PWR0213
U 1 1 5D7BDF08
P 10450 4880
F 0 "#PWR0213" H 10450 4630 50  0001 C CNN
F 1 "GND" H 10455 4707 50  0000 C CNN
F 2 "" H 10450 4880 50  0001 C CNN
F 3 "" H 10450 4880 50  0001 C CNN
	1    10450 4880
	1    0    0    -1  
$EndComp
$Comp
L Device:C C211
U 1 1 5D7BEA3F
P 10450 4600
F 0 "C211" H 10565 4646 50  0000 L CNN
F 1 "0.1uF" H 10565 4555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10488 4450 50  0001 C CNN
F 3 "~" H 10450 4600 50  0001 C CNN
	1    10450 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10170 4250 10450 4250
Wire Wire Line
	10450 4250 10450 4450
$Comp
L Connector_Generic:Conn_01x02 J206
U 1 1 5D7C8FD6
P 11020 4350
F 0 "J206" H 10938 4025 50  0000 C CNN
F 1 "LOAD" H 10938 4116 50  0000 C CNN
F 2 "Connector_JST:JST_VH_B2P-VH_1x02_P3.96mm_Vertical" H 11020 4350 50  0001 C CNN
F 3 "~" H 11020 4350 50  0001 C CNN
	1    11020 4350
	1    0    0    1   
$EndComp
Wire Wire Line
	10450 4250 10680 4250
Connection ~ 10450 4250
Wire Wire Line
	10820 4350 10820 4820
Text GLabel 10750 3870 2    50   Output ~ 0
VDD_3V2
Wire Wire Line
	10750 3870 10680 3870
Wire Wire Line
	10680 3870 10680 4250
Connection ~ 10680 4250
Wire Wire Line
	10680 4250 10820 4250
Text GLabel 10280 3130 2    50   Output ~ 0
PB+
Text GLabel 10270 3580 2    50   Output ~ 0
PB-
Connection ~ 9450 3130
Connection ~ 9450 3580
Wire Wire Line
	9450 3580 9450 3670
Wire Wire Line
	9450 3580 10220 3580
Wire Wire Line
	9450 3130 10220 3130
Wire Wire Line
	10450 4750 10450 4880
$Comp
L power:GND #PWR0101
U 1 1 5D81ED8B
P 10820 4820
F 0 "#PWR0101" H 10820 4570 50  0001 C CNN
F 1 "GND" H 10825 4647 50  0000 C CNN
F 2 "" H 10820 4820 50  0001 C CNN
F 3 "" H 10820 4820 50  0001 C CNN
	1    10820 4820
	1    0    0    -1  
$EndComp
Text Notes 3030 3600 2    50   ~ 0
MPPT pin 1.205V\nFor my 6V Solar Panel, max power at 5.2V\n5.2V(R205 / (R205 + 100K)) = 1.205V\nR205 = 30.163K (Use 30K, Vmp is 5.22V)\n
Text Notes 940  1170 0    50   ~ 0
Note: Max Power at 5.2V
Text Notes 7840 1650 0    50   ~ 0
Full-Scale Charge Current\nIch = 0.120V / R210\nR210 = 0.1 ohm\nIch = 1.2A
Text Notes 8200 4970 0    50   ~ 0
RESET remains high while Vcc is below 2.93V
Text Notes 8490 2230 0    50   ~ 0
Note: Purpose is to disconnect battery from \ncharging circuit.  This is to minimize leakage\ncurrent going into CN3801.
Wire Notes Line
	8070 2390 8070 3310
Wire Notes Line
	8070 3310 9130 3310
Wire Notes Line
	9130 3310 9130 2390
Wire Notes Line
	9130 2390 8070 2390
NoConn ~ 4440 2940
Wire Wire Line
	7190 4300 7800 4300
Wire Wire Line
	7800 4300 7800 3130
Wire Wire Line
	7800 3130 8400 3130
Connection ~ 8400 3130
$Comp
L Device:Q_NPN_BEC_BRT Q1
U 1 1 5D90DFEC
P 6720 4730
F 0 "Q1" H 6860 4776 50  0000 L CNN
F 1 "MUN2211T1" H 6860 4685 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SC-59" H 6720 4730 50  0001 C CNN
F 3 "~" H 6720 4730 50  0001 C CNN
	1    6720 4730
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D1
U 1 1 5D90F741
P 6090 4730
F 0 "D1" H 6090 4946 50  0000 C CNN
F 1 "BZT52C3V9" H 6090 4855 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 6090 4730 50  0001 C CNN
F 3 "~" H 6090 4730 50  0001 C CNN
	1    6090 4730
	1    0    0    -1  
$EndComp
Text Notes 5860 5040 0    50   ~ 0
Zener 3.9V\n(SOD-123)
Text Notes 6940 5080 0    50   ~ 0
Pre-biased NPN\n(SC-59)
$Comp
L power:GND #PWR01
U 1 1 5D910665
P 6770 5280
F 0 "#PWR01" H 6770 5030 50  0001 C CNN
F 1 "GND" H 6775 5107 50  0000 C CNN
F 2 "" H 6770 5280 50  0001 C CNN
F 3 "" H 6770 5280 50  0001 C CNN
	1    6770 5280
	1    0    0    -1  
$EndComp
Wire Wire Line
	6770 4930 6770 5280
Wire Wire Line
	6890 4300 6770 4300
Wire Wire Line
	6770 4300 6770 4530
Wire Wire Line
	6240 4730 6370 4730
Text GLabel 5600 4730 0    50   Input ~ 0
Solar_V+
Wire Wire Line
	5600 4730 5940 4730
Wire Wire Line
	3320 4750 2870 4750
Wire Wire Line
	2870 5000 2990 5000
Wire Wire Line
	2870 4750 2870 5000
Wire Wire Line
	1400 5200 2060 5200
Wire Wire Line
	2060 5200 2060 4770
Connection ~ 2060 5200
Wire Wire Line
	2060 4470 2060 4200
Connection ~ 2060 4200
Wire Wire Line
	2060 4200 2420 4200
$Comp
L Device:R R213
U 1 1 5D92F00F
P 2060 4620
F 0 "R213" H 2090 4460 50  0000 L CNN
F 1 "39K 1%" H 2080 4370 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1990 4620 50  0001 C CNN
F 3 "~" H 2060 4620 50  0001 C CNN
	1    2060 4620
	1    0    0    -1  
$EndComp
Wire Wire Line
	2060 5200 2250 5200
Wire Wire Line
	2250 5200 2250 5000
Text Notes 2470 5390 0    50   ~ 0
Vmp = 5.22V\nV- = 0.396V
Text Notes 1360 6530 0    50   ~ 0
MF52A103F3950(A1)\nB25/50 3950K\n\n  52 degC, Min: 3.254K, Nom: 3.324K, Max: 3.394K\n  58 degC, Min: 2.593K, Nom: 2.654K, Max: 2.716K
Connection ~ 2870 5000
Wire Wire Line
	2250 5000 2870 5000
$Comp
L Device:R R214
U 1 1 5D97C82D
P 8940 4430
F 0 "R214" H 8780 4400 50  0000 C CNN
F 1 "680K" H 8780 4480 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8870 4430 50  0001 C CNN
F 3 "~" H 8940 4430 50  0001 C CNN
	1    8940 4430
	-1   0    0    1   
$EndComp
Wire Wire Line
	8940 4280 8940 4250
Connection ~ 8940 4250
Wire Wire Line
	8940 4580 8940 4610
Connection ~ 8940 4610
Wire Wire Line
	8940 4610 9490 4610
$Comp
L Connector_Generic:Conn_01x02 J203
U 1 1 5DAC979D
P 10830 3410
F 0 "J203" H 10748 3085 50  0000 C CNN
F 1 "LiFePo4_Batt" H 10880 3190 50  0000 C CNN
F 2 "Connector_JST:JST_VH_B2P-VH_1x02_P3.96mm_Vertical" H 10830 3410 50  0001 C CNN
F 3 "~" H 10830 3410 50  0001 C CNN
	1    10830 3410
	1    0    0    1   
$EndComp
Wire Wire Line
	10630 3310 10220 3310
Wire Wire Line
	10220 3310 10220 3130
Connection ~ 10220 3130
Wire Wire Line
	10220 3130 10280 3130
Wire Wire Line
	10630 3410 10220 3410
Wire Wire Line
	10220 3410 10220 3580
Connection ~ 10220 3580
Wire Wire Line
	10220 3580 10270 3580
$EndSCHEMATC
