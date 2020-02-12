EESchema Schematic File Version 4
LIBS:Troubleshooting_LED not off-cache
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
Text GLabel 5950 1950 2    50   Output ~ 0
TAILLIGHT_GND
Text GLabel 5950 2150 2    50   Output ~ 0
TAILLIGHT_BRAKE
Text Notes 6150 1900 0    50   ~ 0
Green
Text Notes 6200 2100 0    50   ~ 0
Blue, 0.093 A
Wire Notes Line
	5900 2250 5900 1800
Text Notes 5900 1800 0    50   ~ 0
Taillight
Wire Notes Line
	5900 1800 6750 1800
Wire Notes Line
	5900 2250 6750 2250
Text GLabel 5950 2600 2    50   Output ~ 0
HORN_GND
Text GLabel 5950 2800 2    50   Output ~ 0
HORN_+12V
Wire Notes Line
	6550 2900 5900 2900
Wire Notes Line
	5900 2900 5900 2500
Wire Notes Line
	5900 2500 6550 2500
Wire Notes Line
	6550 2500 6550 2900
Text Notes 5900 2500 0    50   ~ 0
Horn
$Comp
L power:+12V #PWR?
U 1 1 5E4D063B
P 5500 1450
F 0 "#PWR?" H 5500 1300 50  0001 C CNN
F 1 "+12V" H 5515 1623 50  0000 C CNN
F 2 "" H 5500 1450 50  0001 C CNN
F 3 "" H 5500 1450 50  0001 C CNN
	1    5500 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E4D0641
P 3900 3100
F 0 "#PWR?" H 3900 2850 50  0001 C CNN
F 1 "GND" H 3905 2927 50  0000 C CNN
F 2 "" H 3900 3100 50  0001 C CNN
F 3 "" H 3900 3100 50  0001 C CNN
	1    3900 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2800 5800 2800
$Comp
L Transistor_BJT:TIP120 Q?
U 1 1 5E4D064E
P 5150 2800
F 0 "Q?" H 5340 2846 50  0000 L CNN
F 1 "TIP120" H 5340 2755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5350 2900 50  0001 C CNN
F 3 "http://www.fairchildsemi.com/ds/TI/TIP120.pdf" H 5150 2800 50  0001 C CNN
	1    5150 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5E4D0654
P 4800 2800
F 0 "R?" V 5007 2800 50  0000 C CNN
F 1 "CFR16-3K3" V 4916 2800 50  0000 C CNN
F 2 "" V 4730 2800 50  0001 C CNN
F 3 "~" H 4800 2800 50  0001 C CNN
	1    4800 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 2800 4950 2800
Wire Wire Line
	5800 1950 5950 1950
$Comp
L Device:D_Small D?
U 1 1 5E4D0695
P 5800 2700
F 0 "D?" H 5800 2916 50  0000 C CNN
F 1 "D" H 5800 2825 50  0000 C CNN
F 2 "" H 5800 2700 50  0001 C CNN
F 3 "~" H 5800 2700 50  0001 C CNN
	1    5800 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 1450 5500 1650
$Comp
L Transistor_BJT:2N3904 Q?
U 1 1 5E4D069C
P 3800 2150
F 0 "Q?" H 3990 2196 50  0000 L CNN
F 1 "2N3904" H 3990 2105 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4000 2250 50  0001 C CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 3800 2150 50  0001 C CNN
	1    3800 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5E4D06A2
P 3450 2150
F 0 "R?" V 3657 2150 50  0000 C CNN
F 1 "CFR16-3k3" V 3566 2150 50  0000 C CNN
F 2 "" V 3380 2150 50  0001 C CNN
F 3 "~" H 3450 2150 50  0001 C CNN
	1    3450 2150
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 5E4D06A8
P 5150 1950
F 0 "Q?" H 5340 1904 50  0000 L CNN
F 1 "2N3906" H 5340 1995 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5350 2050 50  0001 C CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 5150 1950 50  0001 C CNN
	1    5150 1950
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5E4D06AE
P 4800 1950
F 0 "R?" V 5007 1950 50  0000 C CNN
F 1 "CFR16-1k0" V 4916 1950 50  0000 C CNN
F 2 "" V 4730 1950 50  0001 C CNN
F 3 "~" H 4800 1950 50  0001 C CNN
	1    4800 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5E4D06B4
P 4800 1650
F 0 "R?" V 5007 1650 50  0000 C CNN
F 1 "CFR16-1k2" V 4916 1650 50  0000 C CNN
F 2 "" V 4730 1650 50  0001 C CNN
F 3 "~" H 4800 1650 50  0001 C CNN
	1    4800 1650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 1650 4650 1950
Wire Wire Line
	4700 2800 4650 2800
Text GLabel 4650 2800 0    50   Output ~ 0
0-5V_LOGIC_1
Text GLabel 3300 2150 0    50   Output ~ 0
0-5V_LOGIC_2
$Comp
L power:GND #PWR?
U 1 1 5E4D06F0
P 5650 1350
F 0 "#PWR?" H 5650 1100 50  0001 C CNN
F 1 "GND" H 5655 1177 50  0000 C CNN
F 2 "" H 5650 1350 50  0001 C CNN
F 3 "" H 5650 1350 50  0001 C CNN
	1    5650 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1350 5800 1950
Connection ~ 5800 2600
Wire Wire Line
	5800 2600 5950 2600
Connection ~ 5800 2800
Wire Wire Line
	5650 1350 5800 1350
Wire Wire Line
	3900 3000 5250 3000
Wire Wire Line
	3350 2150 3300 2150
Wire Wire Line
	3550 2150 3600 2150
Wire Wire Line
	3900 1950 4650 1950
Wire Wire Line
	4700 1950 4650 1950
Wire Wire Line
	4700 1650 4650 1650
Wire Wire Line
	4950 1950 4900 1950
Wire Wire Line
	5250 1750 5250 1650
Wire Wire Line
	5250 1650 5500 1650
Wire Wire Line
	5250 1650 4900 1650
Connection ~ 5250 1650
Text Notes 7250 2800 0    50   ~ 0
TIP120:\nDT_meas = 15.74 - 12.5 = 3.2 degC\nDU_horn = ? V (multimeter not able to read -> going to 1 when applying load). DU_CE = 0.7 V\nI_in_meas@12 V = ~1 A (oscillating fast)
Text Notes 7250 2150 0    50   ~ 0
V_brake = 11.78 V —> P_dis = 0.22*0.1 = 22 mW —> DT_theo = 3.5 degC
Wire Wire Line
	5250 2600 5800 2600
Wire Wire Line
	5500 2800 5800 2800
Connection ~ 5500 1650
Wire Wire Line
	3900 2350 3900 3000
Wire Notes Line
	6750 1800 6750 2250
Wire Wire Line
	5250 2150 5950 2150
Connection ~ 4650 1950
Connection ~ 3900 3000
Wire Wire Line
	3900 3000 3900 3100
Wire Wire Line
	5500 1650 5500 2800
$EndSCHEMATC
