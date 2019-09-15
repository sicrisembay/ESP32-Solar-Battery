EESchema Schematic File Version 4
LIBS:ESP32-Solar-Battery-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title "LiFePo4 Battery Protection"
Date "2019-09-12"
Rev "1"
Comp ""
Comment1 "Author: Sicris Rey Embay"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ESP32-Solar-Battery:HY2112 U301
U 1 1 5D7ED08D
P 5490 3080
F 0 "U301" H 5490 3245 50  0000 C CNN
F 1 "HY2112" H 5490 3154 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 5490 3080 50  0001 C CNN
F 3 "" H 5490 3080 50  0001 C CNN
	1    5490 3080
	-1   0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GSD Q301
U 1 1 5D7EE973
P 5270 4460
F 0 "Q301" V 5521 4460 50  0000 C CNN
F 1 "SSM3K333R" V 5612 4460 50  0000 C CNN
F 2 "ESP32-Solar-Battery:SOT95P240X88-3N" H 5470 4560 50  0001 C CNN
F 3 "~" H 5270 4460 50  0001 C CNN
	1    5270 4460
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NMOS_GSD Q302
U 1 1 5D7F2B1B
P 5920 4460
F 0 "Q302" V 6171 4460 50  0000 C CNN
F 1 "SSM3K333R" V 6262 4460 50  0000 C CNN
F 2 "ESP32-Solar-Battery:SOT95P240X88-3N" H 6120 4560 50  0001 C CNN
F 3 "~" H 5920 4460 50  0001 C CNN
	1    5920 4460
	0    -1   1    0   
$EndComp
Wire Wire Line
	5720 4560 5470 4560
Wire Wire Line
	5690 3680 5690 4030
Wire Wire Line
	5690 4030 5920 4030
Wire Wire Line
	5920 4030 5920 4260
Wire Wire Line
	5270 4260 5270 4030
Wire Wire Line
	5270 4030 5490 4030
Wire Wire Line
	5490 4030 5490 3680
$Comp
L Device:R R301
U 1 1 5D7F4365
P 4860 4140
F 0 "R301" H 4930 4186 50  0000 L CNN
F 1 "2K" H 4930 4095 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4790 4140 50  0001 C CNN
F 3 "~" H 4860 4140 50  0001 C CNN
	1    4860 4140
	1    0    0    -1  
$EndComp
Wire Wire Line
	4860 3990 4860 3860
Wire Wire Line
	4860 3860 5290 3860
Wire Wire Line
	5290 3860 5290 3680
Wire Wire Line
	4860 4290 4860 4560
Wire Wire Line
	4860 4560 5070 4560
Text GLabel 4110 4560 0    50   Input ~ 0
PB-
Wire Wire Line
	4110 4560 4860 4560
Connection ~ 4860 4560
Text GLabel 4100 2710 0    50   Input ~ 0
PB+
$Comp
L Device:R R302
U 1 1 5D81762C
P 6350 3180
F 0 "R302" V 6143 3180 50  0000 C CNN
F 1 "100" V 6234 3180 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6280 3180 50  0001 C CNN
F 3 "~" H 6350 3180 50  0001 C CNN
	1    6350 3180
	0    1    1    0   
$EndComp
Wire Wire Line
	5890 3180 6200 3180
$Comp
L Device:C C301
U 1 1 5D8188C8
P 6780 3420
F 0 "C301" H 6895 3466 50  0000 L CNN
F 1 "0.1uF" H 6895 3375 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6818 3270 50  0001 C CNN
F 3 "~" H 6780 3420 50  0001 C CNN
	1    6780 3420
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3180 6780 3180
Wire Wire Line
	6780 3180 6780 3270
Wire Wire Line
	5890 3380 6320 3380
Wire Wire Line
	6320 3380 6320 3730
Wire Wire Line
	6320 3730 6780 3730
Wire Wire Line
	6780 3730 6780 3570
Wire Wire Line
	4100 2710 6780 2710
Wire Wire Line
	6780 2710 6780 3180
Connection ~ 6780 3180
NoConn ~ 5090 3180
Wire Wire Line
	6120 4560 6780 4560
Wire Wire Line
	6780 4560 6780 3730
Connection ~ 6780 3730
$Comp
L Connector_Generic:Conn_01x02 J301
U 1 1 5D81A7E4
P 8230 3480
F 0 "J301" H 8148 3155 50  0000 C CNN
F 1 "LiFePo4_32700" H 8148 3246 50  0000 C CNN
F 2 "ESP32-Solar-Battery:32700_holder" H 8230 3480 50  0001 C CNN
F 3 "~" H 8230 3480 50  0001 C CNN
	1    8230 3480
	1    0    0    1   
$EndComp
Wire Wire Line
	7640 3380 7640 3180
Wire Wire Line
	7640 3180 6780 3180
Wire Wire Line
	8030 3480 7790 3480
Wire Wire Line
	7640 3480 7640 3730
Wire Wire Line
	7640 3730 6780 3730
Connection ~ 7790 3480
Wire Wire Line
	7790 3480 7640 3480
$Comp
L Connector_Generic:Conn_01x02 J302
U 1 1 5D79C35F
P 8230 3950
F 0 "J302" H 8148 3625 50  0000 C CNN
F 1 "LiFePo4_Ext" H 8148 3716 50  0000 C CNN
F 2 "Connector_JST:JST_VH_B2P-VH_1x02_P3.96mm_Vertical" H 8230 3950 50  0001 C CNN
F 3 "~" H 8230 3950 50  0001 C CNN
	1    8230 3950
	1    0    0    1   
$EndComp
Wire Wire Line
	7640 3380 7870 3380
Wire Wire Line
	8030 3950 7790 3950
Wire Wire Line
	7790 3480 7790 3950
Wire Wire Line
	8030 3850 7870 3850
Wire Wire Line
	7870 3850 7870 3380
Connection ~ 7870 3380
Wire Wire Line
	7870 3380 8030 3380
$EndSCHEMATC
