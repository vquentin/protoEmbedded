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
$Comp
L Device:R_Small R20
U 1 1 5E0AE97B
P 4800 3600
F 0 "R20" V 4900 3600 50  0000 C CNN
F 1 "CFR16-8k2" V 4916 3600 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 4730 3600 50  0001 C CNN
F 3 "~" H 4800 3600 50  0001 C CNN
	1    4800 3600
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:TIP120 Q2
U 1 1 5E0B07A3
P 6200 4550
F 0 "Q2" H 6390 4596 50  0000 L CNN
F 1 "TIP120" H 6390 4505 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6400 4650 50  0001 C CNN
F 3 "http://www.fairchildsemi.com/ds/TI/TIP120.pdf" H 6200 4550 50  0001 C CNN
	1    6200 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 5E0B3D4A
P 5850 4550
F 0 "R9" V 5950 4550 50  0000 C CNN
F 1 "CFR16-100R" V 5966 4550 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 5780 4550 50  0001 C CNN
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
F 0 "Q11" H 6400 3400 50  0000 L CNN
F 1 "2N3906" H 6390 3445 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6400 3500 50  0001 C CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 6200 3400 50  0001 C CNN
	1    6200 3400
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R21
U 1 1 5E0EAF2D
P 5850 3400
F 0 "R21" V 5950 3400 50  0000 C CNN
F 1 "CFR16-2k7" V 5966 3400 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 5780 3400 50  0001 C CNN
F 3 "~" H 5850 3400 50  0001 C CNN
	1    5850 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R22
U 1 1 5E0FEFBE
P 5850 3150
F 0 "R22" V 5950 3150 50  0000 C CNN
F 1 "CFR16-22k" V 5966 3150 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 5780 3150 50  0001 C CNN
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
	6300 3600 6650 3600
$Comp
L Transistor_BJT:2N3904 Q8
U 1 1 5E10C4F3
P 5200 3050
F 0 "Q8" H 5400 3050 50  0000 L CNN
F 1 "2N3904" H 5390 3005 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5400 3150 50  0001 C CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5200 3050 50  0001 C CNN
	1    5200 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R17
U 1 1 5E10C4FD
P 4800 3050
F 0 "R17" V 4900 3050 50  0000 C CNN
F 1 "CFR16-8k2" V 4916 3050 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 4730 3050 50  0001 C CNN
F 3 "~" H 4800 3050 50  0001 C CNN
	1    4800 3050
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:2N3906 Q9
U 1 1 5E10C508
P 6200 2850
F 0 "Q9" H 6400 2850 50  0000 L CNN
F 1 "2N3906" H 6390 2895 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6400 2950 50  0001 C CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 6200 2850 50  0001 C CNN
	1    6200 2850
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R18
U 1 1 5E10C512
P 5850 2850
F 0 "R18" V 5950 2850 50  0000 C CNN
F 1 "CFR16-2k7" V 5966 2850 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 5780 2850 50  0001 C CNN
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
F 0 "R19" V 5950 2600 50  0000 C CNN
F 1 "CFR16-22k" V 5966 2600 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 5780 2600 50  0001 C CNN
F 3 "~" H 5850 2600 50  0001 C CNN
	1    5850 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5700 2600 5700 2850
Connection ~ 6550 2600
Wire Wire Line
	6550 2600 6550 3150
Wire Wire Line
	6550 950  6550 1150
$Comp
L Transistor_BJT:2N3904 Q4
U 1 1 5E13A0BB
P 5150 1650
F 0 "Q4" H 5350 1650 50  0000 L CNN
F 1 "2N3904" H 5340 1605 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5350 1750 50  0001 C CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5150 1650 50  0001 C CNN
	1    5150 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5E13A0C5
P 4800 1650
F 0 "R11" V 4900 1650 50  0000 C CNN
F 1 "CFR16-3k3" V 4916 1650 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 4730 1650 50  0001 C CNN
F 3 "~" H 4800 1650 50  0001 C CNN
	1    4800 1650
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:2N3906 Q5
U 1 1 5E13A0D0
P 6200 1450
F 0 "Q5" H 6400 1450 50  0000 L CNN
F 1 "2N3906" H 6390 1495 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6400 1550 50  0001 C CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 6200 1450 50  0001 C CNN
	1    6200 1450
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R12
U 1 1 5E13A0DA
P 5850 1450
F 0 "R12" V 5950 1450 50  0000 C CNN
F 1 "CFR16-1k0" V 5966 1450 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 5780 1450 50  0001 C CNN
F 3 "~" H 5850 1450 50  0001 C CNN
	1    5850 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R13
U 1 1 5E13A0E5
P 5850 1150
F 0 "R13" V 5950 1150 50  0000 C CNN
F 1 "CFR16-1k2" V 5966 1150 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 5780 1150 50  0001 C CNN
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
F 0 "Q6" H 5350 2500 50  0000 L CNN
F 1 "2N3904" H 5340 2455 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5350 2600 50  0001 C CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5150 2500 50  0001 C CNN
	1    5150 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R14
U 1 1 5E13EC87
P 4800 2500
F 0 "R14" V 4900 2500 50  0000 C CNN
F 1 "CFR16-4k7" V 4916 2500 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 4730 2500 50  0001 C CNN
F 3 "~" H 4800 2500 50  0001 C CNN
	1    4800 2500
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:2N3906 Q7
U 1 1 5E13EC92
P 6200 2300
F 0 "Q7" H 6390 2254 50  0000 L CNN
F 1 "2N3906" H 6390 2345 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6400 2400 50  0001 C CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 6200 2300 50  0001 C CNN
	1    6200 2300
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R15
U 1 1 5E13EC9C
P 5850 2300
F 0 "R15" V 5950 2300 50  0000 C CNN
F 1 "CFR16-1k8" V 5966 2300 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 5780 2300 50  0001 C CNN
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
F 0 "R16" V 5950 2000 50  0000 C CNN
F 1 "CFR16-4k7" V 5966 2000 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 5780 2000 50  0001 C CNN
F 3 "~" H 5850 2000 50  0001 C CNN
	1    5850 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 2100 6300 2000
Wire Wire Line
	5700 2000 5700 2300
Wire Wire Line
	6300 2500 6650 2500
Wire Wire Line
	5250 2700 4950 2700
Wire Wire Line
	4950 2700 4950 3250
Connection ~ 4950 3250
$Comp
L Device:R R7
U 1 1 5E1687C7
P 2950 6600
F 0 "R7" V 2950 6600 50  0000 C CNN
F 1 "CFR16-10k" V 3066 6600 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 2880 6600 50  0001 C CNN
F 3 "~" H 2950 6600 50  0001 C CNN
	1    2950 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5E19AF71
P 1750 6600
F 0 "R4" V 1750 6600 50  0000 C CNN
F 1 "CFR16-10k" V 1866 6600 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 1680 6600 50  0001 C CNN
F 3 "~" H 1750 6600 50  0001 C CNN
	1    1750 6600
	1    0    0    -1  
$EndComp
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
F 0 "R6" V 2350 6600 50  0000 C CNN
F 1 "CFR16-10k" V 2466 6600 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 2280 6600 50  0001 C CNN
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
A2_D6
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
Wire Wire Line
	6300 3900 7000 3900
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
	6850 2850 6850 2950
Wire Wire Line
	7000 3400 6850 3400
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
grey/F4/grey
Text Notes 1750 2400 0    50   ~ 0
(4) Blue
Text Notes 1750 2600 0    50   ~ 0
(2) Black
Text Notes 1400 2350 0    50   ~ 0
blue/F3/purple
Text Notes 1400 2650 0    50   ~ 0
red/F2/black
Text GLabel 1650 2150 2    50   Input ~ 0
A1_A1
Wire Wire Line
	1300 2650 1350 2650
$Comp
L User_library:Adafruit_2719(SPI) U4
U 1 1 5E5A5306
P 7750 8800
F 0 "U4" V 8123 7650 50  0000 C CNN
F 1 "Adafruit_2719(SPI)" V 8214 7650 50  0000 C CNN
F 2 "" H 7750 8800 50  0001 C CNN
F 3 "" H 7750 8800 50  0001 C CNN
	1    7750 8800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 8200 6000 8150
Wire Wire Line
	7400 9100 7250 9100
Wire Wire Line
	7400 9000 7400 8800
Wire Wire Line
	7400 8800 7250 8800
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
F 1 "CFR16-10k" V 1166 4150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 980 4150 50  0001 C CNN
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
A2_D2
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
	5800 5700 5800 5750
$Comp
L Regulator_Switching:LM2596T-ADJ U1
U 1 1 5EA7F715
P 1600 10650
F 0 "U1" H 1600 11017 50  0000 C CNN
F 1 "LM2596T-ADJ" H 1600 10926 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-5_P3.4x3.7mm_StaggerOdd_Lead3.8mm_Vertical" H 1650 10400 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 1600 10650 50  0001 C CNN
	1    1600 10650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C1
U 1 1 5EA898FE
P 600 10750
F 0 "C1" H 600 10850 50  0000 L CNN
F 1 "EEU-FC1E471L" H 691 10705 50  0001 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P2.50mm" H 600 10750 50  0001 C CNN
F 3 "~" H 600 10750 50  0001 C CNN
	1    600  10750
	1    0    0    -1  
$EndComp
Wire Wire Line
	600  10950 850  10950
Connection ~ 1600 10950
$Comp
L Device:C_Small C5
U 1 1 5EAD4776
P 2250 9800
F 0 "C5" V 2350 9800 50  0000 C CNN
F 1 "PHE450MK4470JR05" V 2388 9800 50  0001 C CNN
F 2 "Capacitor_THT:C_Rect_L10.0mm_W4.0mm_P7.50mm_FKS3_FKP3" H 2250 9800 50  0001 C CNN
F 3 "~" H 2250 9800 50  0001 C CNN
	1    2250 9800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R23
U 1 1 5EAD5398
P 1950 9950
F 0 "R23" V 1950 9950 50  0000 C CNN
F 1 "CFR-25JB-1K0" V 2055 9950 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 1950 9950 50  0001 C CNN
F 3 "~" H 1950 9950 50  0001 C CNN
	1    1950 9950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R24
U 1 1 5EAD6951
P 2250 10100
F 0 "R24" V 2250 10100 50  0000 C CNN
F 1 "CFR-25JB-52-4K7, 4.64 k ideally" V 2355 10100 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 2250 10100 50  0001 C CNN
F 3 "~" H 2250 10100 50  0001 C CNN
	1    2250 10100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5EAD6E6E
P 1700 9950
F 0 "#PWR0101" H 1700 9700 50  0001 C CNN
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
L Device:D_Schottky_Small D1
U 1 1 5EB0F7B0
P 2200 10850
F 0 "D1" V 2200 10800 50  0000 R CNN
F 1 "SB560" V 2245 10782 50  0001 R CNN
F 2 "Diode_THT:D_DO-201AD_P15.24mm_Horizontal" V 2200 10850 50  0001 C CNN
F 3 "~" V 2200 10850 50  0001 C CNN
	1    2200 10850
	0    -1   1    0   
$EndComp
Wire Wire Line
	2100 10750 2200 10750
Wire Wire Line
	2200 10950 1600 10950
$Comp
L Device:L_Small L1
U 1 1 5EB23D21
P 2300 10750
F 0 "L1" V 2400 10750 50  0000 C CNN
F 1 "AIAP-03-470K" V 2394 10750 50  0001 C CNN
F 2 "Inductor_THT:L_Axial_L20.3mm_D12.7mm_P25.40mm_Horizontal_Vishay_IHA-201" H 2300 10750 50  0001 C CNN
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
L Device:CP1_Small C7
U 1 1 5EB2E9E9
P 2550 10850
F 0 "C7" H 2600 10850 50  0000 L CNN
F 1 "RL81C101MDN1KX" H 2641 10805 50  0001 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P2.50mm" H 2550 10850 50  0001 C CNN
F 3 "~" H 2550 10850 50  0001 C CNN
	1    2550 10850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 10750 2550 10750
Connection ~ 2400 10750
Wire Wire Line
	2200 10950 2550 10950
Connection ~ 2200 10950
$Comp
L power:+7.5V #PWR0105
U 1 1 5EB58ABE
P 5800 5700
F 0 "#PWR0105" H 5800 5550 50  0001 C CNN
F 1 "+7.5V" H 5815 5873 50  0000 C CNN
F 2 "" H 5800 5700 50  0001 C CNN
F 3 "" H 5800 5700 50  0001 C CNN
	1    5800 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+7.5V #PWR0106
U 1 1 5EB62DBD
P 3300 10750
F 0 "#PWR0106" H 3300 10600 50  0001 C CNN
F 1 "+7.5V" H 3315 10923 50  0000 C CNN
F 2 "" H 3300 10750 50  0001 C CNN
F 3 "" H 3300 10750 50  0001 C CNN
	1    3300 10750
	1    0    0    -1  
$EndComp
Connection ~ 3300 10750
$Comp
L power:+7.5V #PWR0109
U 1 1 5EB833C5
P -1850 4800
F 0 "#PWR0109" H -1850 4650 50  0001 C CNN
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
L power:+BATT #PWR0111
U 1 1 5ECA94E2
P 1050 8450
F 0 "#PWR0111" H 1050 8300 50  0001 C CNN
F 1 "+BATT" H 1065 8623 50  0000 C CNN
F 2 "" H 1050 8450 50  0001 C CNN
F 3 "" H 1050 8450 50  0001 C CNN
	1    1050 8450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 8450 1050 8500
$Comp
L power:-BATT #PWR0114
U 1 1 5ECB5773
P 1050 8850
F 0 "#PWR0114" H 1050 8700 50  0001 C CNN
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
L power:GND #PWR0115
U 1 1 5ECF8DB7
P 2050 9050
F 0 "#PWR0115" H 2050 8800 50  0001 C CNN
F 1 "GND" H 2055 8877 50  0000 C CNN
F 2 "" H 2050 9050 50  0001 C CNN
F 3 "" H 2050 9050 50  0001 C CNN
	1    2050 9050
	1    0    0    -1  
$EndComp
Connection ~ 2050 9050
$Comp
L power:+5V #PWR0116
U 1 1 5ED02F49
P 1750 6400
F 0 "#PWR0116" H 1750 6250 50  0001 C CNN
F 1 "+5V" H 1765 6573 50  0000 C CNN
F 2 "" H 1750 6400 50  0001 C CNN
F 3 "" H 1750 6400 50  0001 C CNN
	1    1750 6400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0117
U 1 1 5ED0C6DA
P 6100 5850
F 0 "#PWR0117" H 6100 5700 50  0001 C CNN
F 1 "+5V" H 6115 6023 50  0000 C CNN
F 2 "" H 6100 5850 50  0001 C CNN
F 3 "" H 6100 5850 50  0001 C CNN
	1    6100 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5850 6100 6050
$Comp
L power:GND #PWR0118
U 1 1 5ED212FB
P 6000 8200
F 0 "#PWR0118" H 6000 7950 50  0001 C CNN
F 1 "GND" H 6005 8027 50  0000 C CNN
F 2 "" H 6000 8200 50  0001 C CNN
F 3 "" H 6000 8200 50  0001 C CNN
	1    6000 8200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5ED21851
P 7400 8800
F 0 "#PWR0119" H 7400 8550 50  0001 C CNN
F 1 "GND" H 7405 8627 50  0000 C CNN
F 2 "" H 7400 8800 50  0001 C CNN
F 3 "" H 7400 8800 50  0001 C CNN
	1    7400 8800
	0    -1   -1   0   
$EndComp
Connection ~ 7400 8800
$Comp
L power:+3V3 #PWR0120
U 1 1 5ED2BB41
P 6000 5750
F 0 "#PWR0120" H 6000 5600 50  0001 C CNN
F 1 "+3V3" H 6015 5923 50  0000 C CNN
F 2 "" H 6000 5750 50  0001 C CNN
F 3 "" H 6000 5750 50  0001 C CNN
	1    6000 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 5750 6000 5900
$Comp
L power:+3V3 #PWR0121
U 1 1 5ED35409
P 7000 9100
F 0 "#PWR0121" H 7000 8950 50  0001 C CNN
F 1 "+3V3" H 7015 9273 50  0000 C CNN
F 2 "" H 7000 9100 50  0001 C CNN
F 3 "" H 7000 9100 50  0001 C CNN
	1    7000 9100
	0    -1   -1   0   
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
L Device:R R1
U 1 1 5EEBA83E
P 1150 5300
F 0 "R1" V 1357 5300 50  0000 C CNN
F 1 "10k" V 1266 5300 50  0000 C CNN
F 2 "" V 1080 5300 50  0001 C CNN
F 3 "~" H 1150 5300 50  0001 C CNN
	1    1150 5300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5EEBA844
P 1300 5050
F 0 "R2" V 1507 5050 50  0000 C CNN
F 1 "4M7, 1%" V 1416 5050 50  0000 C CNN
F 2 "" V 1230 5050 50  0001 C CNN
F 3 "~" H 1300 5050 50  0001 C CNN
	1    1300 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5200 1300 5300
$Comp
L Device:C C4
U 1 1 5EEBA84B
P 1700 5450
F 0 "C4" V 1952 5450 50  0000 C CNN
F 1 "0.1 uF, 100V" V 1861 5450 50  0000 C CNN
F 2 "" H 1738 5300 50  0001 C CNN
F 3 "~" H 1700 5450 50  0001 C CNN
	1    1700 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5EEBA851
P 1300 5450
F 0 "R3" V 1507 5450 50  0000 C CNN
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
L power:GND #PWR0122
U 1 1 5EEBA859
P 1500 5650
F 0 "#PWR0122" H 1500 5400 50  0001 C CNN
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
	6550 3150 6550 3700
Connection ~ 6550 4050
Wire Wire Line
	6550 4050 7000 4050
Wire Wire Line
	6550 4050 6550 4550
Connection ~ 4950 4750
$Comp
L Transistor_BJT:2N3904 Q10
U 1 1 5E0ABF98
P 5200 3600
F 0 "Q10" H 5390 3646 50  0000 L CNN
F 1 "2N3904" H 5390 3555 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5400 3700 50  0001 C CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5200 3600 50  0001 C CNN
	1    5200 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4300 5850 4300
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
	5950 3150 6000 3150
Wire Wire Line
	4950 4750 6300 4750
Wire Wire Line
	4900 3600 5000 3600
Wire Wire Line
	4950 3800 5300 3800
Wire Wire Line
	4650 3600 4700 3600
Wire Wire Line
	6300 3050 6650 3050
Wire Wire Line
	5950 2850 6000 2850
Wire Wire Line
	5750 2850 5700 2850
Connection ~ 5700 2850
Wire Wire Line
	5750 2600 5700 2600
Wire Wire Line
	5950 2600 6000 2600
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
Connection ~ 4950 2700
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
Connection ~ 6300 1150
Wire Wire Line
	6700 1650 6650 1650
Wire Wire Line
	6700 2300 7000 2300
Wire Wire Line
	6700 2300 6700 1650
Wire Wire Line
	6550 2000 6550 2600
Wire Wire Line
	6850 2100 6850 2400
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
Wire Wire Line
	7250 8850 7250 8800
Wire Wire Line
	7250 9050 7250 9100
Connection ~ 7250 9100
Text GLabel 6700 9600 2    50   Output ~ 0
A1_D8
Text GLabel 5350 10200 0    50   Output ~ 0
A1_D11
Text GLabel 6300 10600 2    50   Output ~ 0
A1_D10
Text GLabel 5350 9800 0    50   Output ~ 0
A1_D9
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
Text Notes -2350 5650 2    50   ~ 0
speed
Text GLabel 900  4150 0    50   Output ~ 0
A1_D7
Text Notes 5100 7200 2    50   ~ 0
eco
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
L Device:C_Small C3
U 1 1 5E389EAC
P 1050 10750
F 0 "C3" H 1100 10850 50  0000 C CNN
F 1 "C320C104M5R5TA" V 1188 10750 50  0001 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 1050 10750 50  0001 C CNN
F 3 "~" H 1050 10750 50  0001 C CNN
	1    1050 10750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 10950 1600 10950
$Comp
L Device:C_Small C2
U 1 1 5E3DC369
P 850 10750
F 0 "C2" H 900 10850 50  0000 C CNN
F 1 "FG16X5R1E476MRT06" V 988 10750 50  0001 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 850 10750 50  0001 C CNN
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
L Device:C_Small C8
U 1 1 5E40EDD4
P 3300 10850
F 0 "C8" H 3400 10850 50  0000 C CNN
F 1 "C320C104M5R5TA" V 3438 10850 50  0001 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 3300 10850 50  0001 C CNN
F 3 "~" H 3300 10850 50  0001 C CNN
	1    3300 10850
	1    0    0    -1  
$EndComp
Text Notes -1150 12400 0    50   ~ 0
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
Text Notes -1150 13200 0    50   ~ 0
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
L Device:R R25
U 1 1 5E3DD171
P 2650 6600
F 0 "R25" V 2650 6600 50  0000 C CNN
F 1 "CFR16-10k" V 2766 6600 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 2580 6600 50  0001 C CNN
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
(thermistor)
$Comp
L Device:R_Small R27
U 1 1 5E43CFA1
P 8800 7050
F 0 "R27" V 9007 7050 50  0000 C CNN
F 1 "CFR16-2k7" V 8916 7050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 8730 7050 50  0001 C CNN
F 3 "~" H 8800 7050 50  0001 C CNN
	1    8800 7050
	0    -1   -1   0   
$EndComp
Text GLabel 8550 7050 0    50   Output ~ 0
A1_A0
$Comp
L power:GND #PWR0123
U 1 1 5E44C1CB
P 9000 7050
F 0 "#PWR0123" H 9000 6800 50  0001 C CNN
F 1 "GND" H 9005 6877 50  0000 C CNN
F 2 "" H 9000 7050 50  0001 C CNN
F 3 "" H 9000 7050 50  0001 C CNN
	1    9000 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 7050 9000 7050
$Comp
L Device:Thermistor TH1
U 1 1 5E45B7DF
P 8650 6650
F 0 "TH1" H 8755 6696 50  0000 L CNN
F 1 "Thermistor" H 8755 6605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 8650 6650 50  0001 C CNN
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
L power:+5V #PWR0124
U 1 1 5E493EB9
P 8650 6350
F 0 "#PWR0124" H 8650 6200 50  0001 C CNN
F 1 "+5V" H 8665 6523 50  0000 C CNN
F 2 "" H 8650 6350 50  0001 C CNN
F 3 "" H 8650 6350 50  0001 C CNN
	1    8650 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 6350 8650 6450
Wire Wire Line
	6850 850  6850 1600
Wire Wire Line
	4950 1850 4950 2700
$Comp
L Device:C_Small C9
U 1 1 5E656B36
P 6000 1300
F 0 "C9" H 5950 1250 50  0000 C CNN
F 1 "RDEC71E476MWK1H03B" V 6138 1300 50  0001 C CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W3.8mm_P2.50mm_MKS02_FKP02" H 6000 1300 50  0001 C CNN
F 3 "~" H 6000 1300 50  0001 C CNN
	1    6000 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	6000 1200 6000 1150
Wire Wire Line
	5950 1150 6000 1150
Connection ~ 6000 1150
Wire Wire Line
	6000 1150 6300 1150
Wire Wire Line
	6000 1400 6000 1450
Connection ~ 6000 1450
Wire Wire Line
	7000 4550 6850 4550
Connection ~ 6850 4550
$Comp
L Device:D_Schottky_Small D2
U 1 1 5E119BF7
P 6850 4450
F 0 "D2" V 6850 4550 50  0000 C CNN
F 1 "SB560" H 6850 4575 50  0001 C CNN
F 2 "Diode_THT:D_DO-201AD_P15.24mm_Horizontal" H 6850 4450 50  0001 C CNN
F 3 "~" H 6850 4450 50  0001 C CNN
	1    6850 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 4350 6850 4350
Wire Wire Line
	6850 4350 7000 4350
Connection ~ 6850 4350
$Comp
L Transistor_FET:BUZ11 Q12
U 1 1 5E463B97
P 6200 4100
F 0 "Q12" H 6350 4100 50  0000 L CNN
F 1 "STP36NF06L" H 6406 4055 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6450 4025 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BU/BUZ11.pdf" H 6200 4100 50  0001 L CNN
	1    6200 4100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q3
U 1 1 5E474094
P 5750 4000
F 0 "Q3" H 5850 4000 50  0000 L CNN
F 1 "2N3904" H 5940 3955 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5950 4100 50  0001 C CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5750 4000 50  0001 C CNN
	1    5750 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 4200 5850 4300
Connection ~ 5850 4300
Wire Wire Line
	5850 4300 4950 4300
Wire Wire Line
	5850 3800 6000 3800
Wire Wire Line
	6000 3800 6000 4100
$Comp
L Device:R_Small R26
U 1 1 5E4923E7
P 5950 3700
F 0 "R26" V 6050 3700 50  0000 C CNN
F 1 "CFR16-10k" V 6066 3700 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 5880 3700 50  0001 C CNN
F 3 "~" H 5950 3700 50  0001 C CNN
	1    5950 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6050 3700 6550 3700
Connection ~ 6550 3700
Wire Wire Line
	6550 3700 6550 4050
Wire Wire Line
	5850 3700 5850 3800
Connection ~ 5850 3800
Wire Wire Line
	5300 4000 5250 4000
$Comp
L Device:R_Small R10
U 1 1 5E0F2758
P 5400 4000
F 0 "R10" V 5500 4000 50  0000 C CNN
F 1 "CFR16-1k" V 5516 4000 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 5330 4000 50  0001 C CNN
F 3 "~" H 5400 4000 50  0001 C CNN
	1    5400 4000
	0    -1   -1   0   
$EndComp
Text GLabel 5250 4000 0    50   Output ~ 0
A2_D5
Wire Wire Line
	5500 4000 5550 4000
Wire Wire Line
	6550 4550 6850 4550
$Comp
L Device:CP1_Small C13
U 1 1 5E4E0D76
P 6750 1600
F 0 "C13" V 6850 1600 50  0000 C CNN
F 1 "ECA-1EHG470" V 6887 1600 50  0001 C CNN
F 2 "Capacitor_THT:C_Radial_D5.0mm_H11.0mm_P2.00mm" H 6750 1600 50  0001 C CNN
F 3 "~" H 6750 1600 50  0001 C CNN
	1    6750 1600
	0    -1   -1   0   
$EndComp
Connection ~ 6850 1600
Wire Wire Line
	6850 1600 6850 2100
Wire Wire Line
	6650 1600 6650 1650
Connection ~ 6650 1650
Wire Wire Line
	6650 1650 6300 1650
$Comp
L Device:CP1_Small C14
U 1 1 5E4F1EDD
P 6750 2400
F 0 "C14" V 6800 2500 50  0000 C CNN
F 1 "ECA-1EHG470" V 6887 2400 50  0001 C CNN
F 2 "Capacitor_THT:C_Radial_D5.0mm_H11.0mm_P2.00mm" H 6750 2400 50  0001 C CNN
F 3 "~" H 6750 2400 50  0001 C CNN
	1    6750 2400
	0    -1   -1   0   
$EndComp
Connection ~ 6850 2400
Wire Wire Line
	6850 2400 6850 2850
Wire Wire Line
	6650 2400 6650 2500
Connection ~ 6650 2500
Wire Wire Line
	6650 2500 7000 2500
$Comp
L Device:CP1_Small C15
U 1 1 5E50261D
P 6750 2950
F 0 "C15" V 6850 2950 50  0000 C CNN
F 1 "ECA-1EHG470" V 6887 2950 50  0001 C CNN
F 2 "Capacitor_THT:C_Radial_D5.0mm_H11.0mm_P2.00mm" H 6750 2950 50  0001 C CNN
F 3 "~" H 6750 2950 50  0001 C CNN
	1    6750 2950
	0    -1   -1   0   
$EndComp
Connection ~ 6850 2950
Wire Wire Line
	6850 2950 6850 3400
Wire Wire Line
	6650 2950 6650 3050
Connection ~ 6650 3050
Wire Wire Line
	6650 3050 7000 3050
$Comp
L Device:CP1_Small C16
U 1 1 5E51210D
P 6750 3400
F 0 "C16" V 6850 3400 50  0000 C CNN
F 1 "ECA-1EHG470" V 6887 3400 50  0001 C CNN
F 2 "Capacitor_THT:C_Radial_D5.0mm_H11.0mm_P2.00mm" H 6750 3400 50  0001 C CNN
F 3 "~" H 6750 3400 50  0001 C CNN
	1    6750 3400
	0    -1   -1   0   
$EndComp
Connection ~ 6850 3400
Wire Wire Line
	6650 3400 6650 3600
Connection ~ 6650 3600
Wire Wire Line
	6650 3600 7000 3600
Wire Wire Line
	5950 2000 6000 2000
$Comp
L Device:C_Small C10
U 1 1 5E53417C
P 6000 2150
F 0 "C10" H 5900 2100 50  0000 C CNN
F 1 "RDEC71E476MWK1H03B" V 6138 2150 50  0001 C CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W3.8mm_P2.50mm_MKS02_FKP02" H 6000 2150 50  0001 C CNN
F 3 "~" H 6000 2150 50  0001 C CNN
	1    6000 2150
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C11
U 1 1 5E534BF4
P 6000 2700
F 0 "C11" H 5850 2650 50  0000 C CNN
F 1 "RDEC71E476MWK1H03B" V 6138 2700 50  0001 C CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W3.8mm_P2.50mm_MKS02_FKP02" H 6000 2700 50  0001 C CNN
F 3 "~" H 6000 2700 50  0001 C CNN
	1    6000 2700
	-1   0    0    1   
$EndComp
Connection ~ 6000 2600
Wire Wire Line
	6000 2600 6300 2600
$Comp
L Device:C_Small C12
U 1 1 5E535412
P 6000 3250
F 0 "C12" H 5850 3200 50  0000 C CNN
F 1 "RDEC71E476MWK1H03B" V 6138 3250 50  0001 C CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W3.8mm_P2.50mm_MKS02_FKP02" H 6000 3250 50  0001 C CNN
F 3 "~" H 6000 3250 50  0001 C CNN
	1    6000 3250
	-1   0    0    1   
$EndComp
Connection ~ 6000 3150
Wire Wire Line
	6000 3150 6300 3150
Wire Wire Line
	6000 2050 6000 2000
Connection ~ 6000 2000
Wire Wire Line
	6000 2000 6300 2000
Wire Wire Line
	6000 2250 6000 2300
Connection ~ 6000 2300
Wire Wire Line
	6000 2800 6000 2850
Connection ~ 6000 2850
Wire Wire Line
	6000 3350 6000 3400
Connection ~ 6000 3400
$Comp
L Device:CP1_Small C17
U 1 1 5E576B05
P 7250 8950
F 0 "C17" V 7478 8950 50  0000 C CNN
F 1 "220uF" V 7387 8950 50  0000 C CNN
F 2 "Capacitor_THT:C_Radial_D5.0mm_H11.0mm_P2.00mm" H 7250 8950 50  0001 C CNN
F 3 "~" H 7250 8950 50  0001 C CNN
	1    7250 8950
	-1   0    0    1   
$EndComp
Text Notes 7450 9000 2    50   ~ 0
black
Text Notes 7450 9100 2    50   ~ 0
red
Text Notes 7450 9300 2    50   ~ 0
green
Text Notes 7450 9600 2    50   ~ 0
orange
Text Notes 7450 9700 2    50   ~ 0
yellow
Text Notes 7400 10400 2    50   ~ 0
purple
Text Notes 7400 10500 2    50   ~ 0
blue
$Comp
L Analog_Switch:CD4051B U3
U 1 1 5E57C081
P 6100 9900
F 0 "U3" V 6146 10644 50  0000 L CNN
F 1 "CD4050BE" V 6055 10644 50  0000 L CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 6250 9150 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4052b.pdf" H 6080 10000 50  0001 C CNN
	1    6100 9900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7000 9100 7050 9100
Wire Wire Line
	7150 9500 7150 9300
Wire Wire Line
	7150 9300 7400 9300
Wire Wire Line
	5600 10100 5550 10100
Wire Wire Line
	5550 10100 5550 8700
Wire Wire Line
	7050 8700 7050 9100
Connection ~ 7050 9100
Wire Wire Line
	7050 9100 7250 9100
Wire Wire Line
	7400 9600 7150 9600
Wire Wire Line
	7150 9600 7150 10900
Wire Wire Line
	5550 10900 5550 10300
Wire Wire Line
	5550 10300 5600 10300
Wire Wire Line
	7400 9700 7200 9700
Wire Wire Line
	7200 9700 7200 10950
Wire Wire Line
	5600 10950 5600 10400
$Comp
L power:GND #PWR0125
U 1 1 5E47B91D
P 6100 10750
F 0 "#PWR0125" H 6100 10500 50  0001 C CNN
F 1 "GND" H 6105 10577 50  0000 C CNN
F 2 "" H 6100 10750 50  0001 C CNN
F 3 "" H 6100 10750 50  0001 C CNN
	1    6100 10750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 10750 6100 10600
Wire Wire Line
	7400 10400 7300 10400
Wire Wire Line
	7300 10400 7300 9900
Wire Wire Line
	7400 10500 7250 10500
Wire Wire Line
	7250 10500 7250 11000
Wire Wire Line
	5500 9900 5600 9900
Wire Wire Line
	5500 11000 5500 9900
Text GLabel 6700 9800 2    50   Output ~ 0
A1_D13
Wire Wire Line
	5550 8700 7050 8700
Wire Wire Line
	6600 9500 7150 9500
Wire Wire Line
	6600 9900 7300 9900
Wire Wire Line
	5550 10900 7150 10900
Wire Wire Line
	5600 10950 7200 10950
Wire Wire Line
	5500 11000 7250 11000
Wire Wire Line
	6700 9800 6600 9800
Wire Wire Line
	5350 10200 5600 10200
Wire Wire Line
	6300 10600 6200 10600
Wire Wire Line
	6700 9600 6600 9600
Wire Wire Line
	5350 9800 5600 9800
Text Notes 7550 7200 2    50   ~ 0
brakes
Text Notes 1300 1500 0    50   ~ 0
F2/black
Text Notes 1300 1300 0    50   ~ 0
F5/red
Text Notes 1300 1700 0    50   ~ 0
F1/white
Wire Wire Line
	7200 6200 7200 6650
Wire Wire Line
	7200 6650 7000 6650
Wire Wire Line
	7200 6200 7650 6200
Wire Wire Line
	7650 6300 7000 6300
Wire Wire Line
	7000 6300 7000 6450
Wire Wire Line
	7650 6400 7100 6400
Wire Wire Line
	7100 6400 7100 5900
Wire Wire Line
	7100 5900 6000 5900
Connection ~ 6000 5900
Wire Wire Line
	6000 5900 6000 6050
Wire Wire Line
	7650 6500 7300 6500
Wire Wire Line
	7300 6500 7300 6050
Wire Wire Line
	7300 6050 6100 6050
Connection ~ 6100 6050
Wire Wire Line
	7650 6600 7900 6600
Wire Wire Line
	7900 6600 7900 8150
Wire Wire Line
	7650 6700 7800 6700
Wire Wire Line
	7800 6700 7800 8200
Wire Wire Line
	7800 8200 6000 8200
Connection ~ 6000 8200
Wire Wire Line
	7650 6800 7700 6800
Wire Wire Line
	7700 6800 7700 5750
Connection ~ 5800 5750
Wire Wire Line
	5800 5750 5800 6050
Wire Wire Line
	5800 5750 7700 5750
$Comp
L Connector:Conn_01x06_Male J4
U 1 1 5E5AAD46
P 7950 7250
F 0 "J4" H 8058 7631 50  0000 C CNN
F 1 "Conn_01x06_Male" H 8058 7540 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 7950 7250 50  0001 C CNN
F 3 "~" H 7950 7250 50  0001 C CNN
	1    7950 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 7050 7000 7050
Connection ~ 7000 7050
Wire Wire Line
	7000 7050 6950 7050
Wire Wire Line
	8150 7150 7000 7150
Wire Wire Line
	8150 7250 7000 7250
Wire Wire Line
	8150 7350 7000 7350
Wire Wire Line
	8150 7450 7000 7450
Wire Wire Line
	8150 7550 7000 7550
$Comp
L Connector:Conn_01x10_Male J2
U 1 1 5E63AE84
P 4300 7650
F 0 "J2" H 4408 8231 50  0000 C CNN
F 1 "Conn_01x10_Male" H 4408 8140 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 4300 7650 50  0001 C CNN
F 3 "~" H 4300 7650 50  0001 C CNN
	1    4300 7650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J1
U 1 1 5E64463F
P 4300 6450
F 0 "J1" H 4408 6931 50  0000 C CNN
F 1 "Conn_01x08_Male" H 4408 6840 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 4300 6450 50  0001 C CNN
F 3 "~" H 4300 6450 50  0001 C CNN
	1    4300 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 6150 5100 6150
Wire Wire Line
	4500 6250 5050 6250
Wire Wire Line
	5050 6250 5050 6550
Wire Wire Line
	5050 6550 5400 6550
Wire Wire Line
	4500 6350 5000 6350
Wire Wire Line
	5000 6350 5000 6650
Wire Wire Line
	5000 6650 5400 6650
Wire Wire Line
	4500 6450 4950 6450
Wire Wire Line
	4950 6450 4950 6750
Wire Wire Line
	4950 6750 5400 6750
Wire Wire Line
	4500 6550 4900 6550
Wire Wire Line
	4900 6550 4900 6850
Wire Wire Line
	4900 6850 5400 6850
Wire Wire Line
	4500 6650 4850 6650
Wire Wire Line
	4850 6650 4850 6950
Wire Wire Line
	4850 6950 5400 6950
Wire Wire Line
	4500 6750 4800 6750
Wire Wire Line
	4800 6750 4800 7050
Wire Wire Line
	4800 7050 5400 7050
Wire Wire Line
	4500 6850 4750 6850
Wire Wire Line
	4750 6850 4750 7150
Wire Wire Line
	4750 7150 5400 7150
Wire Wire Line
	6000 8150 7900 8150
Connection ~ 6000 8150
Wire Wire Line
	5100 6150 5100 6450
Wire Wire Line
	5100 6450 5400 6450
$Comp
L Connector:Conn_01x08_Male J3
U 1 1 5E4E755F
P 7450 6400
F 0 "J3" H 7558 6881 50  0000 C CNN
F 1 "Conn_01x08_Male" H 7558 6790 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 7450 6400 50  0001 C CNN
F 3 "~" H 7450 6400 50  0001 C CNN
	1    7450 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 7250 5400 7250
Wire Wire Line
	4500 7350 5400 7350
Wire Wire Line
	4500 7450 5400 7450
Wire Wire Line
	4500 7550 5400 7550
Wire Wire Line
	4500 7650 5400 7650
Wire Wire Line
	4500 7750 5400 7750
Wire Wire Line
	4500 7850 5400 7850
Wire Wire Line
	5400 7850 5400 8150
Wire Wire Line
	5400 8150 5800 8150
Wire Wire Line
	4500 7950 6400 7950
Wire Wire Line
	6400 7950 6400 6850
Wire Wire Line
	6400 6850 7000 6850
Wire Wire Line
	4500 8050 5350 8050
Wire Wire Line
	5350 8050 5350 8450
Wire Wire Line
	5350 8450 7200 8450
Wire Wire Line
	7200 8450 7200 7750
Wire Wire Line
	7200 7750 7000 7750
Wire Wire Line
	4500 8150 5250 8150
Wire Wire Line
	5250 8150 5250 8500
Wire Wire Line
	5250 8500 7000 8500
Wire Wire Line
	7000 8500 7000 7850
Text Notes -2750 5950 0    50   ~ 0
front beam
Text Notes -3200 6050 0    50   ~ 0
license plate and light
Text GLabel -2250 6050 0    50   Output ~ 0
A2_D6
Text GLabel -2250 5950 0    50   Output ~ 0
A2_D5
Text GLabel -2250 5650 0    50   Input ~ 0
A2_D2
Text GLabel -1250 6050 2    50   Input ~ 0
A2_A0
$Comp
L Device:C_Small C6
U 1 1 5E491E51
P 2900 10850
F 0 "C6" H 3000 10850 50  0000 C CNN
F 1 "FG16X5R1E476MRT06" V 3038 10850 50  0001 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 2900 10850 50  0001 C CNN
F 3 "~" H 2900 10850 50  0001 C CNN
	1    2900 10850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 6450 2050 6450
Wire Wire Line
	2050 6450 2350 6450
Connection ~ 2050 6450
$Comp
L Device:R R5
U 1 1 5E18A3DC
P 2050 6600
F 0 "R5" V 2050 6600 50  0000 C CNN
F 1 "CFR16-10k" V 2166 6600 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 1980 6600 50  0001 C CNN
F 3 "~" H 2050 6600 50  0001 C CNN
	1    2050 6600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
