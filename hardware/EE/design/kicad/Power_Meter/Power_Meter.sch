EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ESP32-Solar-Battery:INA219 U1
U 1 1 5DB6A8C4
P 5600 3390
F 0 "U1" H 5825 3555 50  0000 C CNN
F 1 "INA219" H 5825 3464 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-8_Handsoldering" H 5600 3390 50  0001 C CNN
F 3 "" H 5600 3390 50  0001 C CNN
	1    5600 3390
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5DB6B768
P 4280 2310
F 0 "R2" V 4073 2310 50  0000 C CNN
F 1 "TBD" V 4164 2310 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 4210 2310 50  0001 C CNN
F 3 "~" H 4280 2310 50  0001 C CNN
	1    4280 2310
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5DB6C888
P 5220 3910
F 0 "C2" H 5250 3790 50  0000 L CNN
F 1 "0.1uF" H 5250 3710 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5258 3760 50  0001 C CNN
F 3 "~" H 5220 3910 50  0001 C CNN
	1    5220 3910
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR04
U 1 1 5DB704B5
P 4460 3810
F 0 "#PWR04" H 4460 3560 50  0001 C CNN
F 1 "GNDD" H 4464 3655 50  0000 C CNN
F 2 "" H 4460 3810 50  0001 C CNN
F 3 "" H 4460 3810 50  0001 C CNN
	1    4460 3810
	1    0    0    -1  
$EndComp
Wire Wire Line
	5220 3760 5220 3690
Connection ~ 5220 3690
Wire Wire Line
	5220 3690 5500 3690
$Comp
L power:VDD #PWR05
U 1 1 5DB70FEE
P 4460 4230
F 0 "#PWR05" H 4460 4080 50  0001 C CNN
F 1 "VDD" H 4477 4403 50  0000 C CNN
F 2 "" H 4460 4230 50  0001 C CNN
F 3 "" H 4460 4230 50  0001 C CNN
	1    4460 4230
	1    0    0    -1  
$EndComp
Wire Wire Line
	5220 4320 5220 4060
Wire Wire Line
	5500 3790 5460 3790
Wire Wire Line
	5460 3790 5460 4320
Wire Wire Line
	5460 4320 5220 4320
Connection ~ 5220 4320
$Comp
L Device:Jumper JP1
U 1 1 5DB728D4
P 6700 2970
F 0 "JP1" V 6654 3097 50  0000 L CNN
F 1 "SDA_PU" V 6745 3097 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6700 2970 50  0001 C CNN
F 3 "~" H 6700 2970 50  0001 C CNN
	1    6700 2970
	0    1    1    0   
$EndComp
$Comp
L Device:Jumper JP2
U 1 1 5DB73DA0
P 7300 2960
F 0 "JP2" V 7254 3087 50  0000 L CNN
F 1 "SCL_PU" V 7345 3087 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7300 2960 50  0001 C CNN
F 3 "~" H 7300 2960 50  0001 C CNN
	1    7300 2960
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5DB74151
P 6700 2420
F 0 "R4" H 6770 2466 50  0000 L CNN
F 1 "3.3K" H 6770 2375 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6630 2420 50  0001 C CNN
F 3 "~" H 6700 2420 50  0001 C CNN
	1    6700 2420
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5DB7464A
P 7300 2410
F 0 "R5" H 7370 2456 50  0000 L CNN
F 1 "3.3K" H 7370 2365 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7230 2410 50  0001 C CNN
F 3 "~" H 7300 2410 50  0001 C CNN
	1    7300 2410
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR07
U 1 1 5DB749DE
P 6700 2150
F 0 "#PWR07" H 6700 2000 50  0001 C CNN
F 1 "VDD" H 6717 2323 50  0000 C CNN
F 2 "" H 6700 2150 50  0001 C CNN
F 3 "" H 6700 2150 50  0001 C CNN
	1    6700 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2150 6700 2200
Wire Wire Line
	6700 2200 7300 2200
Wire Wire Line
	7300 2200 7300 2260
Connection ~ 6700 2200
Wire Wire Line
	6700 2200 6700 2270
Wire Wire Line
	6700 2570 6700 2670
Wire Wire Line
	7300 2560 7300 2660
Wire Wire Line
	6150 3690 6700 3690
Wire Wire Line
	6700 3690 6700 3270
Wire Wire Line
	6150 3790 7300 3790
Wire Wire Line
	7300 3790 7300 3260
$Comp
L Device:Jumper_NC_Dual JP3
U 1 1 5DB75DF2
P 8090 3130
F 0 "JP3" V 8044 3232 50  0000 L CNN
F 1 "SEL1" V 8135 3232 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8090 3130 50  0001 C CNN
F 3 "~" H 8090 3130 50  0001 C CNN
	1    8090 3130
	0    1    1    0   
$EndComp
$Comp
L Device:Jumper_NC_Dual JP4
U 1 1 5DB78A12
P 8980 3470
F 0 "JP4" V 8934 3572 50  0000 L CNN
F 1 "SEL0" V 9025 3572 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8980 3470 50  0001 C CNN
F 3 "~" H 8980 3470 50  0001 C CNN
	1    8980 3470
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 3490 7720 3490
Wire Wire Line
	7720 3490 7720 3130
Wire Wire Line
	7720 3130 7990 3130
Wire Wire Line
	6150 3590 8680 3590
Wire Wire Line
	8680 3590 8680 3470
Wire Wire Line
	8680 3470 8880 3470
Wire Wire Line
	8090 2880 8090 2200
Wire Wire Line
	8090 2200 7300 2200
Connection ~ 7300 2200
Wire Wire Line
	8980 3220 8980 2200
Wire Wire Line
	8980 2200 8090 2200
Connection ~ 8090 2200
$Comp
L power:GNDD #PWR010
U 1 1 5DB7CEB1
P 8090 3440
F 0 "#PWR010" H 8090 3190 50  0001 C CNN
F 1 "GNDD" H 8094 3285 50  0000 C CNN
F 2 "" H 8090 3440 50  0001 C CNN
F 3 "" H 8090 3440 50  0001 C CNN
	1    8090 3440
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR011
U 1 1 5DB7DF22
P 8980 3800
F 0 "#PWR011" H 8980 3550 50  0001 C CNN
F 1 "GNDD" H 8984 3645 50  0000 C CNN
F 2 "" H 8980 3800 50  0001 C CNN
F 3 "" H 8980 3800 50  0001 C CNN
	1    8980 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8090 3380 8090 3440
Wire Wire Line
	8980 3720 8980 3800
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5DB7ED8D
P 7940 4670
F 0 "J4" H 7858 4245 50  0000 C CNN
F 1 "HOST" H 7858 4336 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7940 4670 50  0001 C CNN
F 3 "~" H 7940 4670 50  0001 C CNN
	1    7940 4670
	1    0    0    1   
$EndComp
$Comp
L power:GNDD #PWR09
U 1 1 5DB80C47
P 7620 4820
F 0 "#PWR09" H 7620 4570 50  0001 C CNN
F 1 "GNDD" H 7624 4665 50  0000 C CNN
F 2 "" H 7620 4820 50  0001 C CNN
F 3 "" H 7620 4820 50  0001 C CNN
	1    7620 4820
	1    0    0    -1  
$EndComp
Wire Wire Line
	7740 4770 7620 4770
Wire Wire Line
	7620 4770 7620 4820
Wire Wire Line
	6700 3690 6700 4670
Wire Wire Line
	6700 4670 7740 4670
Connection ~ 6700 3690
Wire Wire Line
	7740 4570 7300 4570
Wire Wire Line
	7300 4570 7300 3790
Connection ~ 7300 3790
$Comp
L power:VDD #PWR08
U 1 1 5DB828CF
P 7620 4280
F 0 "#PWR08" H 7620 4130 50  0001 C CNN
F 1 "VDD" H 7637 4453 50  0000 C CNN
F 2 "" H 7620 4280 50  0001 C CNN
F 3 "" H 7620 4280 50  0001 C CNN
	1    7620 4280
	1    0    0    -1  
$EndComp
Wire Wire Line
	7620 4280 7620 4470
Wire Wire Line
	7620 4470 7740 4470
$Comp
L Device:R R3
U 1 1 5DB839B0
P 4610 2770
F 0 "R3" H 4540 2724 50  0000 R CNN
F 1 "10" H 4540 2815 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4540 2770 50  0001 C CNN
F 3 "~" H 4610 2770 50  0001 C CNN
	1    4610 2770
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5DB840FA
P 4010 2770
F 0 "R1" H 3940 2724 50  0000 R CNN
F 1 "10" H 3940 2815 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3940 2770 50  0001 C CNN
F 3 "~" H 4010 2770 50  0001 C CNN
	1    4010 2770
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 5DB844EF
P 4310 3110
F 0 "C1" V 4460 3050 50  0000 L CNN
F 1 "0.1uF" V 4550 3050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4348 2960 50  0001 C CNN
F 3 "~" H 4310 3110 50  0001 C CNN
	1    4310 3110
	0    1    1    0   
$EndComp
Wire Wire Line
	4430 2310 4610 2310
Wire Wire Line
	4610 2310 4610 2620
Wire Wire Line
	4130 2310 4010 2310
Wire Wire Line
	4010 2310 4010 2620
Wire Wire Line
	4610 2920 4610 3110
Wire Wire Line
	4610 3490 5500 3490
Wire Wire Line
	5500 3590 4010 3590
Wire Wire Line
	4010 3590 4010 3110
Wire Wire Line
	4460 3110 4610 3110
Connection ~ 4610 3110
Wire Wire Line
	4610 3110 4610 3490
Wire Wire Line
	4160 3110 4010 3110
Connection ~ 4010 3110
Wire Wire Line
	4010 3110 4010 2920
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5DB916B1
P 3350 2410
F 0 "J1" H 3350 2080 50  0000 C CNN
F 1 "IN" H 3360 2180 50  0000 C CNN
F 2 "Connector_JST:JST_VH_B2P-VH_1x02_P3.96mm_Vertical" H 3350 2410 50  0001 C CNN
F 3 "~" H 3350 2410 50  0001 C CNN
	1    3350 2410
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5DB9256D
P 5280 2410
F 0 "J3" H 5280 2070 50  0000 C CNN
F 1 "OUT" H 5250 2170 50  0000 C CNN
F 2 "Connector_JST:JST_VH_B2P-VH_1x02_P3.96mm_Vertical" H 5280 2410 50  0001 C CNN
F 3 "~" H 5280 2410 50  0001 C CNN
	1    5280 2410
	1    0    0    1   
$EndComp
Wire Wire Line
	4010 2310 3550 2310
Connection ~ 4010 2310
Wire Wire Line
	4610 2310 5080 2310
Connection ~ 4610 2310
$Comp
L power:GNDA #PWR01
U 1 1 5DB96B1F
P 3660 2550
F 0 "#PWR01" H 3660 2300 50  0001 C CNN
F 1 "GNDA" H 3665 2377 50  0000 C CNN
F 2 "" H 3660 2550 50  0001 C CNN
F 3 "" H 3660 2550 50  0001 C CNN
	1    3660 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR06
U 1 1 5DB96E7D
P 4960 2570
F 0 "#PWR06" H 4960 2320 50  0001 C CNN
F 1 "GNDA" H 4965 2397 50  0000 C CNN
F 2 "" H 4960 2570 50  0001 C CNN
F 3 "" H 4960 2570 50  0001 C CNN
	1    4960 2570
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2410 3660 2410
Wire Wire Line
	3660 2410 3660 2550
Wire Wire Line
	4960 2570 4960 2410
Wire Wire Line
	4960 2410 5080 2410
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5DB997B1
P 4010 4550
F 0 "J2" V 3974 4362 50  0000 R CNN
F 1 "GND" V 3883 4362 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4010 4550 50  0001 C CNN
F 3 "~" H 4010 4550 50  0001 C CNN
	1    4010 4550
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDA #PWR02
U 1 1 5DB9A9E4
P 3900 4940
F 0 "#PWR02" H 3900 4690 50  0001 C CNN
F 1 "GNDA" H 3905 4767 50  0000 C CNN
F 2 "" H 3900 4940 50  0001 C CNN
F 3 "" H 3900 4940 50  0001 C CNN
	1    3900 4940
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR03
U 1 1 5DB9B1A9
P 4300 4950
F 0 "#PWR03" H 4300 4700 50  0001 C CNN
F 1 "GNDD" H 4304 4795 50  0000 C CNN
F 2 "" H 4300 4950 50  0001 C CNN
F 3 "" H 4300 4950 50  0001 C CNN
	1    4300 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4940 3900 4860
Wire Wire Line
	3900 4860 4010 4860
Wire Wire Line
	4010 4860 4010 4750
Wire Wire Line
	4110 4750 4110 4860
Wire Wire Line
	4110 4860 4300 4860
Wire Wire Line
	4300 4860 4300 4950
Text Notes 3760 1980 0    50   ~ 0
Use kelvin connection or a 4-wire \nconnection on Sensing Resistor
$Comp
L Device:C C3
U 1 1 5DBA5B22
P 4840 3910
F 0 "C3" H 4870 3790 50  0000 L CNN
F 1 "10nF" H 4870 3710 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4878 3760 50  0001 C CNN
F 3 "~" H 4840 3910 50  0001 C CNN
	1    4840 3910
	1    0    0    -1  
$EndComp
Wire Wire Line
	4460 3690 4460 3810
Wire Wire Line
	4460 3690 4840 3690
Wire Wire Line
	4840 3760 4840 3690
Connection ~ 4840 3690
Wire Wire Line
	4840 3690 5220 3690
Wire Wire Line
	4460 4230 4460 4320
Wire Wire Line
	4460 4320 4840 4320
Wire Wire Line
	4840 4060 4840 4320
Connection ~ 4840 4320
Wire Wire Line
	4840 4320 5220 4320
$EndSCHEMATC
