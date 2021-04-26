EESchema Schematic File Version 4
LIBS:CN3791_LithiumBattery_MPPT_Solar9V-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "2019-09-29"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ESP32-Solar-Battery:CN3801 U1
U 1 1 5D862D51
P 6670 4150
F 0 "U1" H 6645 4675 50  0000 C CNN
F 1 "CN3791" H 6645 4584 50  0000 C CNN
F 2 "" H 6370 4500 50  0001 C CNN
F 3 "" H 6370 4500 50  0001 C CNN
	1    6670 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D8642CB
P 2010 4320
F 0 "R2" H 2080 4366 50  0000 L CNN
F 1 "28K" H 2080 4275 50  0000 L CNN
F 2 "" V 1940 4320 50  0001 C CNN
F 3 "~" H 2010 4320 50  0001 C CNN
	1    2010 4320
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D864EF6
P 2010 3320
F 0 "R1" H 2080 3366 50  0000 L CNN
F 1 "178K" H 2080 3275 50  0000 L CNN
F 2 "" V 1940 3320 50  0001 C CNN
F 3 "~" H 2010 3320 50  0001 C CNN
	1    2010 3320
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5D86541F
P 5200 3920
F 0 "D2" V 5239 3802 50  0000 R CNN
F 1 "GREEN" V 5148 3802 50  0000 R CNN
F 2 "" H 5200 3920 50  0001 C CNN
F 3 "~" H 5200 3920 50  0001 C CNN
	1    5200 3920
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5D8669DE
P 5670 3930
F 0 "D3" V 5709 3812 50  0000 R CNN
F 1 "RED" V 5618 3812 50  0000 R CNN
F 2 "" H 5670 3930 50  0001 C CNN
F 3 "~" H 5670 3930 50  0001 C CNN
	1    5670 3930
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5D8671F9
P 5200 3280
F 0 "R3" H 5270 3326 50  0000 L CNN
F 1 "2K" H 5270 3235 50  0000 L CNN
F 2 "" V 5130 3280 50  0001 C CNN
F 3 "~" H 5200 3280 50  0001 C CNN
	1    5200 3280
	1    0    0    -1  
$EndComp
Wire Wire Line
	6270 4250 5670 4250
Wire Wire Line
	5670 4250 5670 4080
$Comp
L Device:C C2
U 1 1 5D869664
P 7140 3590
F 0 "C2" H 7255 3636 50  0000 L CNN
F 1 "0.1uF" H 7255 3545 50  0000 L CNN
F 2 "" H 7178 3440 50  0001 C CNN
F 3 "~" H 7140 3590 50  0001 C CNN
	1    7140 3590
	1    0    0    -1  
$EndComp
Wire Wire Line
	7020 3850 7140 3850
Wire Wire Line
	7140 3850 7140 3740
$Comp
L ESP32-Solar-Battery:TPC8107 Q1
U 1 1 5D873728
P 3110 2760
F 0 "Q1" V 3735 2760 50  0000 C CNN
F 1 "TPC8107" V 3644 2760 50  0000 C CNN
F 2 "" H 3310 2860 50  0001 C CNN
F 3 "~" H 3110 2760 50  0001 C CNN
	1    3110 2760
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 5D878367
P 1630 2360
F 0 "TP1" V 1700 2460 50  0001 C CNN
F 1 "Solar+" V 1620 2680 50  0000 C CNN
F 2 "" H 1830 2360 50  0001 C CNN
F 3 "~" H 1830 2360 50  0001 C CNN
	1    1630 2360
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2910 2360 2810 2360
Wire Wire Line
	2910 2460 2810 2460
Wire Wire Line
	2810 2460 2810 2360
Connection ~ 2810 2360
Wire Wire Line
	2910 2560 2810 2560
Wire Wire Line
	2810 2560 2810 2460
Connection ~ 2810 2460
Wire Wire Line
	2910 2660 2810 2660
Wire Wire Line
	2810 2660 2810 2560
Connection ~ 2810 2560
Wire Wire Line
	2010 3170 2010 2360
Wire Wire Line
	2010 2360 1630 2360
Wire Wire Line
	2010 3470 2010 3880
Wire Wire Line
	2010 2360 2390 2360
Connection ~ 2010 2360
$Comp
L power:GND #PWR03
U 1 1 5D87F637
P 2390 3070
F 0 "#PWR03" H 2390 2820 50  0001 C CNN
F 1 "GND" H 2395 2897 50  0000 C CNN
F 2 "" H 2390 3070 50  0001 C CNN
F 3 "" H 2390 3070 50  0001 C CNN
	1    2390 3070
	1    0    0    -1  
$EndComp
Wire Wire Line
	2390 2630 2390 2360
Connection ~ 2390 2360
Wire Wire Line
	2390 2360 2810 2360
Wire Wire Line
	2390 3070 2390 2930
$Comp
L power:GND #PWR02
U 1 1 5D88056C
P 2010 4700
F 0 "#PWR02" H 2010 4450 50  0001 C CNN
F 1 "GND" H 2015 4527 50  0000 C CNN
F 2 "" H 2010 4700 50  0001 C CNN
F 3 "" H 2010 4700 50  0001 C CNN
	1    2010 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2010 4470 2010 4700
$Comp
L Device:R R6
U 1 1 5D881238
P 3530 3100
F 0 "R6" H 3460 3054 50  0000 R CNN
F 1 "316K" H 3460 3145 50  0000 R CNN
F 2 "" V 3460 3100 50  0001 C CNN
F 3 "~" H 3530 3100 50  0001 C CNN
	1    3530 3100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 5D88267C
P 3530 3780
F 0 "R7" H 3600 3826 50  0000 L CNN
F 1 "20K" H 3600 3735 50  0000 L CNN
F 2 "" V 3460 3780 50  0001 C CNN
F 3 "~" H 3530 3780 50  0001 C CNN
	1    3530 3780
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D9
U 1 1 5D8832A8
P 4020 3090
F 0 "D9" V 3974 3169 50  0000 L CNN
F 1 "W9" V 4065 3169 50  0000 L CNN
F 2 "" H 4020 3090 50  0001 C CNN
F 3 "~" H 4020 3090 50  0001 C CNN
	1    4020 3090
	0    1    1    0   
$EndComp
Wire Wire Line
	3110 2960 3110 3380
Wire Wire Line
	3110 3380 3530 3380
Wire Wire Line
	3530 3380 3530 3250
Wire Wire Line
	4020 3240 4020 3380
Wire Wire Line
	4020 3380 3530 3380
Connection ~ 3530 3380
Wire Wire Line
	3530 3630 3530 3380
Wire Wire Line
	3310 2660 3410 2660
Wire Wire Line
	4020 2660 4020 2940
Wire Wire Line
	3530 2950 3530 2660
Connection ~ 3530 2660
Wire Wire Line
	3530 2660 4020 2660
Wire Wire Line
	3310 2460 3410 2460
Wire Wire Line
	3410 2460 3410 2560
Connection ~ 3410 2660
Wire Wire Line
	3410 2660 3530 2660
Wire Wire Line
	3310 2560 3410 2560
Connection ~ 3410 2560
Wire Wire Line
	3410 2560 3410 2660
Wire Wire Line
	6270 4350 5200 4350
Wire Wire Line
	5200 4350 5200 4070
Wire Wire Line
	5670 4250 3530 4250
Wire Wire Line
	3530 4250 3530 3930
Connection ~ 5670 4250
Wire Wire Line
	5200 3770 5200 3580
Wire Wire Line
	5200 3580 5670 3580
Wire Wire Line
	5670 3580 5670 3780
Connection ~ 5200 3580
Wire Wire Line
	5200 3580 5200 3430
Wire Wire Line
	5670 3580 6160 3580
Wire Wire Line
	6160 3580 6160 3850
Wire Wire Line
	6160 3850 6270 3850
Connection ~ 5670 3580
$Comp
L Device:CP C1
U 1 1 5D88EFB0
P 4560 2960
F 0 "C1" H 4678 3006 50  0000 L CNN
F 1 "47uF" H 4678 2915 50  0000 L CNN
F 2 "" H 4598 2810 50  0001 C CNN
F 3 "~" H 4560 2960 50  0001 C CNN
	1    4560 2960
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3130 5200 2660
Wire Wire Line
	5200 2660 4560 2660
Connection ~ 4020 2660
Wire Wire Line
	4560 2810 4560 2660
Connection ~ 4560 2660
Wire Wire Line
	4560 2660 4020 2660
$Comp
L Device:C C7
U 1 1 5D89112A
P 2390 2780
F 0 "C7" H 2505 2826 50  0000 L CNN
F 1 "C" H 2505 2735 50  0000 L CNN
F 2 "" H 2428 2630 50  0001 C CNN
F 3 "~" H 2390 2780 50  0001 C CNN
	1    2390 2780
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5D891918
P 4560 3230
F 0 "#PWR04" H 4560 2980 50  0001 C CNN
F 1 "GND" H 4565 3057 50  0000 C CNN
F 2 "" H 4560 3230 50  0001 C CNN
F 3 "" H 4560 3230 50  0001 C CNN
	1    4560 3230
	1    0    0    -1  
$EndComp
Wire Wire Line
	4560 3230 4560 3110
Wire Wire Line
	7140 3440 7140 2660
Wire Wire Line
	7140 2660 5200 2660
Connection ~ 5200 2660
$Comp
L Device:Q_PMOS_DGS U2
U 1 1 5D89380B
P 7720 2760
F 0 "U2" V 8063 2760 50  0000 C CNN
F 1 "PMOS" V 7972 2760 50  0000 C CNN
F 2 "" H 7920 2860 50  0001 C CNN
F 3 "~" H 7720 2760 50  0001 C CNN
	1    7720 2760
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7140 2660 7520 2660
Connection ~ 7140 2660
$Comp
L Device:D D1
U 1 1 5D89731A
P 8100 3090
F 0 "D1" V 8054 3169 50  0000 L CNN
F 1 "SB1045L" V 8145 3169 50  0000 L CNN
F 2 "" H 8100 3090 50  0001 C CNN
F 3 "~" H 8100 3090 50  0001 C CNN
	1    8100 3090
	0    1    1    0   
$EndComp
$Comp
L Device:D D4
U 1 1 5D897B8A
P 8620 3080
F 0 "D4" V 8574 3159 50  0000 L CNN
F 1 "SB1045L" V 8665 3159 50  0000 L CNN
F 2 "" H 8620 3080 50  0001 C CNN
F 3 "~" H 8620 3080 50  0001 C CNN
	1    8620 3080
	0    1    1    0   
$EndComp
Wire Wire Line
	8620 2660 8620 2930
$Comp
L Device:L L1
U 1 1 5D899E3E
P 9060 2660
F 0 "L1" V 9250 2660 50  0000 C CNN
F 1 "9R5MS (9.5uH)" V 9159 2660 50  0000 C CNN
F 2 "" H 9060 2660 50  0001 C CNN
F 3 "~" H 9060 2660 50  0001 C CNN
	1    9060 2660
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8620 2660 8910 2660
Connection ~ 8620 2660
Wire Wire Line
	7920 2660 8100 2660
Wire Wire Line
	8100 2940 8100 2660
Connection ~ 8100 2660
Wire Wire Line
	8100 2660 8620 2660
$Comp
L power:GND #PWR07
U 1 1 5D89D65F
P 8100 3560
F 0 "#PWR07" H 8100 3310 50  0001 C CNN
F 1 "GND" H 8105 3387 50  0000 C CNN
F 2 "" H 8100 3560 50  0001 C CNN
F 3 "" H 8100 3560 50  0001 C CNN
	1    8100 3560
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 3240 8100 3390
Wire Wire Line
	8100 3390 8620 3390
Wire Wire Line
	8620 3390 8620 3230
Connection ~ 8100 3390
Wire Wire Line
	8100 3390 8100 3560
Wire Wire Line
	7020 3950 7720 3950
Wire Wire Line
	7720 3950 7720 2960
$Comp
L Device:R R5
U 1 1 5D8A1330
P 9640 3650
F 0 "R5" H 9570 3604 50  0000 R CNN
F 1 "0.04" H 9570 3695 50  0000 R CNN
F 2 "" V 9570 3650 50  0001 C CNN
F 3 "~" H 9640 3650 50  0001 C CNN
	1    9640 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	9210 2660 9640 2660
Wire Wire Line
	9640 2660 9640 3380
Wire Wire Line
	7020 4050 9160 4050
Wire Wire Line
	9160 4050 9160 3380
Wire Wire Line
	9160 3380 9640 3380
Connection ~ 9640 3380
Wire Wire Line
	9640 3380 9640 3500
Wire Wire Line
	7020 4150 9640 4150
Wire Wire Line
	9640 4150 9640 3800
$Comp
L power:GND #PWR05
U 1 1 5D8A69C7
P 7200 4970
F 0 "#PWR05" H 7200 4720 50  0001 C CNN
F 1 "GND" H 7205 4797 50  0000 C CNN
F 2 "" H 7200 4970 50  0001 C CNN
F 3 "" H 7200 4970 50  0001 C CNN
	1    7200 4970
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5D8A7308
P 7480 4350
F 0 "R4" V 7390 4320 50  0000 C CNN
F 1 "120" V 7570 4340 50  0000 C CNN
F 2 "" V 7410 4350 50  0001 C CNN
F 3 "~" H 7480 4350 50  0001 C CNN
	1    7480 4350
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5D8A902A
P 7780 4620
F 0 "C4" H 7895 4666 50  0000 L CNN
F 1 "220nF" H 7895 4575 50  0000 L CNN
F 2 "" H 7818 4470 50  0001 C CNN
F 3 "~" H 7780 4620 50  0001 C CNN
	1    7780 4620
	1    0    0    -1  
$EndComp
Wire Wire Line
	7020 4350 7330 4350
Wire Wire Line
	7630 4350 7780 4350
Wire Wire Line
	7780 4350 7780 4470
Wire Wire Line
	7200 4450 7200 4970
$Comp
L power:GND #PWR06
U 1 1 5D8AD61A
P 7780 4980
F 0 "#PWR06" H 7780 4730 50  0001 C CNN
F 1 "GND" H 7785 4807 50  0000 C CNN
F 2 "" H 7780 4980 50  0001 C CNN
F 3 "" H 7780 4980 50  0001 C CNN
	1    7780 4980
	1    0    0    -1  
$EndComp
Wire Wire Line
	7780 4770 7780 4980
Wire Wire Line
	7020 4450 7200 4450
Wire Wire Line
	6270 4450 2920 4450
Wire Wire Line
	2920 4450 2920 3880
Wire Wire Line
	2920 3880 2010 3880
Connection ~ 2010 3880
Wire Wire Line
	2010 3880 2010 4170
$Comp
L Connector:TestPoint TP2
U 1 1 5D8B22C3
P 1630 2700
F 0 "TP2" V 1710 2790 50  0001 C CNN
F 1 "Solar-" V 1630 3020 50  0000 C CNN
F 2 "" H 1830 2700 50  0001 C CNN
F 3 "~" H 1830 2700 50  0001 C CNN
	1    1630 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5D8B2DB5
P 1720 2790
F 0 "#PWR01" H 1720 2540 50  0001 C CNN
F 1 "GND" H 1725 2617 50  0000 C CNN
F 2 "" H 1720 2790 50  0001 C CNN
F 3 "" H 1720 2790 50  0001 C CNN
	1    1720 2790
	1    0    0    -1  
$EndComp
Wire Wire Line
	1630 2700 1720 2700
Wire Wire Line
	1720 2700 1720 2790
$Comp
L Device:C C3
U 1 1 5D8B53DE
P 9640 4450
F 0 "C3" H 9755 4496 50  0000 L CNN
F 1 "220nF" H 9755 4405 50  0000 L CNN
F 2 "" H 9678 4300 50  0001 C CNN
F 3 "~" H 9640 4450 50  0001 C CNN
	1    9640 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5D8B5DDA
P 9640 4990
F 0 "#PWR08" H 9640 4740 50  0001 C CNN
F 1 "GND" H 9645 4817 50  0000 C CNN
F 2 "" H 9640 4990 50  0001 C CNN
F 3 "" H 9640 4990 50  0001 C CNN
	1    9640 4990
	1    0    0    -1  
$EndComp
Connection ~ 9640 4150
Wire Wire Line
	9640 4150 9640 4300
Wire Wire Line
	9640 4600 9640 4720
$Comp
L Connector:TestPoint TP3
U 1 1 5D8BD8B7
P 10320 4150
F 0 "TP3" V 10274 4338 50  0001 L CNN
F 1 "BAT+" V 10320 4338 50  0000 L CNN
F 2 "" H 10520 4150 50  0001 C CNN
F 3 "~" H 10520 4150 50  0001 C CNN
	1    10320 4150
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 5D8BE1C1
P 10320 4720
F 0 "TP4" V 10274 4908 50  0001 L CNN
F 1 "BAT-" V 10320 4908 50  0000 L CNN
F 2 "" H 10520 4720 50  0001 C CNN
F 3 "~" H 10520 4720 50  0001 C CNN
	1    10320 4720
	0    1    1    0   
$EndComp
Wire Wire Line
	9640 4150 10320 4150
Wire Wire Line
	10320 4720 9640 4720
Connection ~ 9640 4720
Wire Wire Line
	9640 4720 9640 4990
$EndSCHEMATC