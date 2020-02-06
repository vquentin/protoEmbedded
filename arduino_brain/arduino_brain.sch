EESchema Schematic File Version 4
LIBS:arduino_brain-cache
EELAYER 29 0
EELAYER END
$Descr A3 16535 11693
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
L MCU_Module:Arduino_UNO_R3 A2
U 1 1 5DFDE4CB
P -1750 6050
F 0 "A2" H -1750 7231 50  0000 C CNN
F 1 "Arduino_UNO_R3" H -1750 7140 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H -1600 5000 50  0001 L CNN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H -1950 7100 50  0001 C CNN
	1    -1750 6050
	1    0    0    -1  
$EndComp
Text GLabel -2650 5450 0    50   Input ~ 0
SIM808_D0
Text GLabel -2650 5550 0    50   Input ~ 0
SIM808_D1
Text GLabel -2600 6650 0    50   Input ~ 0
SIM808_D12
Wire Wire Line
	-2650 5450 -2250 5450
Wire Wire Line
	-2650 5550 -2250 5550
NoConn ~ -2400 6650
Text Notes -2200 4550 0    50   ~ 0
For SIM808, VIN spec is 7 V min.
Wire Wire Line
	-1850 4800 -1850 5050
$Comp
L power:GND #PWR0102
U 1 1 5DFE07DB
P -1650 7200
F 0 "#PWR0102" H -1650 6950 50  0001 C CNN
F 1 "GND" H -1645 7027 50  0000 C CNN
F 2 "" H -1650 7200 50  0001 C CNN
F 3 "" H -1650 7200 50  0001 C CNN
	1    -1650 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	-1650 7150 -1650 7200
Text GLabel -2500 6250 0    50   Input ~ 0
BLUEFRUIT_CS
Text GLabel -2500 6150 0    50   Input ~ 0
BLUEFRUIT_IRQ
Text GLabel -2500 5850 0    50   Input ~ 0
BLUEFRUIT_RST
Wire Wire Line
	-2500 5850 -2250 5850
Wire Wire Line
	-2500 6150 -2250 6150
Wire Wire Line
	-2500 6250 -2250 6250
Wire Wire Line
	-2250 6550 -2300 6550
Text GLabel 7000 2100 2    50   Output ~ 0
TAILLIGHT_GND
Text GLabel 7000 2300 2    50   Output ~ 0
TAILLIGHT_BRAKE
Text GLabel 7000 2500 2    50   Output ~ 0
TAILLIGHT_TAILLIGHT
Text Notes 7200 2050 0    50   ~ 0
Green
Text Notes 7150 2450 0    50   ~ 0
Yellow, 0.066 A
Text Notes 7250 2250 0    50   ~ 0
Blue, 0.093 A
Wire Notes Line
	7800 1950 7800 2600
Wire Notes Line
	6950 2600 6950 1950
Text Notes 6950 1950 0    50   ~ 0
Taillight
Wire Notes Line
	6950 1950 7800 1950
Wire Notes Line
	6950 2600 7800 2600
Text GLabel 7000 2850 2    50   Output ~ 0
INDICATOR_R_GND
Text GLabel 7000 3050 2    50   Output ~ 0
INDICATOR_R_+12V
Text Notes 7250 2800 0    50   ~ 0
Black
Text Notes 7150 3000 0    50   ~ 0
Yellow 0.038 A
Wire Notes Line
	6950 2700 6950 3150
Wire Notes Line
	6950 3150 7800 3150
Wire Notes Line
	7800 3150 7800 2700
Wire Notes Line
	7800 2700 6950 2700
Text Notes 6950 2700 0    50   ~ 0
Indicators_right
Text GLabel 7000 3900 2    50   Output ~ 0
BEAM_GND
Text GLabel 7000 4050 2    50   Output ~ 0
BEAM_+12V
Wire Notes Line
	6950 3800 7600 3800
Wire Notes Line
	7600 3800 7600 4150
Wire Notes Line
	7600 4150 6950 4150
Wire Notes Line
	6950 4150 6950 3800
Text Notes 6950 3800 0    50   ~ 0
Low beam - 0.985 A
Text GLabel 7000 4350 2    50   Output ~ 0
HORN_GND
Text GLabel 7000 4550 2    50   Output ~ 0
HORN_+12V
Wire Notes Line
	7600 4650 6950 4650
Wire Notes Line
	6950 4650 6950 4250
Wire Notes Line
	6950 4250 7600 4250
Wire Notes Line
	7600 4250 7600 4650
Text Notes 6950 4250 0    50   ~ 0
Horn
Text GLabel 7000 3400 2    50   Output ~ 0
INDICATOR_L_GND
Text GLabel 7000 3600 2    50   Output ~ 0
INDICATOR_L_+12V
Text Notes 7250 3350 0    50   ~ 0
Black
Text Notes 7150 3550 0    50   ~ 0
Yellow, 0.038 A
Wire Notes Line
	6950 3250 6950 3700
Wire Notes Line
	6950 3700 7800 3700
Wire Notes Line
	7800 3700 7800 3250
Wire Notes Line
	7800 3250 6950 3250
Text Notes 6950 3250 0    50   ~ 0
Indicators_left
Text GLabel 1250 1500 0    50   Output ~ 0
ACCEL_GND
Text GLabel 1250 1300 0    50   Output ~ 10
ACCEL_+5V
Text GLabel 1250 1700 0    50   Output ~ 10
ACCEL_SIGNAL
Text Notes 900  1450 0    50   ~ 0
(2) Black
Text Notes 900  1650 0    50   ~ 0
(3) White
Text Notes 950  1250 0    50   ~ 0
(1) Red
Text Notes 850  1150 0    50   ~ 0
Accelerator
Text GLabel 1300 2650 0    50   Output ~ 0
BRAKE_FR_GND
Text Notes 1050 2100 0    50   ~ 0
Brakes
Text GLabel 1350 6850 0    50   Output ~ 10
COMMODO_LEFT
Text GLabel 1350 7000 0    50   Output ~ 10
COMMODO_RIGHT
Text GLabel 1350 7150 0    50   Output ~ 10
COMMODO_HORN
Text GLabel 1350 7300 0    50   Output ~ 10
COMMODO_ECO
Text GLabel 1350 7450 0    50   Output ~ 0
COMMODO_GND
Text GLabel -2150 8050 2    50   Input ~ 0
BLUEFRUIT_MOSI
Text GLabel -2150 7600 2    50   Input ~ 0
BLUEFRUIT_MISO
Text GLabel -2150 7900 2    50   Input ~ 0
BLUEFRUIT_SCK
Text GLabel -2400 8350 0    50   Input ~ 0
ARDUINO_ICSP_6
Text GLabel -2400 8200 0    50   Input ~ 0
ARDUINO_ICSP_5
Text GLabel -2400 8050 0    50   Input ~ 0
ARDUINO_ICSP_4
Text GLabel -2400 7900 0    50   Input ~ 0
ARDUINO_ICSP_3
Text GLabel -2400 7750 0    50   Input ~ 0
ARDUINO_ICSP_2
Text GLabel -2400 7600 0    50   Input ~ 0
ARDUINO_ICSP_1
Wire Wire Line
	-2400 7900 -2300 7900
Wire Wire Line
	-2400 7600 -2350 7600
Wire Wire Line
	-2400 8050 -2250 8050
Wire Wire Line
	-2600 6650 -2350 6650
Connection ~ -2350 6650
Wire Wire Line
	-2350 6650 -2250 6650
Connection ~ -2350 7600
Wire Wire Line
	-2350 7600 -2150 7600
Wire Wire Line
	-2300 7900 -2300 6550
Connection ~ -2300 7900
Wire Wire Line
	-2300 7900 -2150 7900
Connection ~ -2250 8050
Wire Wire Line
	-2250 8050 -2150 8050
Wire Wire Line
	-2350 6650 -2350 7600
Connection ~ -1650 7200
Wire Wire Line
	-1650 7200 -1650 7300
Wire Wire Line
	-2250 6750 -2250 6850
Connection ~ -2250 6850
Wire Wire Line
	-2250 6850 -2250 8050
Text GLabel 1700 800  2    50   Input ~ 10
MOTOR_CTRL_SWITCH_HI
Text GLabel -950 6750 2    50   Input ~ 0
9DoF_SDA
Text GLabel -950 6850 2    50   Input ~ 0
9DoF_SCL
Wire Wire Line
	-950 6750 -1250 6750
Wire Wire Line
	-950 6850 -1250 6850
Text GLabel -2550 5750 0    50   Input ~ 0
BUZZER+
Wire Wire Line
	-2250 5750 -2550 5750
Text GLabel 1700 1500 2    50   Input ~ 0
CA_ACCEL_GND
Text GLabel 1700 1300 2    50   Input ~ 0
CA_ACCEL_+5V
Text GLabel 1700 1700 2    50   Input ~ 0
CA_ACCEL_SIGNAL
Wire Wire Line
	1250 1500 1700 1500
Wire Wire Line
	1250 1300 1700 1300
Wire Wire Line
	1250 1700 1700 1700
Text GLabel 1750 2650 2    50   Input ~ 0
CA_BRAKES_GND
Text GLabel 1750 2450 2    50   Input ~ 0
CA_BRAKES_HI(4.77V_OPEN__GND_CLOSED_134uA
Text GLabel 1650 2000 2    50   Input ~ 0
MOTOR_CTRL_BRAKES_HI
Text GLabel 1350 3200 2    50   Input ~ 0
CA_SPEED_GND
Text GLabel 1700 950  2    50   Input ~ 0
MOTOR_CTRL_SWITCH_LO
$Comp
L power:+12V #PWR0103
U 1 1 5E08A10C
P 6550 950
F 0 "#PWR0103" H 6550 800 50  0001 C CNN
F 1 "+12V" H 6565 1123 50  0000 C CNN
F 2 "" H 6550 950 50  0001 C CNN
F 3 "" H 6550 950 50  0001 C CNN
	1    6550 950 
	1    0    0    -1  
$EndComp
Wire Notes Line
	1450 7550 600  7550
Wire Notes Line
	600  7550 600  6750
Wire Notes Line
	600  6750 1450 6750
Wire Notes Line
	1450 6750 1450 7550
Text Notes 600  7800 0    50   ~ 0
Comodo\nblue, white, brown soldered together as GND\ngreen cut off
$Comp
L power:GND #PWR0104
U 1 1 5E08D35E
P 4950 4750
F 0 "#PWR0104" H 4950 4500 50  0001 C CNN
F 1 "GND" H 4955 4577 50  0000 C CNN
F 2 "" H 4950 4750 50  0001 C CNN
F 3 "" H 4950 4750 50  0001 C CNN
	1    4950 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 4550 6850 4550
$Comp
L Device:R_Small R20
U 1 1 5E0AE97B
P 4800 3600
F 0 "R20" V 5007 3600 50  0000 C CNN
F 1 "4k7" V 4916 3600 50  0000 C CNN
F 2 "" V 4730 3600 50  0001 C CNN
F 3 "~" H 4800 3600 50  0001 C CNN
	1    4800 3600
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:TIP120 Q2
U 1 1 5E0B07A3
P 6200 4550
F 0 "Q2" H 6390 4596 50  0000 L CNN
F 1 "TIP120" H 6390 4505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6400 4650 50  0001 C CNN
F 3 "http://www.fairchildsemi.com/ds/TI/TIP120.pdf" H 6200 4550 50  0001 C CNN
	1    6200 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 5E0B3D4A
P 5850 4550
F 0 "R9" V 6057 4550 50  0000 C CNN
F 1 "CFR16-3K3" V 5966 4550 50  0000 C CNN
F 2 "" V 5780 4550 50  0001 C CNN
F 3 "~" H 5850 4550 50  0001 C CNN
	1    5850 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5950 4550 6000 4550
Wire Wire Line
	6850 2100 7000 2100
$Comp
L Transistor_BJT:2N3906 Q11
U 1 1 5E0EA248
P 6200 3400
F 0 "Q11" H 6390 3354 50  0000 L CNN
F 1 "2N3906" H 6390 3445 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6400 3500 50  0001 C CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 6200 3400 50  0001 C CNN
	1    6200 3400
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R21
U 1 1 5E0EAF2D
P 5850 3400
F 0 "R21" V 6057 3400 50  0000 C CNN
F 1 "4k7" V 5966 3400 50  0000 C CNN
F 2 "" V 5780 3400 50  0001 C CNN
F 3 "~" H 5850 3400 50  0001 C CNN
	1    5850 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R22
U 1 1 5E0FEFBE
P 5850 3150
F 0 "R22" V 6057 3150 50  0000 C CNN
F 1 "22k" V 5966 3150 50  0000 C CNN
F 2 "" V 5780 3150 50  0001 C CNN
F 3 "~" H 5850 3150 50  0001 C CNN
	1    5850 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 3200 6300 3150
Wire Wire Line
	6300 3150 6550 3150
Connection ~ 6550 3150
Connection ~ 6300 3150
Wire Wire Line
	6300 3600 7000 3600
$Comp
L Transistor_BJT:2N3904 Q8
U 1 1 5E10C4F3
P 5200 3050
F 0 "Q8" H 5390 3096 50  0000 L CNN
F 1 "2N3904" H 5390 3005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5400 3150 50  0001 C CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5200 3050 50  0001 C CNN
	1    5200 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R17
U 1 1 5E10C4FD
P 4800 3050
F 0 "R17" V 5007 3050 50  0000 C CNN
F 1 "4k7" V 4916 3050 50  0000 C CNN
F 2 "" V 4730 3050 50  0001 C CNN
F 3 "~" H 4800 3050 50  0001 C CNN
	1    4800 3050
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:2N3906 Q9
U 1 1 5E10C508
P 6200 2850
F 0 "Q9" H 6390 2804 50  0000 L CNN
F 1 "2N3906" H 6390 2895 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6400 2950 50  0001 C CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 6200 2850 50  0001 C CNN
	1    6200 2850
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R18
U 1 1 5E10C512
P 5850 2850
F 0 "R18" V 6057 2850 50  0000 C CNN
F 1 "4k7" V 5966 2850 50  0000 C CNN
F 2 "" V 5780 2850 50  0001 C CNN
F 3 "~" H 5850 2850 50  0001 C CNN
	1    5850 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5700 2850 5300 2850
$Comp
L Device:R_Small R19
U 1 1 5E10C51D
P 5850 2600
F 0 "R19" V 6057 2600 50  0000 C CNN
F 1 "22k" V 5966 2600 50  0000 C CNN
F 2 "" V 5780 2600 50  0001 C CNN
F 3 "~" H 5850 2600 50  0001 C CNN
	1    5850 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5700 2600 5700 2850
Connection ~ 6550 2600
Wire Wire Line
	6550 2600 6550 3150
$Comp
L Device:D_Small D2
U 1 1 5E119BF7
P 6850 4450
F 0 "D2" H 6850 4666 50  0000 C CNN
F 1 "D" H 6850 4575 50  0000 C CNN
F 2 "" H 6850 4450 50  0001 C CNN
F 3 "~" H 6850 4450 50  0001 C CNN
	1    6850 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6550 950  6550 1150
$Comp
L Transistor_BJT:2N3904 Q4
U 1 1 5E13A0BB
P 5150 1650
F 0 "Q4" H 5340 1696 50  0000 L CNN
F 1 "2N3904" H 5340 1605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5350 1750 50  0001 C CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5150 1650 50  0001 C CNN
	1    5150 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5E13A0C5
P 4800 1650
F 0 "R11" V 5007 1650 50  0000 C CNN
F 1 "CFR16-4k7" V 4916 1650 50  0000 C CNN
F 2 "" V 4730 1650 50  0001 C CNN
F 3 "~" H 4800 1650 50  0001 C CNN
	1    4800 1650
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:2N3906 Q5
U 1 1 5E13A0D0
P 6200 1450
F 0 "Q5" H 6390 1404 50  0000 L CNN
F 1 "2N3906" H 6390 1495 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6400 1550 50  0001 C CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 6200 1450 50  0001 C CNN
	1    6200 1450
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R12
U 1 1 5E13A0DA
P 5850 1450
F 0 "R12" V 6057 1450 50  0000 C CNN
F 1 "CFR16-1k0" V 5966 1450 50  0000 C CNN
F 2 "" V 5780 1450 50  0001 C CNN
F 3 "~" H 5850 1450 50  0001 C CNN
	1    5850 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R13
U 1 1 5E13A0E5
P 5850 1150
F 0 "R13" V 6057 1150 50  0000 C CNN
F 1 "CFR16-4k7" V 5966 1150 50  0000 C CNN
F 2 "" V 5780 1150 50  0001 C CNN
F 3 "~" H 5850 1150 50  0001 C CNN
	1    5850 1150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5700 1150 5700 1450
$Comp
L Transistor_BJT:2N3904 Q6
U 1 1 5E13EC7D
P 5150 2500
F 0 "Q6" H 5340 2546 50  0000 L CNN
F 1 "2N3904" H 5340 2455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5350 2600 50  0001 C CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5150 2500 50  0001 C CNN
	1    5150 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R14
U 1 1 5E13EC87
P 4800 2500
F 0 "R14" V 5007 2500 50  0000 C CNN
F 1 "4k7" V 4916 2500 50  0000 C CNN
F 2 "" V 4730 2500 50  0001 C CNN
F 3 "~" H 4800 2500 50  0001 C CNN
	1    4800 2500
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:2N3906 Q7
U 1 1 5E13EC92
P 6200 2300
F 0 "Q7" H 6390 2254 50  0000 L CNN
F 1 "2N3906" H 6390 2345 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6400 2400 50  0001 C CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 6200 2300 50  0001 C CNN
	1    6200 2300
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R15
U 1 1 5E13EC9C
P 5850 2300
F 0 "R15" V 6057 2300 50  0000 C CNN
F 1 "1k" V 5966 2300 50  0000 C CNN
F 2 "" V 5780 2300 50  0001 C CNN
F 3 "~" H 5850 2300 50  0001 C CNN
	1    5850 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5700 2300 5250 2300
$Comp
L Device:R_Small R16
U 1 1 5E13ECA7
P 5850 2000
F 0 "R16" V 6057 2000 50  0000 C CNN
F 1 "4k7" V 5966 2000 50  0000 C CNN
F 2 "" V 5780 2000 50  0001 C CNN
F 3 "~" H 5850 2000 50  0001 C CNN
	1    5850 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 2100 6300 2000
Wire Wire Line
	5700 2000 5700 2300
Wire Wire Line
	6300 2500 7000 2500
Wire Wire Line
	5250 2700 4950 2700
Wire Wire Line
	4950 2700 4950 3250
Connection ~ 4950 3250
$Comp
L Device:R R7
U 1 1 5E1687C7
P 2950 6600
F 0 "R7" V 3157 6600 50  0000 C CNN
F 1 "10k" V 3066 6600 50  0000 C CNN
F 2 "" V 2880 6600 50  0001 C CNN
F 3 "~" H 2950 6600 50  0001 C CNN
	1    2950 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5E18A3DC
P 2050 6600
F 0 "R5" V 2257 6600 50  0000 C CNN
F 1 "10k" V 2166 6600 50  0000 C CNN
F 2 "" V 1980 6600 50  0001 C CNN
F 3 "~" H 2050 6600 50  0001 C CNN
	1    2050 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 6450 2350 6450
$Comp
L Device:R R4
U 1 1 5E19AF71
P 1750 6600
F 0 "R4" V 1957 6600 50  0000 C CNN
F 1 "10k" V 1866 6600 50  0000 C CNN
F 2 "" V 1680 6600 50  0001 C CNN
F 3 "~" H 1750 6600 50  0001 C CNN
	1    1750 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 6450 2050 6450
Connection ~ 2050 6450
Text Notes 5300 6700 0    50   ~ 0
~
$Comp
L User_library:Arduino_UNO_R3_annot A1
U 1 1 5E167047
P 5900 7050
F 0 "A1" H 5900 8231 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 5900 8140 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 6050 6000 50  0001 L CNN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 5700 8100 50  0001 C CNN
	1    5900 7050
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0107
U 1 1 5E107F0F
P 550 10550
F 0 "#PWR0107" H 550 10400 50  0001 C CNN
F 1 "+12V" H 565 10723 50  0000 C CNN
F 2 "" H 550 10550 50  0001 C CNN
F 3 "" H 550 10550 50  0001 C CNN
	1    550  10550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5E108737
P 1600 10950
F 0 "#PWR0108" H 1600 10700 50  0001 C CNN
F 1 "GND" H 1605 10777 50  0000 C CNN
F 2 "" H 1600 10950 50  0001 C CNN
F 3 "" H 1600 10950 50  0001 C CNN
	1    1600 10950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4550 5700 4550
$Comp
L Device:R R6
U 1 1 5E17B774
P 2350 6600
F 0 "R6" V 2557 6600 50  0000 C CNN
F 1 "10k" V 2466 6600 50  0000 C CNN
F 2 "" V 2280 6600 50  0001 C CNN
F 3 "~" H 2350 6600 50  0001 C CNN
	1    2350 6600
	1    0    0    -1  
$EndComp
Text GLabel 5400 7050 0    50   Output ~ 0
A1_D6
Text GLabel 4650 3050 0    50   Output ~ 0
A1_A2
Text GLabel 5400 6950 0    50   Output ~ 0
A1_D5
Text GLabel 4650 2500 0    50   Output ~ 0
A2_XX
Text GLabel 5400 7350 0    50   Output ~ 0
A1_D9
Text GLabel 4650 3600 0    50   Output ~ 0
A1_A3
$Comp
L power:GND #PWR0110
U 1 1 5E318B50
P 1550 7450
F 0 "#PWR0110" H 1550 7200 50  0001 C CNN
F 1 "GND" H 1555 7277 50  0000 C CNN
F 2 "" H 1550 7450 50  0001 C CNN
F 3 "" H 1550 7450 50  0001 C CNN
	1    1550 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 7450 1550 7450
Text GLabel 5400 7450 0    50   Output ~ 0
A1_D10
Text GLabel 5400 7550 0    50   Output ~ 0
A1_D11
Text GLabel 5700 4550 0    50   Output ~ 0
A1_D3
Text GLabel 5400 6750 0    50   Output ~ 0
A1_D3
Text GLabel 4650 1650 0    50   Output ~ 0
A1_D6
Wire Notes Line
	1750 3800 1750 4250
Text Notes 1350 3150 0    50   ~ 0
(X) Black
Text Notes 1350 3350 0    50   ~ 0
(X) Red
Text GLabel 5700 4100 0    50   Output ~ 0
A2_XX
Wire Wire Line
	6300 3900 7000 3900
$Comp
L Transistor_BJT:TIP120 Q3
U 1 1 5E0E94DF
P 6200 4100
F 0 "Q3" H 6390 4146 50  0000 L CNN
F 1 "TIP120" H 6390 4055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6400 4200 50  0001 C CNN
F 3 "http://www.fairchildsemi.com/ds/TI/TIP120.pdf" H 6200 4100 50  0001 C CNN
	1    6200 4100
	1    0    0    -1  
$EndComp
Connection ~ 6850 2850
Wire Wire Line
	7000 2850 6850 2850
$Comp
L power:GND #PWR0113
U 1 1 5E50ECA0
P 6700 850
F 0 "#PWR0113" H 6700 600 50  0001 C CNN
F 1 "GND" H 6705 677 50  0000 C CNN
F 2 "" H 6700 850 50  0001 C CNN
F 3 "" H 6700 850 50  0001 C CNN
	1    6700 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2850 6850 3400
Wire Wire Line
	7000 3400 6850 3400
Wire Wire Line
	6850 850  6850 2100
Connection ~ 6850 2100
Wire Wire Line
	6300 2650 6300 2600
Connection ~ 6300 2600
Wire Wire Line
	6300 2600 6550 2600
Text Notes 550  700  0    50   ~ 0
TODO: \n- build test circuitry w/ Darlington, n-FET and evaluate (T, current drawn, Voltage drop, efficiency).\n- wire the start/stop
Text Notes 1700 1450 0    50   ~ 0
(2) Black
Text Notes 1700 1250 0    50   ~ 0
(1) Red
Text Notes 1700 1650 0    50   ~ 0
(3) Green
Text Notes 1650 1150 0    50   ~ 0
JST-3-F black
Text Notes 1500 7150 0    50   ~ 0
yellow
Text Notes 1500 6850 0    50   ~ 0
red
Text Notes 1500 7000 0    50   ~ 0
black
Text Notes 1500 7300 0    50   ~ 0
grey
Text Notes 1750 2400 0    50   ~ 0
(4) Blue
Text Notes 1750 2600 0    50   ~ 0
(2) Black
Text Notes 1400 2350 0    50   ~ 0
blue
Text Notes 1400 2650 0    50   ~ 0
red
Text GLabel 1650 2150 2    50   Input ~ 0
A1_D12
Wire Wire Line
	1300 2650 1350 2650
$Comp
L User_library:Adafruit_2719(SPI) U?
U 1 1 5E5A5306
P 7400 10400
F 0 "U?" V 7773 9250 50  0000 C CNN
F 1 "Adafruit_2719(SPI)" V 7864 9250 50  0000 C CNN
F 2 "" H 7400 10400 50  0001 C CNN
F 3 "" H 7400 10400 50  0001 C CNN
	1    7400 10400
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 8200 6000 8150
$Comp
L Device:C_Small C?
U 1 1 5E5D48A8
P 7250 9900
F 0 "C?" V 7479 9900 50  0000 C CNN
F 1 "220uF" V 7388 9900 50  0000 C CNN
F 2 "" H 7288 9750 50  0001 C CNN
F 3 "~" H 7250 9900 50  0001 C CNN
	1    7250 9900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7100 10050 7100 9900
Wire Wire Line
	7200 10050 7400 10050
Wire Wire Line
	7400 10050 7400 9900
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5E482565
P 1400 4150
F 0 "Q1" H 1590 4196 50  0000 L CNN
F 1 "2N3904" H 1590 4105 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1600 4250 50  0001 C CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 1400 4150 50  0001 C CNN
	1    1400 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5E464CCA
P 1050 4150
F 0 "R8" V 1257 4150 50  0000 C CNN
F 1 "10k" V 1166 4150 50  0000 C CNN
F 2 "" V 980 4150 50  0001 C CNN
F 3 "~" H 1050 4150 50  0001 C CNN
	1    1050 4150
	0    -1   -1   0   
$EndComp
Text Notes 1750 3800 0    50   ~ 0
JST-3-F white
Text Notes 1800 4100 0    50   ~ 0
(2) Black
Text Notes 1800 3900 0    50   ~ 0
(3) White
Wire Notes Line
	1750 4250 2600 4250
Wire Notes Line
	2600 3800 1750 3800
Wire Notes Line
	2600 4250 2600 3800
Text GLabel 1800 4150 2    50   Input ~ 0
CA_ECO_MODE_GND
Text GLabel 1800 3950 2    50   Input ~ 10
CA_ECO_MODE_HI
Text GLabel 5400 7650 0    50   Output ~ 0
A1_D12
Wire Notes Line
	1650 1150 1650 1800
Wire Notes Line
	1650 1800 2450 1800
Wire Notes Line
	2450 1800 2450 1150
Wire Notes Line
	2450 1150 1650 1150
Wire Notes Line
	600  1150 600  1800
Wire Notes Line
	600  1800 1300 1800
Wire Notes Line
	1300 1800 1300 1150
Wire Notes Line
	1300 1150 600  1150
Text GLabel 1300 2500 0    50   Output ~ 0
BRAKE_REAR_GND
Text GLabel 1300 2200 0    50   Output ~ 10
BRAKE_REAR_HI
Text GLabel 1350 3400 2    50   Input ~ 0
CA_SPEED_HI(4.73V_OPEN__GND_CLOSED_134uA)
Wire Wire Line
	1150 3400 1250 3400
Wire Wire Line
	1150 3200 1350 3200
Text Notes 650  3050 0    50   ~ 0
Speed magnet
Wire Notes Line
	1200 3050 1200 3500
Wire Notes Line
	650  3050 1200 3050
Wire Notes Line
	650  3500 650  3050
Wire Notes Line
	1200 3500 650  3500
Text GLabel 1150 3400 0    50   Output ~ 10
SPD_HI
Text GLabel 1150 3200 0    50   Output ~ 0
SPD_LO
Wire Wire Line
	1300 2200 1350 2200
Wire Wire Line
	1350 2200 1350 2350
Wire Wire Line
	1350 2450 1650 2450
Wire Wire Line
	1300 2500 1350 2500
Wire Wire Line
	1350 2650 1750 2650
Wire Wire Line
	1350 2350 1300 2350
Text GLabel 1300 2350 0    50   Output ~ 10
BRAKE_FR_HI
Wire Notes Line
	550  2100 1400 2100
Wire Notes Line
	1400 2100 1400 2750
Wire Notes Line
	1400 2750 550  2750
Wire Notes Line
	550  2750 550  2100
Connection ~ 1650 2450
Wire Wire Line
	1650 2450 1750 2450
Text Notes 1700 2300 0    50   ~ 0
JST-4-F black
Wire Wire Line
	1650 2000 1650 2450
Wire Notes Line
	1700 2300 1700 2750
Wire Notes Line
	1700 2750 3650 2750
Wire Notes Line
	3650 2750 3650 2300
Wire Notes Line
	3650 2300 1700 2300
Text Notes 1300 3050 0    50   ~ 0
JST-2-M black
Wire Notes Line
	1300 3050 1300 3500
Wire Notes Line
	1300 3500 3250 3500
Wire Notes Line
	3250 3500 3250 3050
Wire Notes Line
	3250 3050 1300 3050
Connection ~ 1350 2650
Wire Wire Line
	1350 2500 1350 2650
Wire Wire Line
	1350 2450 1350 2350
Connection ~ 1350 2350
Text Notes 800  3150 0    50   ~ 0
(X) XXX
Text Notes 800  3350 0    50   ~ 0
(X) XXX
Text Notes 1650 1950 0    50   ~ 0
(2?) Blue
Text GLabel 1300 3600 2    50   Input ~ 0
A2_D5
Wire Wire Line
	1250 3400 1250 3600
Wire Wire Line
	1250 3600 1300 3600
Connection ~ 1250 3400
Wire Wire Line
	1250 3400 1350 3400
Wire Wire Line
	1500 3950 1800 3950
Wire Wire Line
	1800 4150 1650 4150
Wire Wire Line
	1650 4150 1650 4350
Wire Wire Line
	1650 4350 1500 4350
Wire Wire Line
	5800 5700 5800 6050
$Comp
L Regulator_Switching:LM2596T-ADJ U?
U 1 1 5EA7F715
P 1600 10650
F 0 "U?" H 1600 11017 50  0000 C CNN
F 1 "LM2596T-ADJ" H 1600 10926 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-5_P3.4x3.7mm_StaggerOdd_Lead3.8mm_Vertical" H 1650 10400 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 1600 10650 50  0001 C CNN
	1    1600 10650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 5EA898FE
P 600 10750
F 0 "C?" H 691 10796 50  0000 L CNN
F 1 "EEU-FC1E471L" H 691 10705 50  0000 L CNN
F 2 "" H 600 10750 50  0001 C CNN
F 3 "~" H 600 10750 50  0001 C CNN
	1    600  10750
	1    0    0    -1  
$EndComp
Wire Wire Line
	600  10950 850  10950
Connection ~ 1600 10950
$Comp
L Device:C_Small C?
U 1 1 5EAD4776
P 2250 9800
F 0 "C?" V 2479 9800 50  0000 C CNN
F 1 "PHE450MK4470JR05" V 2388 9800 50  0000 C CNN
F 2 "" H 2250 9800 50  0001 C CNN
F 3 "~" H 2250 9800 50  0001 C CNN
	1    2250 9800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5EAD5398
P 1950 9950
F 0 "R?" V 2146 9950 50  0000 C CNN
F 1 "CFR-25JB-1K0" V 2055 9950 50  0000 C CNN
F 2 "" H 1950 9950 50  0001 C CNN
F 3 "~" H 1950 9950 50  0001 C CNN
	1    1950 9950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5EAD6951
P 2250 10100
F 0 "R?" V 2446 10100 50  0000 C CNN
F 1 "CFR-25JB-52-4K7, 4.64 k ideally" V 2355 10100 50  0000 C CNN
F 2 "" H 2250 10100 50  0001 C CNN
F 3 "~" H 2250 10100 50  0001 C CNN
	1    2250 10100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EAD6E6E
P 1700 9950
F 0 "#PWR?" H 1700 9700 50  0001 C CNN
F 1 "GND" H 1705 9777 50  0000 C CNN
F 2 "" H 1700 9950 50  0001 C CNN
F 3 "" H 1700 9950 50  0001 C CNN
	1    1700 9950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 9950 1850 9950
Wire Wire Line
	2050 9950 2100 9950
Wire Wire Line
	2100 9950 2100 9800
Wire Wire Line
	2100 9800 2150 9800
Wire Wire Line
	2100 9950 2100 10100
Wire Wire Line
	2100 10100 2150 10100
Connection ~ 2100 9950
Connection ~ 2100 10100
Wire Wire Line
	2100 10100 2100 10550
Wire Wire Line
	2350 9800 2350 9950
$Comp
L Device:D_Schottky_Small D?
U 1 1 5EB0F7B0
P 2200 10850
F 0 "D?" V 2154 10782 50  0000 R CNN
F 1 "SB560" V 2245 10782 50  0000 R CNN
F 2 "" V 2200 10850 50  0001 C CNN
F 3 "~" V 2200 10850 50  0001 C CNN
	1    2200 10850
	0    -1   1    0   
$EndComp
Wire Wire Line
	2100 10750 2200 10750
Wire Wire Line
	2200 10950 1600 10950
$Comp
L Device:L_Small L?
U 1 1 5EB23D21
P 2300 10750
F 0 "L?" V 2485 10750 50  0000 C CNN
F 1 "AIAP-03-470K" V 2394 10750 50  0000 C CNN
F 2 "" H 2300 10750 50  0001 C CNN
F 3 "~" H 2300 10750 50  0001 C CNN
	1    2300 10750
	0    -1   -1   0   
$EndComp
Connection ~ 2200 10750
Wire Wire Line
	2400 10750 2400 9950
Wire Wire Line
	2400 9950 2350 9950
Connection ~ 2350 9950
Wire Wire Line
	2350 9950 2350 10100
$Comp
L Device:CP1_Small C?
U 1 1 5EB2E9E9
P 2900 10850
F 0 "C?" H 2991 10896 50  0000 L CNN
F 1 "RL81C101MDN1KX" H 2991 10805 50  0000 L CNN
F 2 "" H 2900 10850 50  0001 C CNN
F 3 "~" H 2900 10850 50  0001 C CNN
	1    2900 10850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 10750 2550 10750
Connection ~ 2400 10750
Wire Wire Line
	2200 10950 2550 10950
Connection ~ 2200 10950
$Comp
L power:+7.5V #PWR?
U 1 1 5EB58ABE
P 5800 5700
F 0 "#PWR?" H 5800 5550 50  0001 C CNN
F 1 "+7.5V" H 5815 5873 50  0000 C CNN
F 2 "" H 5800 5700 50  0001 C CNN
F 3 "" H 5800 5700 50  0001 C CNN
	1    5800 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+7.5V #PWR?
U 1 1 5EB62DBD
P 3300 10750
F 0 "#PWR?" H 3300 10600 50  0001 C CNN
F 1 "+7.5V" H 3315 10923 50  0000 C CNN
F 2 "" H 3300 10750 50  0001 C CNN
F 3 "" H 3300 10750 50  0001 C CNN
	1    3300 10750
	1    0    0    -1  
$EndComp
Connection ~ 3300 10750
$Comp
L power:+7.5V #PWR?
U 1 1 5EB833C5
P -1850 4800
F 0 "#PWR?" H -1850 4650 50  0001 C CNN
F 1 "+7.5V" H -1835 4973 50  0000 C CNN
F 2 "" H -1850 4800 50  0001 C CNN
F 3 "" H -1850 4800 50  0001 C CNN
	1    -1850 4800
	1    0    0    -1  
$EndComp
Text GLabel 5400 6650 0    50   Output ~ 0
A1_D2
Text GLabel 3050 6850 2    50   Output ~ 0
A1_D0
Text GLabel 3050 7000 2    50   Output ~ 0
A1_D1
Text GLabel 5400 6850 0    50   Output ~ 0
A1_D4
Text GLabel 3050 7150 2    50   Output ~ 0
A1_D2
Text GLabel 5400 7150 0    50   Output ~ 0
A1_D7
Text GLabel 3050 7300 2    50   Output ~ 0
A1_D4
Text GLabel 5400 7250 0    50   Output ~ 0
A1_D8
Wire Wire Line
	2200 8500 2050 8500
$Comp
L power:+12V #PWR0112
U 1 1 5E4F3D35
P 2200 8500
F 0 "#PWR0112" H 2200 8350 50  0001 C CNN
F 1 "+12V" H 2215 8673 50  0000 C CNN
F 2 "" H 2200 8500 50  0001 C CNN
F 3 "" H 2200 8500 50  0001 C CNN
	1    2200 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 9050 2050 8900
Wire Wire Line
	1050 9050 2050 9050
Wire Wire Line
	1050 8900 1050 9050
$Comp
L Regulator_Switching:CRE1S2412SC U2
U 1 1 5E4CA4B9
P 1550 8700
F 0 "U2" H 1550 9167 50  0000 C CNN
F 1 "CRE1S2412SC" H 1550 9076 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_muRata_CRE1xxxxxxSC_THT" H 1550 8300 50  0001 C CNN
F 3 "http://power.murata.com/datasheet?/data/power/ncl/kdc_cre1.pdf" H 1550 8200 50  0001 C CNN
	1    1550 8700
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 5ECA94E2
P 1050 8450
F 0 "#PWR?" H 1050 8300 50  0001 C CNN
F 1 "+BATT" H 1065 8623 50  0000 C CNN
F 2 "" H 1050 8450 50  0001 C CNN
F 3 "" H 1050 8450 50  0001 C CNN
	1    1050 8450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 8450 1050 8500
$Comp
L power:-BATT #PWR?
U 1 1 5ECB5773
P 1050 8850
F 0 "#PWR?" H 1050 8700 50  0001 C CNN
F 1 "-BATT" H 1065 9023 50  0000 C CNN
F 2 "" H 1050 8850 50  0001 C CNN
F 3 "" H 1050 8850 50  0001 C CNN
	1    1050 8850
	1    0    0    -1  
$EndComp
Text GLabel 7000 7050 2    50   Output ~ 0
A1_A0
Wire Wire Line
	1050 8850 1050 8900
Connection ~ 1050 8900
$Comp
L power:GND #PWR?
U 1 1 5ECF8DB7
P 2050 9050
F 0 "#PWR?" H 2050 8800 50  0001 C CNN
F 1 "GND" H 2055 8877 50  0000 C CNN
F 2 "" H 2050 9050 50  0001 C CNN
F 3 "" H 2050 9050 50  0001 C CNN
	1    2050 9050
	1    0    0    -1  
$EndComp
Connection ~ 2050 9050
$Comp
L power:+5V #PWR?
U 1 1 5ED02F49
P 1750 6400
F 0 "#PWR?" H 1750 6250 50  0001 C CNN
F 1 "+5V" H 1765 6573 50  0000 C CNN
F 2 "" H 1750 6400 50  0001 C CNN
F 3 "" H 1750 6400 50  0001 C CNN
	1    1750 6400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5ED0C6DA
P 6100 5850
F 0 "#PWR?" H 6100 5700 50  0001 C CNN
F 1 "+5V" H 6115 6023 50  0000 C CNN
F 2 "" H 6100 5850 50  0001 C CNN
F 3 "" H 6100 5850 50  0001 C CNN
	1    6100 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5850 6100 6050
$Comp
L power:GND #PWR?
U 1 1 5ED212FB
P 6000 8200
F 0 "#PWR?" H 6000 7950 50  0001 C CNN
F 1 "GND" H 6005 8027 50  0000 C CNN
F 2 "" H 6000 8200 50  0001 C CNN
F 3 "" H 6000 8200 50  0001 C CNN
	1    6000 8200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ED21851
P 7400 10050
F 0 "#PWR?" H 7400 9800 50  0001 C CNN
F 1 "GND" H 7405 9877 50  0000 C CNN
F 2 "" H 7400 10050 50  0001 C CNN
F 3 "" H 7400 10050 50  0001 C CNN
	1    7400 10050
	1    0    0    -1  
$EndComp
Connection ~ 7400 10050
$Comp
L power:+3V3 #PWR?
U 1 1 5ED2BB41
P 6000 5750
F 0 "#PWR?" H 6000 5600 50  0001 C CNN
F 1 "+3V3" H 6015 5923 50  0000 C CNN
F 2 "" H 6000 5750 50  0001 C CNN
F 3 "" H 6000 5750 50  0001 C CNN
	1    6000 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 5750 6000 6050
$Comp
L power:+3V3 #PWR?
U 1 1 5ED35409
P 7100 9650
F 0 "#PWR?" H 7100 9500 50  0001 C CNN
F 1 "+3V3" H 7115 9823 50  0000 C CNN
F 2 "" H 7100 9650 50  0001 C CNN
F 3 "" H 7100 9650 50  0001 C CNN
	1    7100 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 6850 1750 6850
Wire Wire Line
	1350 7000 2050 7000
Wire Wire Line
	1350 7150 2350 7150
Wire Wire Line
	1750 6450 1750 6400
Connection ~ 1750 6450
Wire Wire Line
	1750 6750 1750 6850
$Comp
L Device:R R?
U 1 1 5EEBA83E
P 1150 5300
F 0 "R?" V 1357 5300 50  0000 C CNN
F 1 "10k" V 1266 5300 50  0000 C CNN
F 2 "" V 1080 5300 50  0001 C CNN
F 3 "~" H 1150 5300 50  0001 C CNN
	1    1150 5300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EEBA844
P 1300 5050
F 0 "R?" V 1507 5050 50  0000 C CNN
F 1 "4M7, 1%" V 1416 5050 50  0000 C CNN
F 2 "CFR-25JB-52-22K" V 1230 5050 50  0001 C CNN
F 3 "~" H 1300 5050 50  0001 C CNN
	1    1300 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5200 1300 5300
$Comp
L Device:C C?
U 1 1 5EEBA84B
P 1700 5450
F 0 "C?" V 1952 5450 50  0000 C CNN
F 1 "0.1 uF, 100V" V 1861 5450 50  0000 C CNN
F 2 "" H 1738 5300 50  0001 C CNN
F 3 "~" H 1700 5450 50  0001 C CNN
	1    1700 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EEBA851
P 1300 5450
F 0 "R?" V 1507 5450 50  0000 C CNN
F 1 "390k, 1%" V 1416 5450 50  0000 C CNN
F 2 "" V 1230 5450 50  0001 C CNN
F 3 "~" H 1300 5450 50  0001 C CNN
	1    1300 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 4800 1300 4900
Text GLabel 1000 5300 0    50   Input ~ 0
A2_A0
$Comp
L power:GND #PWR?
U 1 1 5EEBA859
P 1500 5650
F 0 "#PWR?" H 1500 5400 50  0001 C CNN
F 1 "GND" H 1505 5477 50  0000 C CNN
F 2 "" H 1500 5650 50  0001 C CNN
F 3 "" H 1500 5650 50  0001 C CNN
	1    1500 5650
	1    0    0    -1  
$EndComp
Text GLabel 1300 4800 2    50   Input ~ 0
CA_V+
Connection ~ 1300 5300
Wire Wire Line
	1300 5600 1500 5600
Wire Wire Line
	1300 5300 1700 5300
Wire Wire Line
	1500 5650 1500 5600
Connection ~ 1500 5600
Wire Wire Line
	1500 5600 1700 5600
Text GLabel 7000 7450 2    50   Output ~ 0
A1_A4
Text GLabel 7000 7550 2    50   Output ~ 0
A1_A5
Text GLabel -1100 6450 2    50   Output ~ 0
A1_A4
Text GLabel -1100 6550 2    50   Output ~ 0
A1_A5
Text GLabel 5400 7750 0    50   Output ~ 0
A1_D13
Wire Wire Line
	6550 3150 6550 4050
Connection ~ 6550 4050
Wire Wire Line
	6550 4050 7000 4050
Wire Wire Line
	6550 4050 6550 4550
Wire Wire Line
	6300 4350 6850 4350
Connection ~ 6850 4350
Wire Wire Line
	6850 4350 7000 4350
Connection ~ 6850 4550
Wire Wire Line
	6850 4550 6550 4550
Connection ~ 4950 4750
$Comp
L Transistor_BJT:2N3904 Q10
U 1 1 5E0ABF98
P 5200 3600
F 0 "Q10" H 5390 3646 50  0000 L CNN
F 1 "2N3904" H 5390 3555 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5400 3700 50  0001 C CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5200 3600 50  0001 C CNN
	1    5200 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R10
U 1 1 5E0F2758
P 5850 4100
F 0 "R10" V 6057 4100 50  0000 C CNN
F 1 "3.3k" V 5966 4100 50  0000 C CNN
F 2 "" V 5780 4100 50  0001 C CNN
F 3 "~" H 5850 4100 50  0001 C CNN
	1    5850 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 4100 5950 4100
Wire Wire Line
	5750 4100 5700 4100
Wire Wire Line
	6300 4300 4950 4300
Connection ~ 4950 4300
Wire Wire Line
	4950 4300 4950 4750
Wire Wire Line
	6700 850  6850 850 
Wire Wire Line
	5950 3400 6000 3400
Wire Wire Line
	5750 3400 5700 3400
Wire Wire Line
	5700 3400 5300 3400
Connection ~ 5700 3400
Wire Wire Line
	5700 3150 5700 3400
Wire Wire Line
	5750 3150 5700 3150
Wire Wire Line
	5950 3150 6300 3150
Wire Wire Line
	4950 4750 6300 4750
Wire Wire Line
	4900 3600 5000 3600
Wire Wire Line
	4950 3800 5300 3800
Wire Wire Line
	4650 3600 4700 3600
Wire Wire Line
	6300 3050 7000 3050
Wire Wire Line
	5950 2850 6000 2850
Wire Wire Line
	5750 2850 5700 2850
Connection ~ 5700 2850
Wire Wire Line
	5750 2600 5700 2600
Wire Wire Line
	5950 2600 6300 2600
Wire Wire Line
	4950 3800 4950 4300
Wire Wire Line
	4950 3250 4950 3800
Connection ~ 4950 3800
Wire Wire Line
	5300 3250 4950 3250
Wire Wire Line
	4900 3050 5000 3050
Wire Wire Line
	4650 3050 4700 3050
Wire Wire Line
	5950 2300 6000 2300
Wire Wire Line
	5700 2300 5750 2300
Connection ~ 5700 2300
Wire Wire Line
	5750 2000 5700 2000
Wire Wire Line
	5950 2000 6300 2000
Wire Wire Line
	6300 2000 6550 2000
Connection ~ 6300 2000
Connection ~ 6550 2000
Wire Wire Line
	4900 2500 4950 2500
Wire Wire Line
	4650 2500 4700 2500
Wire Wire Line
	4700 1650 4650 1650
Wire Wire Line
	4900 1650 4950 1650
Wire Wire Line
	5250 1850 4950 1850
Wire Wire Line
	4950 1850 4950 2500
Connection ~ 4950 2700
Connection ~ 4950 2500
Wire Wire Line
	5250 1450 5700 1450
Wire Wire Line
	5750 1450 5700 1450
Wire Wire Line
	5750 1150 5700 1150
Connection ~ 5700 1450
Wire Wire Line
	6000 1450 5950 1450
Wire Wire Line
	6300 1250 6300 1150
Wire Wire Line
	6300 1150 6550 1150
Connection ~ 6550 1150
Wire Wire Line
	6550 1150 6550 2000
Wire Wire Line
	6300 1150 5950 1150
Connection ~ 6300 1150
Wire Wire Line
	6700 1650 6300 1650
Wire Wire Line
	6700 2300 7000 2300
Wire Wire Line
	6700 2300 6700 1650
Wire Wire Line
	6550 2000 6550 2600
Wire Wire Line
	6850 2100 6850 2850
Wire Wire Line
	4950 2500 4950 2700
Text GLabel 7000 7150 2    50   Output ~ 0
A1_A1
Text GLabel 7000 7250 2    50   Output ~ 0
A1_A2
Text GLabel 7000 7350 2    50   Output ~ 0
A1_A3
Wire Wire Line
	-1250 6450 -1100 6450
Wire Wire Line
	-1250 6550 -1100 6550
Text Notes 5100 6800 2    50   ~ 0
horn
Wire Notes Line
	6950 9400 5550 9400
Wire Notes Line
	5550 9400 5550 9100
Wire Notes Line
	5550 9100 6950 9100
Wire Notes Line
	6950 9100 6950 9400
Text Notes 6650 9300 2    50   ~ 0
To low-level coupler
Wire Wire Line
	7350 9900 7400 9900
Wire Wire Line
	7150 9900 7100 9900
Connection ~ 7100 9900
Wire Wire Line
	7100 9900 7100 9650
Text GLabel 6900 9000 1    50   Output ~ 0
A1_D8
Wire Wire Line
	6600 10050 6600 9000
Text GLabel 6600 9000 1    50   Output ~ 0
A1_D13
Text GLabel 6500 9000 1    50   Output ~ 0
A1_D11
Wire Wire Line
	6500 10050 6500 9000
Text GLabel 5800 9000 1    50   Output ~ 0
A1_D10
Wire Wire Line
	5800 10050 5800 9000
Wire Wire Line
	6900 9000 6900 10050
Text GLabel 5700 9000 1    50   Output ~ 0
A1_D9
Wire Wire Line
	5700 9000 5700 10050
Text Notes 5100 7300 2    50   ~ 0
Screen
Text Notes 5100 7400 2    50   ~ 0
Screen
Text Notes 5050 7500 2    50   ~ 0
Screen
Text Notes 5050 7600 2    50   ~ 0
Screen
Text Notes 5050 7800 2    50   ~ 0
Screen
Text Notes -550 6050 2    50   ~ 0
battery
Text GLabel 5400 6550 0    50   Output ~ 0
A1_D1
Text GLabel 5400 6450 0    50   Output ~ 0
A1_D0
Text Notes 5100 6500 2    50   ~ 0
commodo
Text Notes 5100 6600 2    50   ~ 0
commodo
Text Notes 5100 6700 2    50   ~ 0
commodo
Text Notes 5100 6900 2    50   ~ 0
commodo
Text Notes 5050 7700 2    50   ~ 0
brakes
Text Notes -2350 5950 2    50   ~ 0
speed
Text GLabel 900  4150 0    50   Output ~ 0
A1_D7
Text Notes 5100 7200 2    50   ~ 0
eco
Text Notes 7800 7850 2    50   ~ 0
shunt/Other Arduino
Text Notes 8050 7600 2    50   ~ 0
shunt/Other Arduino
Text Notes -1800 4250 2    50   ~ 0
beam
Text Notes 5100 7100 2    50   ~ 0
brake
Text Notes 7400 7400 2    50   ~ 0
left
Text Notes 7450 7300 2    50   ~ 0
right
Text Notes 8050 7500 2    50   ~ 0
shunt/Other Arduino
Text Notes -1750 4350 2    50   ~ 0
taillight
$Comp
L Device:C_Small C?
U 1 1 5E389EAC
P 1050 10750
F 0 "C?" V 1279 10750 50  0000 C CNN
F 1 "C320C104M5R5TA" V 1188 10750 50  0000 C CNN
F 2 "" H 1050 10750 50  0001 C CNN
F 3 "~" H 1050 10750 50  0001 C CNN
	1    1050 10750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 10950 1600 10950
$Comp
L Device:C_Small C?
U 1 1 5E3DC369
P 850 10750
F 0 "C?" V 1079 10750 50  0000 C CNN
F 1 "FG16X5R1E476MRT06" V 988 10750 50  0000 C CNN
F 2 "" H 850 10750 50  0001 C CNN
F 3 "~" H 850 10750 50  0001 C CNN
	1    850  10750
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  10650 850  10550
Connection ~ 850  10550
Wire Wire Line
	850  10850 850  10950
Connection ~ 850  10950
Wire Wire Line
	850  10950 1050 10950
Wire Wire Line
	550  10550 600  10550
Connection ~ 600  10550
Wire Wire Line
	600  10550 850  10550
$Comp
L Device:C_Small C?
U 1 1 5E40EDD4
P 3300 10850
F 0 "C?" V 3529 10850 50  0000 C CNN
F 1 "C320C104M5R5TA" V 3438 10850 50  0000 C CNN
F 2 "" H 3300 10850 50  0001 C CNN
F 3 "~" H 3300 10850 50  0001 C CNN
	1    3300 10850
	1    0    0    -1  
$EndComp
Text Notes 700  9900 0    50   ~ 0
TODO buck convertor FB loop\norder 4.64kO 1% R\norder 820 pF COG\norder input/output MLCC, polymer Al better for the buck here\norder better solenoid
Connection ~ 1050 10950
Wire Wire Line
	1050 10850 1050 10950
Wire Wire Line
	850  10550 1050 10550
Wire Wire Line
	1050 10650 1050 10550
Connection ~ 1050 10550
Wire Wire Line
	1050 10550 1100 10550
$Comp
L Device:C_Small C?
U 1 1 5E491E51
P 2550 10850
F 0 "C?" V 2779 10850 50  0000 C CNN
F 1 "FG16X5R1E476MRT06" V 2688 10850 50  0000 C CNN
F 2 "" H 2550 10850 50  0001 C CNN
F 3 "~" H 2550 10850 50  0001 C CNN
	1    2550 10850
	1    0    0    -1  
$EndComp
Connection ~ 2550 10750
Connection ~ 2550 10950
Connection ~ 2900 10750
Wire Wire Line
	2900 10750 3300 10750
Connection ~ 2900 10950
Wire Wire Line
	2900 10950 3300 10950
Wire Wire Line
	2550 10750 2900 10750
Wire Wire Line
	2550 10950 2900 10950
Wire Wire Line
	600  10850 600  10950
Wire Wire Line
	600  10650 600  10550
Text Notes -1350 11950 0    50   ~ 0
12 to 7 V buck converter measurements of consumption / temperature:\n1. load = 5100 Ohm: U_out = 7V, I_out,calc = 1.4 mA, U_in = 12V, I_in = 8 mA ==> efficicency 10 %, P_dissipated = 86.4 mW, DT_meas = 1.1 degC, DT_theo = 4.3 degC\n2. load = Arduino Uno R3, U_out = 7V, I_out_meas = 50 mA, U_in = 12V, I_in = 45 mA ==> efficiency 65%, P_dissipated = 189 mW, DT_meas = 3.6 degC, DT_theo = 9.45 degC\n3. load = Arduino Uno R3 w/ BLE and SIM808 Shield (off): U_out = 7V, I_out_meas = 57 mA, U_in = 12V, I_in = 50 mA ==> efficiency 67%, P_dissipated = 198 mW\n4. load = Arduino Uno R3 w/ BLE and SIM808 Shield (on): U_out = 7V, I_out_meas = 70 mA, U_in = 12V, I_in = 55 mA ==> efficiency 74 %, P_dissipated = 172 mW, DT_meas = 4 degC
Text Notes 7750 4600 0    50   ~ 0
TIP120:\nDT_meas = 15.74 - 12.5 = 3.2 degC\nDU_horn = ? V (multimeter not able to read -> going to 1 when applying load). DU_CE = 0.7 V\nI_in_meas@12 V = ~1 A (oscillating fast)
Text Notes 8050 3700 0    50   ~ 0
TODO: measure for light beam, check that it will not over-heat.
Text Notes 7750 4100 0    50   ~ 0
TIP120:\nDT_meas = xx - yy = zz degC\nDU_horn = ? V (multimeter not able to read -> going to 1 when applying load)\nI_in_meas@12 V = ~1 A (oscillating fast)
Text Notes 4750 7000 0    50   ~ 0
soft horn
$Comp
L Device:R R?
U 1 1 5E3DD171
P 2650 6600
F 0 "R?" V 2857 6600 50  0000 C CNN
F 1 "10k" V 2766 6600 50  0000 C CNN
F 2 "" V 2580 6600 50  0001 C CNN
F 3 "~" H 2650 6600 50  0001 C CNN
	1    2650 6600
	1    0    0    -1  
$EndComp
Connection ~ 2650 7300
Wire Wire Line
	1350 7300 2650 7300
Wire Wire Line
	2650 7300 3050 7300
Wire Wire Line
	2650 6750 2650 7300
Wire Wire Line
	2050 6750 2050 7000
Wire Wire Line
	2350 6750 2350 7150
Wire Wire Line
	3050 6850 1750 6850
Connection ~ 1750 6850
Wire Wire Line
	3050 7000 2050 7000
Connection ~ 2050 7000
Wire Wire Line
	3050 7150 2350 7150
Connection ~ 2350 7150
Text GLabel 3050 7800 2    50   Output ~ 0
A1_D5
Text GLabel 1550 7800 0    50   Output ~ 10
COMMODO_SOFT_HORN
Wire Wire Line
	1550 7800 2950 7800
Wire Wire Line
	2350 6450 2650 6450
Connection ~ 2350 6450
Connection ~ 2650 6450
Wire Wire Line
	2650 6450 2950 6450
Wire Wire Line
	2950 6750 2950 7800
Connection ~ 2950 7800
Wire Wire Line
	2950 7800 3050 7800
Text Notes 7950 2300 0    50   ~ 0
V_brake = 11.78 V —> P_dis = 0.22*0.1 = 22 mW —> DT_theo = 3.5 degC
Text Notes 7300 7100 0    50   ~ 0
thermistor
$Comp
L Device:R_Small R?
U 1 1 5E43CFA1
P 8800 7050
F 0 "R?" V 9007 7050 50  0000 C CNN
F 1 "2k7" V 8916 7050 50  0000 C CNN
F 2 "" V 8730 7050 50  0001 C CNN
F 3 "~" H 8800 7050 50  0001 C CNN
	1    8800 7050
	0    -1   -1   0   
$EndComp
Text GLabel 8550 7050 0    50   Output ~ 0
A1_A0
$Comp
L power:GND #PWR?
U 1 1 5E44C1CB
P 9000 7050
F 0 "#PWR?" H 9000 6800 50  0001 C CNN
F 1 "GND" H 9005 6877 50  0000 C CNN
F 2 "" H 9000 7050 50  0001 C CNN
F 3 "" H 9000 7050 50  0001 C CNN
	1    9000 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 7050 9000 7050
$Comp
L Device:Thermistor TH?
U 1 1 5E45B7DF
P 8650 6650
F 0 "TH?" H 8755 6696 50  0000 L CNN
F 1 "Thermistor" H 8755 6605 50  0000 L CNN
F 2 "" H 8650 6650 50  0001 C CNN
F 3 "~" H 8650 6650 50  0001 C CNN
	1    8650 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 7050 8650 7050
Wire Wire Line
	8650 6850 8650 7050
Connection ~ 8650 7050
Wire Wire Line
	8650 7050 8700 7050
$Comp
L power:+5V #PWR?
U 1 1 5E493EB9
P 8650 6350
F 0 "#PWR?" H 8650 6200 50  0001 C CNN
F 1 "+5V" H 8665 6523 50  0000 C CNN
F 2 "" H 8650 6350 50  0001 C CNN
F 3 "" H 8650 6350 50  0001 C CNN
	1    8650 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 6350 8650 6450
$EndSCHEMATC
