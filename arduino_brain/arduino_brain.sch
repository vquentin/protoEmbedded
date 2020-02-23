EESchema Schematic File Version 4
LIBS:arduino_brain-cache
EELAYER 29 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 1 1
Title "Arduino Brain for Yoda Prototype"
Date "2020-02-20"
Rev "2"
Comp "YodaCity SRL"
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
Text GLabel 1250 1350 0    50   Output ~ 0
ACCEL_GND
Text GLabel 1250 1150 0    50   Output ~ 10
ACCEL_+5V
Text GLabel 1250 1550 0    50   Output ~ 10
ACCEL_SIGNAL
Text Notes 900  1300 0    50   ~ 0
(2) Black
Text Notes 900  1500 0    50   ~ 0
(3) White
Text Notes 950  1100 0    50   ~ 0
(1) Red
Text Notes 850  1000 0    50   ~ 0
Accelerator
Text GLabel 1300 2500 0    50   Output ~ 0
BRAKE_FR_GND
Text Notes 1050 1950 0    50   ~ 0
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
	-2600 6650 -2500 6650
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
Text GLabel -1650 2350 2    50   Input ~ 10
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
Text GLabel 1700 1350 2    50   Input ~ 0
CA_ACCEL_GND
Text GLabel 1700 1150 2    50   Input ~ 0
CA_ACCEL_+5V
Text GLabel 1700 1550 2    50   Input ~ 0
CA_ACCEL_SIGNAL
Wire Wire Line
	1250 1350 1700 1350
Wire Wire Line
	1250 1150 1700 1150
Wire Wire Line
	1250 1550 1700 1550
Text GLabel 1750 2500 2    50   Input ~ 0
CA_BRAKES_GND
Text GLabel 1750 2300 2    50   Input ~ 0
CA_BRAKES_HI(4.77V_OPEN__GND_CLOSED_134uA
Text GLabel 1650 1850 2    50   Input ~ 0
MOTOR_CTRL_BRAKES_HI
Text GLabel 1350 3050 2    50   Input ~ 0
CA_SPEED_GND
Text GLabel -1750 3350 2    50   Input ~ 0
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
F 1 "CFR16-150R" V 5966 4550 50  0001 C CNN
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
Text Notes 4850 6400 0    50   ~ 0
~
$Comp
L User_library:Arduino_UNO_R3_annot A1
U 1 1 5E167047
P 5450 6750
F 0 "A1" H 5450 7931 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 5450 7840 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 5600 5700 50  0001 L CNN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 5250 7800 50  0001 C CNN
	1    5450 6750
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0107
U 1 1 5E107F0F
P 4700 9300
F 0 "#PWR0107" H 4700 9150 50  0001 C CNN
F 1 "+12V" H 4715 9473 50  0000 C CNN
F 2 "" H 4700 9300 50  0001 C CNN
F 3 "" H 4700 9300 50  0001 C CNN
	1    4700 9300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5E108737
P 5750 9700
F 0 "#PWR0108" H 5750 9450 50  0001 C CNN
F 1 "GND" H 5755 9527 50  0000 C CNN
F 2 "" H 5750 9700 50  0001 C CNN
F 3 "" H 5750 9700 50  0001 C CNN
	1    5750 9700
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
Text GLabel 4950 6750 0    50   Output ~ 0
A1_D6
Text GLabel 4650 3050 0    50   Output ~ 0
A1_D1
Text GLabel 4950 6650 0    50   Input ~ 0
A1_D5
Text GLabel 4650 2500 0    50   Output ~ 0
A2_D6
Text GLabel 4950 7050 0    50   Output ~ 0
A1_D9
Text GLabel 4650 3600 0    50   Output ~ 0
A1_D0
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
Text GLabel 4950 7150 0    50   Output ~ 0
A1_D10
Text GLabel 4950 7250 0    50   Output ~ 0
A1_D11
Text GLabel 5700 4550 0    50   Output ~ 0
A1_D3
Text GLabel 4950 6450 0    50   Output ~ 0
A1_D3
Text GLabel 4650 1650 0    50   Output ~ 0
A1_D6
Wire Notes Line
	1750 3650 1750 4100
Text Notes 1350 3000 0    50   ~ 0
(X) Black
Text Notes 1350 3200 0    50   ~ 0
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
Text Notes 1700 1300 0    50   ~ 0
(2) Black
Text Notes 1700 1100 0    50   ~ 0
(1) Red
Text Notes 1700 1500 0    50   ~ 0
(3) Green
Text Notes 1650 1000 0    50   ~ 0
JST-3-F black
Text Notes 1500 7150 0    50   ~ 0
yellow
Text Notes 1500 6850 0    50   ~ 0
red
Text Notes 1500 7000 0    50   ~ 0
black
Text Notes 1500 7300 0    50   ~ 0
grey/F4/grey
Text Notes 1750 2250 0    50   ~ 0
(4) Blue
Text Notes 1750 2450 0    50   ~ 0
(2) Black
Text Notes 1400 2200 0    50   ~ 0
blue/F3/purple
Text Notes 1400 2500 0    50   ~ 0
red/F2/black
Text GLabel 1650 2000 2    50   Input ~ 0
A1_A1
Wire Wire Line
	1300 2500 1350 2500
$Comp
L User_library:Adafruit_2719(SPI) U4
U 1 1 5E5A5306
P 3150 8900
F 0 "U4" V 3500 8250 50  0000 C CNN
F 1 "Adafruit_2719(SPI)" V 3600 8250 50  0000 C CNN
F 2 "" H 3150 8900 50  0001 C CNN
F 3 "" H 3150 8900 50  0001 C CNN
	1    3150 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 7900 5550 7850
Wire Wire Line
	2800 9200 2650 9200
Wire Wire Line
	2800 9100 2800 8900
Wire Wire Line
	2800 8900 2650 8900
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5E482565
P 1400 4000
F 0 "Q1" H 1590 4046 50  0000 L CNN
F 1 "2N3904" H 1590 3955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1600 4100 50  0001 C CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 1400 4000 50  0001 C CNN
	1    1400 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5E464CCA
P 1050 4000
F 0 "R8" V 1257 4000 50  0000 C CNN
F 1 "CFR16-10k" V 1166 4000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 980 4000 50  0001 C CNN
F 3 "~" H 1050 4000 50  0001 C CNN
	1    1050 4000
	0    -1   -1   0   
$EndComp
Text Notes 1750 3650 0    50   ~ 0
JST-3-F white
Text Notes 1800 3950 0    50   ~ 0
(2) Black
Text Notes 1800 3750 0    50   ~ 0
(3) White
Wire Notes Line
	1750 4100 2600 4100
Wire Notes Line
	2600 3650 1750 3650
Wire Notes Line
	2600 4100 2600 3650
Text GLabel 1800 4000 2    50   Input ~ 0
CA_ECO_MODE_GND
Text GLabel 1800 3800 2    50   Input ~ 10
CA_ECO_MODE_HI
Text GLabel 4950 7350 0    50   Output ~ 0
A1_D12
Wire Notes Line
	1650 1000 1650 1650
Wire Notes Line
	1650 1650 2450 1650
Wire Notes Line
	2450 1650 2450 1000
Wire Notes Line
	2450 1000 1650 1000
Wire Notes Line
	600  1000 600  1650
Wire Notes Line
	600  1650 1300 1650
Wire Notes Line
	1300 1650 1300 1000
Wire Notes Line
	1300 1000 600  1000
Text GLabel 1300 2350 0    50   Output ~ 0
BRAKE_REAR_GND
Text GLabel 1300 2050 0    50   Output ~ 10
BRAKE_REAR_HI
Text GLabel 1350 3250 2    50   Input ~ 0
CA_SPEED_HI(4.73V_OPEN__GND_CLOSED_134uA)
Wire Wire Line
	1150 3250 1250 3250
Wire Wire Line
	1150 3050 1350 3050
Text Notes 650  2900 0    50   ~ 0
Speed magnet
Wire Notes Line
	1200 2900 1200 3350
Wire Notes Line
	650  2900 1200 2900
Wire Notes Line
	650  3350 650  2900
Wire Notes Line
	1200 3350 650  3350
Text GLabel 1150 3250 0    50   Output ~ 10
SPD_HI
Text GLabel 1150 3050 0    50   Output ~ 0
SPD_LO
Wire Wire Line
	1300 2050 1350 2050
Wire Wire Line
	1350 2050 1350 2200
Wire Wire Line
	1350 2300 1650 2300
Wire Wire Line
	1300 2350 1350 2350
Wire Wire Line
	1350 2500 1750 2500
Wire Wire Line
	1350 2200 1300 2200
Text GLabel 1300 2200 0    50   Output ~ 10
BRAKE_FR_HI
Wire Notes Line
	550  1950 1400 1950
Wire Notes Line
	1400 1950 1400 2600
Wire Notes Line
	1400 2600 550  2600
Wire Notes Line
	550  2600 550  1950
Connection ~ 1650 2300
Wire Wire Line
	1650 2300 1750 2300
Text Notes 1700 2150 0    50   ~ 0
JST-4-F black
Wire Wire Line
	1650 1850 1650 2300
Wire Notes Line
	1700 2150 1700 2600
Wire Notes Line
	1700 2600 3650 2600
Wire Notes Line
	3650 2600 3650 2150
Wire Notes Line
	3650 2150 1700 2150
Text Notes 1300 2900 0    50   ~ 0
JST-2-M black
Wire Notes Line
	1300 2900 1300 3350
Wire Notes Line
	1300 3350 3250 3350
Wire Notes Line
	3250 3350 3250 2900
Wire Notes Line
	3250 2900 1300 2900
Connection ~ 1350 2500
Wire Wire Line
	1350 2350 1350 2500
Wire Wire Line
	1350 2300 1350 2200
Connection ~ 1350 2200
Text Notes 800  3000 0    50   ~ 0
(X) XXX
Text Notes 800  3200 0    50   ~ 0
(X) XXX
Text Notes 1650 1800 0    50   ~ 0
(2?) Blue
Text GLabel 1300 3450 2    50   Input ~ 0
A2_D2
Wire Wire Line
	1250 3250 1250 3450
Wire Wire Line
	1250 3450 1300 3450
Connection ~ 1250 3250
Wire Wire Line
	1250 3250 1350 3250
Wire Wire Line
	1500 3800 1800 3800
Wire Wire Line
	1800 4000 1650 4000
Wire Wire Line
	1650 4000 1650 4200
Wire Wire Line
	1650 4200 1500 4200
Wire Wire Line
	5350 5400 5350 5450
$Comp
L Regulator_Switching:LM2596T-ADJ U1
U 1 1 5EA7F715
P 5750 9400
F 0 "U1" H 5750 9767 50  0000 C CNN
F 1 "LM2596T-ADJ" H 5750 9676 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-5_P3.4x3.7mm_StaggerOdd_Lead3.8mm_Vertical" H 5800 9150 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 5750 9400 50  0001 C CNN
	1    5750 9400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C1
U 1 1 5EA898FE
P 4750 9500
F 0 "C1" H 4750 9600 50  0000 L CNN
F 1 "EEU-FC1E471L" H 4841 9455 50  0001 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P2.50mm" H 4750 9500 50  0001 C CNN
F 3 "~" H 4750 9500 50  0001 C CNN
	1    4750 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 9700 5000 9700
Connection ~ 5750 9700
$Comp
L Device:C_Small C5
U 1 1 5EAD4776
P 6400 8550
F 0 "C5" V 6500 8550 50  0000 C CNN
F 1 "PHE450MK4470JR05" V 6538 8550 50  0001 C CNN
F 2 "Capacitor_THT:C_Rect_L10.0mm_W4.0mm_P7.50mm_FKS3_FKP3" H 6400 8550 50  0001 C CNN
F 3 "~" H 6400 8550 50  0001 C CNN
	1    6400 8550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R23
U 1 1 5EAD5398
P 6100 8700
F 0 "R23" V 6100 8700 50  0000 C CNN
F 1 "CFR-25JB-1K0" V 6205 8700 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 6100 8700 50  0001 C CNN
F 3 "~" H 6100 8700 50  0001 C CNN
	1    6100 8700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R24
U 1 1 5EAD6951
P 6400 8850
F 0 "R24" V 6400 8850 50  0000 C CNN
F 1 "CFR-25JB-52-4K7, 4.64 k ideally" V 6505 8850 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 6400 8850 50  0001 C CNN
F 3 "~" H 6400 8850 50  0001 C CNN
	1    6400 8850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5EAD6E6E
P 5850 8700
F 0 "#PWR0101" H 5850 8450 50  0001 C CNN
F 1 "GND" H 5855 8527 50  0000 C CNN
F 2 "" H 5850 8700 50  0001 C CNN
F 3 "" H 5850 8700 50  0001 C CNN
	1    5850 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 8700 6000 8700
Wire Wire Line
	6200 8700 6250 8700
Wire Wire Line
	6250 8700 6250 8550
Wire Wire Line
	6250 8550 6300 8550
Wire Wire Line
	6250 8700 6250 8850
Wire Wire Line
	6250 8850 6300 8850
Connection ~ 6250 8700
Connection ~ 6250 8850
Wire Wire Line
	6250 8850 6250 9300
Wire Wire Line
	6500 8550 6500 8700
$Comp
L Device:D_Schottky_Small D1
U 1 1 5EB0F7B0
P 6350 9600
F 0 "D1" V 6350 9550 50  0000 R CNN
F 1 "SB560" V 6395 9532 50  0001 R CNN
F 2 "Diode_THT:D_DO-201AD_P15.24mm_Horizontal" V 6350 9600 50  0001 C CNN
F 3 "~" V 6350 9600 50  0001 C CNN
	1    6350 9600
	0    -1   1    0   
$EndComp
Wire Wire Line
	6250 9500 6350 9500
Wire Wire Line
	6350 9700 5750 9700
$Comp
L Device:L_Small L1
U 1 1 5EB23D21
P 6450 9500
F 0 "L1" V 6550 9500 50  0000 C CNN
F 1 "AIAP-03-470K" V 6544 9500 50  0001 C CNN
F 2 "Inductor_THT:L_Axial_L20.3mm_D12.7mm_P25.40mm_Horizontal_Vishay_IHA-201" H 6450 9500 50  0001 C CNN
F 3 "~" H 6450 9500 50  0001 C CNN
	1    6450 9500
	0    -1   -1   0   
$EndComp
Connection ~ 6350 9500
Wire Wire Line
	6550 9500 6550 8700
Wire Wire Line
	6550 8700 6500 8700
Connection ~ 6500 8700
Wire Wire Line
	6500 8700 6500 8850
$Comp
L Device:CP1_Small C7
U 1 1 5EB2E9E9
P 6700 9600
F 0 "C7" H 6750 9600 50  0000 L CNN
F 1 "RL81C101MDN1KX" H 6791 9555 50  0001 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P2.50mm" H 6700 9600 50  0001 C CNN
F 3 "~" H 6700 9600 50  0001 C CNN
	1    6700 9600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 9500 6700 9500
Connection ~ 6550 9500
Wire Wire Line
	6350 9700 6700 9700
Connection ~ 6350 9700
$Comp
L power:+7.5V #PWR0105
U 1 1 5EB58ABE
P 5350 5400
F 0 "#PWR0105" H 5350 5250 50  0001 C CNN
F 1 "+7.5V" H 5365 5573 50  0000 C CNN
F 2 "" H 5350 5400 50  0001 C CNN
F 3 "" H 5350 5400 50  0001 C CNN
	1    5350 5400
	1    0    0    -1  
$EndComp
$Comp
L power:+7.5V #PWR0106
U 1 1 5EB62DBD
P 7450 9500
F 0 "#PWR0106" H 7450 9350 50  0001 C CNN
F 1 "+7.5V" H 7465 9673 50  0000 C CNN
F 2 "" H 7450 9500 50  0001 C CNN
F 3 "" H 7450 9500 50  0001 C CNN
	1    7450 9500
	1    0    0    -1  
$EndComp
Connection ~ 7450 9500
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
Text GLabel 4950 6350 0    50   Input ~ 0
A1_D2
Text GLabel 3050 6850 2    50   Output ~ 0
A1_A2
Text GLabel 4950 6550 0    50   Input ~ 0
A1_D4
Text GLabel 3050 7150 2    50   Output ~ 0
A1_D2
Text GLabel 4950 6850 0    50   Output ~ 0
A1_D7
Text GLabel 3050 7300 2    50   Output ~ 0
A1_D4
Text GLabel 4950 6950 0    50   Output ~ 0
A1_D8
Wire Wire Line
	4600 8300 4450 8300
$Comp
L power:+12V #PWR0112
U 1 1 5E4F3D35
P 4600 8300
F 0 "#PWR0112" H 4600 8150 50  0001 C CNN
F 1 "+12V" H 4615 8473 50  0000 C CNN
F 2 "" H 4600 8300 50  0001 C CNN
F 3 "" H 4600 8300 50  0001 C CNN
	1    4600 8300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 8850 4450 8700
Wire Wire Line
	3450 8850 4450 8850
$Comp
L Regulator_Switching:CRE1S2412SC U2
U 1 1 5E4CA4B9
P 3950 8500
F 0 "U2" H 3950 8967 50  0000 C CNN
F 1 "CRE1S2412SC" H 3950 8876 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_muRata_CRE1xxxxxxSC_THT" H 3950 8100 50  0001 C CNN
F 3 "http://power.murata.com/datasheet?/data/power/ncl/kdc_cre1.pdf" H 3950 8000 50  0001 C CNN
	1    3950 8500
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0111
U 1 1 5ECA94E2
P 3450 8250
F 0 "#PWR0111" H 3450 8100 50  0001 C CNN
F 1 "+BATT" H 3465 8423 50  0000 C CNN
F 2 "" H 3450 8250 50  0001 C CNN
F 3 "" H 3450 8250 50  0001 C CNN
	1    3450 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 8250 3450 8300
$Comp
L power:-BATT #PWR0114
U 1 1 5ECB5773
P 3450 8700
F 0 "#PWR0114" H 3450 8550 50  0001 C CNN
F 1 "-BATT" H 3465 8873 50  0000 C CNN
F 2 "" H 3450 8700 50  0001 C CNN
F 3 "" H 3450 8700 50  0001 C CNN
	1    3450 8700
	1    0    0    -1  
$EndComp
Text GLabel 6550 6750 2    50   Input ~ 0
A1_A0
$Comp
L power:GND #PWR0115
U 1 1 5ECF8DB7
P 4450 8850
F 0 "#PWR0115" H 4450 8600 50  0001 C CNN
F 1 "GND" H 4455 8677 50  0000 C CNN
F 2 "" H 4450 8850 50  0001 C CNN
F 3 "" H 4450 8850 50  0001 C CNN
	1    4450 8850
	1    0    0    -1  
$EndComp
Connection ~ 4450 8850
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
P 5650 5550
F 0 "#PWR0117" H 5650 5400 50  0001 C CNN
F 1 "+5V" H 5665 5723 50  0000 C CNN
F 2 "" H 5650 5550 50  0001 C CNN
F 3 "" H 5650 5550 50  0001 C CNN
	1    5650 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5550 5650 5750
$Comp
L power:GND #PWR0118
U 1 1 5ED212FB
P 5550 7900
F 0 "#PWR0118" H 5550 7650 50  0001 C CNN
F 1 "GND" H 5555 7727 50  0000 C CNN
F 2 "" H 5550 7900 50  0001 C CNN
F 3 "" H 5550 7900 50  0001 C CNN
	1    5550 7900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5ED21851
P 2800 8900
F 0 "#PWR0119" H 2800 8650 50  0001 C CNN
F 1 "GND" H 2805 8727 50  0000 C CNN
F 2 "" H 2800 8900 50  0001 C CNN
F 3 "" H 2800 8900 50  0001 C CNN
	1    2800 8900
	0    -1   -1   0   
$EndComp
Connection ~ 2800 8900
$Comp
L power:+3V3 #PWR0120
U 1 1 5ED2BB41
P 5550 5450
F 0 "#PWR0120" H 5550 5300 50  0001 C CNN
F 1 "+3V3" H 5565 5623 50  0000 C CNN
F 2 "" H 5550 5450 50  0001 C CNN
F 3 "" H 5550 5450 50  0001 C CNN
	1    5550 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 5450 5550 5600
$Comp
L power:+3V3 #PWR0121
U 1 1 5ED35409
P 2400 9200
F 0 "#PWR0121" H 2400 9050 50  0001 C CNN
F 1 "+3V3" H 2415 9373 50  0000 C CNN
F 2 "" H 2400 9200 50  0001 C CNN
F 3 "" H 2400 9200 50  0001 C CNN
	1    2400 9200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1350 6850 1750 6850
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
Text GLabel 6550 7150 2    50   Input ~ 0
A1_A4
Text GLabel 6550 7250 2    50   Input ~ 0
A1_A5
Text GLabel -1100 6450 2    50   Output ~ 0
A1_A4
Text GLabel -1100 6550 2    50   Output ~ 0
A1_A5
Text GLabel 4950 7450 0    50   Output ~ 0
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
Text GLabel 6550 6850 2    50   Input ~ 0
A1_A1
Text GLabel 6550 6950 2    50   Input ~ 0
A1_A2
Text GLabel 6550 7050 2    50   Output ~ 0
A1_A3
Wire Wire Line
	-1250 6450 -1100 6450
Wire Wire Line
	-1250 6550 -1100 6550
Text Notes 4650 6500 2    50   ~ 0
horn
Wire Wire Line
	2650 8950 2650 8900
Wire Wire Line
	2650 9150 2650 9200
Connection ~ 2650 9200
Text GLabel 2100 9700 2    50   Output ~ 0
A1_D8
Text GLabel 850  10300 0    50   Output ~ 0
A1_D11
Text GLabel 1700 10700 2    50   Output ~ 0
A1_D10
Text GLabel 800  9900 0    50   Output ~ 0
A1_D9
Text Notes 4650 7000 2    50   ~ 0
Screen
Text Notes 4650 7100 2    50   ~ 0
Screen
Text Notes 4600 7200 2    50   ~ 0
Screen
Text Notes 4600 7300 2    50   ~ 0
Screen
Text Notes 4600 7500 2    50   ~ 0
Screen
Text Notes -550 6050 2    50   ~ 0
battery
Text GLabel 4950 6250 0    50   Output ~ 0
A1_D1
Text GLabel 4950 6150 0    50   Output ~ 0
A1_D0
Text Notes 4650 6400 2    50   ~ 0
commodo horn
Text Notes 4650 6600 2    50   ~ 0
commodo eco
Text Notes -2550 5650 2    50   ~ 0
speed
Text GLabel 900  4000 0    50   Output ~ 0
A1_D7
Text Notes 4650 6900 2    50   ~ 0
eco
Text Notes 7600 7300 2    50   ~ 0
shunt/Other Arduino
Text Notes -1800 4250 2    50   ~ 0
beam
Text Notes 4650 6800 2    50   ~ 0
brake
Text Notes 4650 6200 2    50   ~ 0
left
Text Notes 4650 6300 2    50   ~ 0
right
Text Notes 7600 7200 2    50   ~ 0
shunt/Other Arduino
Text Notes -1750 4350 2    50   ~ 0
taillight
$Comp
L Device:C_Small C3
U 1 1 5E389EAC
P 5200 9500
F 0 "C3" H 5250 9600 50  0000 C CNN
F 1 "C320C104M5R5TA" V 5338 9500 50  0001 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 5200 9500 50  0001 C CNN
F 3 "~" H 5200 9500 50  0001 C CNN
	1    5200 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 9700 5750 9700
$Comp
L Device:C_Small C2
U 1 1 5E3DC369
P 5000 9500
F 0 "C2" H 5050 9600 50  0000 C CNN
F 1 "FG16X5R1E476MRT06" V 5138 9500 50  0001 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 5000 9500 50  0001 C CNN
F 3 "~" H 5000 9500 50  0001 C CNN
	1    5000 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 9400 5000 9300
Connection ~ 5000 9300
Wire Wire Line
	5000 9600 5000 9700
Connection ~ 5000 9700
Wire Wire Line
	5000 9700 5200 9700
Wire Wire Line
	4700 9300 4750 9300
Connection ~ 4750 9300
Wire Wire Line
	4750 9300 5000 9300
$Comp
L Device:C_Small C8
U 1 1 5E40EDD4
P 7450 9600
F 0 "C8" H 7550 9600 50  0000 C CNN
F 1 "C320C104M5R5TA" V 7588 9600 50  0001 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 7450 9600 50  0001 C CNN
F 3 "~" H 7450 9600 50  0001 C CNN
	1    7450 9600
	1    0    0    -1  
$EndComp
Text Notes -1150 12400 0    50   ~ 0
TODO buck convertor FB loop\norder 4.64kO 1% R\norder 820 pF COG\norder input/output MLCC, polymer Al better for the buck here\norder better solenoid
Connection ~ 5200 9700
Wire Wire Line
	5200 9600 5200 9700
Wire Wire Line
	5000 9300 5200 9300
Wire Wire Line
	5200 9400 5200 9300
Connection ~ 5200 9300
Wire Wire Line
	5200 9300 5250 9300
Connection ~ 6700 9500
Connection ~ 6700 9700
Connection ~ 7050 9500
Wire Wire Line
	7050 9500 7450 9500
Connection ~ 7050 9700
Wire Wire Line
	7050 9700 7450 9700
Wire Wire Line
	6700 9500 7050 9500
Wire Wire Line
	6700 9700 7050 9700
Wire Wire Line
	4750 9600 4750 9700
Wire Wire Line
	4750 9400 4750 9300
Text Notes -1150 13200 0    50   ~ 0
12 to 7 V buck converter measurements of consumption / temperature:\n1. load = 5100 Ohm: U_out = 7V, I_out,calc = 1.4 mA, U_in = 12V, I_in = 8 mA ==> efficicency 10 %, P_dissipated = 86.4 mW, DT_meas = 1.1 degC, DT_theo = 4.3 degC\n2. load = Arduino Uno R3, U_out = 7V, I_out_meas = 50 mA, U_in = 12V, I_in = 45 mA ==> efficiency 65%, P_dissipated = 189 mW, DT_meas = 3.6 degC, DT_theo = 9.45 degC\n3. load = Arduino Uno R3 w/ BLE and SIM808 Shield (off): U_out = 7V, I_out_meas = 57 mA, U_in = 12V, I_in = 50 mA ==> efficiency 67%, P_dissipated = 198 mW\n4. load = Arduino Uno R3 w/ BLE and SIM808 Shield (on): U_out = 7V, I_out_meas = 70 mA, U_in = 12V, I_in = 55 mA ==> efficiency 74 %, P_dissipated = 172 mW, DT_meas = 4 degC
Text Notes 8550 4700 0    50   ~ 0
TIP120:\nDT_meas = 15.74 - 12.5 = 3.2 degC\nDU_horn = ? V (multimeter not able to read -> going to 1 when applying load). DU_CE = 0.7 V\nI_in_meas@12 V = ~1 A (oscillating fast)
Text Notes 4300 6700 0    50   ~ 0
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
	2350 6750 2350 7150
Wire Wire Line
	3050 6850 1900 6850
Connection ~ 1750 6850
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
Text Notes 8400 2350 0    50   ~ 0
V_brake = 11.78 V —> P_dis = 0.22*0.1 = 22 mW —> DT_theo = 3.5 degC
Text Notes 6850 6800 0    50   ~ 0
(thermistor)
$Comp
L Device:R_Small R27
U 1 1 5E43CFA1
P 2850 5550
F 0 "R27" V 3057 5550 50  0000 C CNN
F 1 "CFR16-2k7" V 2966 5550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 2780 5550 50  0001 C CNN
F 3 "~" H 2850 5550 50  0001 C CNN
	1    2850 5550
	0    -1   -1   0   
$EndComp
Text GLabel 2600 5550 0    50   Output ~ 0
A1_A0
$Comp
L power:GND #PWR0123
U 1 1 5E44C1CB
P 3050 5550
F 0 "#PWR0123" H 3050 5300 50  0001 C CNN
F 1 "GND" H 3055 5377 50  0000 C CNN
F 2 "" H 3050 5550 50  0001 C CNN
F 3 "" H 3050 5550 50  0001 C CNN
	1    3050 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5550 3050 5550
$Comp
L Device:Thermistor TH1
U 1 1 5E45B7DF
P 2700 5150
F 0 "TH1" H 2805 5196 50  0000 L CNN
F 1 "Thermistor" H 2805 5105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 2700 5150 50  0001 C CNN
F 3 "~" H 2700 5150 50  0001 C CNN
	1    2700 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5550 2700 5550
Wire Wire Line
	2700 5350 2700 5550
Connection ~ 2700 5550
Wire Wire Line
	2700 5550 2750 5550
$Comp
L power:+5V #PWR0124
U 1 1 5E493EB9
P 2700 4850
F 0 "#PWR0124" H 2700 4700 50  0001 C CNN
F 1 "+5V" H 2715 5023 50  0000 C CNN
F 2 "" H 2700 4850 50  0001 C CNN
F 3 "" H 2700 4850 50  0001 C CNN
	1    2700 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4850 2700 4950
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
P 2650 9050
F 0 "C17" V 2878 9050 50  0000 C CNN
F 1 "220uF" V 2787 9050 50  0000 C CNN
F 2 "Capacitor_THT:C_Radial_D5.0mm_H11.0mm_P2.00mm" H 2650 9050 50  0001 C CNN
F 3 "~" H 2650 9050 50  0001 C CNN
	1    2650 9050
	-1   0    0    1   
$EndComp
Text Notes 2850 9100 2    50   ~ 0
black
Text Notes 2850 9200 2    50   ~ 0
red
Text Notes 2850 9400 2    50   ~ 0
green
Text Notes 2850 9700 2    50   ~ 0
orange
Text Notes 2850 9800 2    50   ~ 0
yellow
Text Notes 2800 10500 2    50   ~ 0
purple
Text Notes 2800 10600 2    50   ~ 0
blue
$Comp
L Analog_Switch:CD4051B U3
U 1 1 5E57C081
P 1500 10000
F 0 "U3" H 1550 10850 50  0000 L CNN
F 1 "CD4050BE" H 1450 10750 50  0000 L CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 1650 9250 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4052b.pdf" H 1480 10100 50  0001 C CNN
	1    1500 10000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2400 9200 2450 9200
Wire Wire Line
	2550 9600 2550 9400
Wire Wire Line
	2550 9400 2800 9400
Wire Wire Line
	1000 10200 950  10200
Wire Wire Line
	950  10200 950  8800
Wire Wire Line
	2450 8800 2450 9200
Connection ~ 2450 9200
Wire Wire Line
	2450 9200 2650 9200
Wire Wire Line
	2800 9700 2550 9700
Wire Wire Line
	2550 9700 2550 11000
Wire Wire Line
	950  11000 950  10400
Wire Wire Line
	950  10400 1000 10400
Wire Wire Line
	2800 9800 2600 9800
Wire Wire Line
	2600 9800 2600 11050
Wire Wire Line
	1000 11050 1000 10500
$Comp
L power:GND #PWR0125
U 1 1 5E47B91D
P 1500 10850
F 0 "#PWR0125" H 1500 10600 50  0001 C CNN
F 1 "GND" H 1505 10677 50  0000 C CNN
F 2 "" H 1500 10850 50  0001 C CNN
F 3 "" H 1500 10850 50  0001 C CNN
	1    1500 10850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 10850 1500 10700
Wire Wire Line
	2800 10500 2700 10500
Wire Wire Line
	2700 10500 2700 10000
Wire Wire Line
	2800 10600 2650 10600
Wire Wire Line
	2650 10600 2650 11100
Wire Wire Line
	900  10000 1000 10000
Wire Wire Line
	900  11100 900  10000
Text GLabel 2100 9900 2    50   Output ~ 0
A1_D13
Wire Wire Line
	950  8800 2450 8800
Wire Wire Line
	2000 9600 2550 9600
Wire Wire Line
	2000 10000 2700 10000
Wire Wire Line
	950  11000 2550 11000
Wire Wire Line
	1000 11050 2600 11050
Wire Wire Line
	900  11100 2650 11100
Wire Wire Line
	2100 9900 2000 9900
Wire Wire Line
	850  10300 1000 10300
Wire Wire Line
	1700 10700 1600 10700
Wire Wire Line
	2100 9700 2000 9700
Wire Wire Line
	800  9900 1000 9900
Text Notes 7200 6900 2    50   ~ 0
brakes in
Text Notes 1300 1350 0    50   ~ 0
F2/black
Text Notes 1300 1150 0    50   ~ 0
F5/red
Text Notes 1300 1550 0    50   ~ 0
F1/white
Wire Wire Line
	6750 5900 6750 6350
Wire Wire Line
	6750 6350 6550 6350
Wire Wire Line
	6750 5900 7200 5900
Wire Wire Line
	7200 6000 6550 6000
Wire Wire Line
	6550 6000 6550 6150
Wire Wire Line
	7200 6100 6650 6100
Wire Wire Line
	6650 6100 6650 5600
Wire Wire Line
	6650 5600 5550 5600
Connection ~ 5550 5600
Wire Wire Line
	5550 5600 5550 5750
Wire Wire Line
	7200 6200 6850 6200
Wire Wire Line
	6850 6200 6850 5750
Wire Wire Line
	6850 5750 5650 5750
Connection ~ 5650 5750
Wire Wire Line
	7200 6300 7450 6300
Wire Wire Line
	7450 6300 7450 7850
Wire Wire Line
	7200 6400 7350 6400
Wire Wire Line
	7350 6400 7350 7900
Wire Wire Line
	7350 7900 5550 7900
Connection ~ 5550 7900
Wire Wire Line
	7200 6500 7250 6500
Wire Wire Line
	7250 6500 7250 5450
Connection ~ 5350 5450
Wire Wire Line
	5350 5450 5350 5750
$Comp
L Connector:Conn_01x06_Male J4
U 1 1 5E5AAD46
P 7500 6950
F 0 "J4" H 7608 7331 50  0000 C CNN
F 1 "Conn_01x06_Male" H 7608 7240 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 7500 6950 50  0001 C CNN
F 3 "~" H 7500 6950 50  0001 C CNN
	1    7500 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 6750 6550 6750
Wire Wire Line
	7700 6850 6550 6850
Wire Wire Line
	7700 6950 6550 6950
Wire Wire Line
	7700 7050 6550 7050
Wire Wire Line
	7700 7150 6550 7150
Wire Wire Line
	7700 7250 6550 7250
$Comp
L Connector:Conn_01x10_Male J2
U 1 1 5E63AE84
P 3850 7350
F 0 "J2" H 3958 7931 50  0000 C CNN
F 1 "Conn_01x10_Male" H 3958 7840 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 3850 7350 50  0001 C CNN
F 3 "~" H 3850 7350 50  0001 C CNN
	1    3850 7350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J1
U 1 1 5E64463F
P 3850 6150
F 0 "J1" H 3958 6631 50  0000 C CNN
F 1 "Conn_01x08_Male" H 3958 6540 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 3850 6150 50  0001 C CNN
F 3 "~" H 3850 6150 50  0001 C CNN
	1    3850 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 5850 4650 5850
Wire Wire Line
	4050 5950 4600 5950
Wire Wire Line
	4600 5950 4600 6250
Wire Wire Line
	4600 6250 4950 6250
Wire Wire Line
	4050 6050 4550 6050
Wire Wire Line
	4550 6050 4550 6350
Wire Wire Line
	4550 6350 4950 6350
Wire Wire Line
	4050 6150 4500 6150
Wire Wire Line
	4500 6150 4500 6450
Wire Wire Line
	4500 6450 4950 6450
Wire Wire Line
	4050 6250 4450 6250
Wire Wire Line
	4450 6250 4450 6550
Wire Wire Line
	4450 6550 4950 6550
Wire Wire Line
	4050 6350 4400 6350
Wire Wire Line
	4400 6350 4400 6650
Wire Wire Line
	4400 6650 4950 6650
Wire Wire Line
	4050 6450 4350 6450
Wire Wire Line
	4350 6450 4350 6750
Wire Wire Line
	4350 6750 4950 6750
Wire Wire Line
	4050 6550 4300 6550
Wire Wire Line
	4300 6550 4300 6850
Wire Wire Line
	4300 6850 4950 6850
Wire Wire Line
	4650 5850 4650 6150
Wire Wire Line
	4650 6150 4950 6150
$Comp
L Connector:Conn_01x08_Male J3
U 1 1 5E4E755F
P 7000 6100
F 0 "J3" H 7108 6581 50  0000 C CNN
F 1 "Conn_01x08_Male" H 7108 6490 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 7000 6100 50  0001 C CNN
F 3 "~" H 7000 6100 50  0001 C CNN
	1    7000 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 6950 4950 6950
Wire Wire Line
	4050 7050 4950 7050
Wire Wire Line
	4050 7150 4950 7150
Wire Wire Line
	4050 7250 4950 7250
Wire Wire Line
	4050 7350 4950 7350
Wire Wire Line
	4050 7450 4950 7450
Wire Wire Line
	4050 7550 4950 7550
Wire Wire Line
	4950 7550 4950 7850
Wire Wire Line
	4950 7850 5350 7850
Wire Wire Line
	4050 7650 5950 7650
Wire Wire Line
	5950 7650 5950 6550
Wire Wire Line
	5950 6550 6550 6550
Wire Wire Line
	4050 7750 4900 7750
Wire Wire Line
	4900 7750 4900 8150
Wire Wire Line
	4900 8150 6750 8150
Wire Wire Line
	6750 8150 6750 7450
Wire Wire Line
	6750 7450 6550 7450
Wire Wire Line
	4050 7850 4800 7850
Wire Wire Line
	4800 7850 4800 8200
Wire Wire Line
	4800 8200 6550 8200
Wire Wire Line
	6550 8200 6550 7550
Text Notes -2950 5950 0    50   ~ 0
front beam
Text Notes -3400 6050 0    50   ~ 0
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
P 7050 9600
F 0 "C6" H 7150 9600 50  0000 C CNN
F 1 "FG16X5R1E476MRT06" V 7188 9600 50  0001 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 7050 9600 50  0001 C CNN
F 3 "~" H 7050 9600 50  0001 C CNN
	1    7050 9600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 6450 2350 6450
Text Notes 7700 7000 2    50   ~ 0
commodo turn signals
$Comp
L Device:R R51
U 1 1 5E8D532F
P 1500 7000
F 0 "R51" V 1500 7000 50  0000 C CNN
F 1 "CFR16-10k" V 1616 7000 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 1430 7000 50  0001 C CNN
F 3 "~" H 1500 7000 50  0001 C CNN
	1    1500 7000
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 7000 1900 7000
Wire Wire Line
	1900 7000 1900 6850
Connection ~ 1900 6850
Wire Wire Line
	1900 6850 1750 6850
Wire Wire Line
	5450 7850 5550 7850
Connection ~ 5550 7850
Wire Wire Line
	5550 7850 7450 7850
Connection ~ 3450 8700
Wire Wire Line
	3450 8700 3450 8850
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 5EB69D48
P 4300 9450
F 0 "J5" H 4408 9539 50  0000 C CNN
F 1 "12V cable from regulator" H 4408 9540 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4300 9450 50  0001 C CNN
F 3 "~" H 4300 9450 50  0001 C CNN
	1    4300 9450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 9450 4600 9450
Wire Wire Line
	4600 9450 4600 9300
Wire Wire Line
	4600 9300 4700 9300
Connection ~ 4700 9300
Wire Wire Line
	4500 9550 4500 9700
Wire Wire Line
	4500 9700 4750 9700
Connection ~ 4750 9700
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 5EBB2CF5
P 7650 9050
F 0 "J6" V 7758 9094 50  0000 L CNN
F 1 "7.5V cables x2 to Arduino power jacks" H 7758 9140 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7650 9050 50  0001 C CNN
F 3 "~" H 7650 9050 50  0001 C CNN
	1    7650 9050
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 9250 7550 9500
Wire Wire Line
	7550 9500 7450 9500
Wire Wire Line
	7650 9250 7650 9700
Wire Wire Line
	7650 9700 7450 9700
Connection ~ 7450 9700
Wire Wire Line
	5350 5450 7250 5450
$Comp
L power:GND #PWR?
U 1 1 5EC019BF
P 5350 7900
F 0 "#PWR?" H 5350 7650 50  0001 C CNN
F 1 "GND" H 5355 7727 50  0000 C CNN
F 2 "" H 5350 7900 50  0001 C CNN
F 3 "" H 5350 7900 50  0001 C CNN
	1    5350 7900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 7900 5350 7850
Connection ~ 5350 7850
Text Notes -3450 7000 0    50   ~ 0
SIM808_D12 to be routed \nto another arduino Pin \nbecause it’s used to boot \nthe GSM
Wire Wire Line
	-2500 6650 -2500 6350
Wire Wire Line
	-2500 6350 -2250 6350
NoConn ~ -2250 6450
NoConn ~ 7200 5800
NoConn ~ 5250 9500
NoConn ~ 2800 11000
NoConn ~ 2000 9500
NoConn ~ 1400 9300
NoConn ~ 1000 9800
NoConn ~ 1000 10100
$Comp
L Relay:G6H-2 K?
U 1 1 5E69EAFD
P -1800 2850
F 0 "K?" H -1170 2896 50  0000 L CNN
F 1 "G6H-2" H -1170 2805 50  0000 L CNN
F 2 "" H -1350 2750 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/C300/G6H%23OMR.pdf" H -1150 3000 50  0001 C CNN
	1    -1800 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	-1800 3150 -1800 3350
Wire Wire Line
	-1800 3350 -1750 3350
Wire Wire Line
	-1700 2550 -1700 2350
Wire Wire Line
	-1700 2350 -1650 2350
Wire Wire Line
	-2250 6750 -2250 8050
Connection ~ -2500 6650
Wire Wire Line
	-2400 6650 -2500 6650
Text GLabel -1150 6250 2    50   Output ~ 0
A2_A2
Wire Wire Line
	-1150 6250 -1250 6250
Text GLabel -2350 2450 0    50   Output ~ 0
A2_A2
Wire Wire Line
	-2350 2450 -2200 2450
Wire Wire Line
	-2200 2450 -2200 2550
$Comp
L power:GND #PWR?
U 1 1 5E7F9B14
P -2200 3150
F 0 "#PWR?" H -2200 2900 50  0001 C CNN
F 1 "GND" H -2195 2977 50  0000 C CNN
F 2 "" H -2200 3150 50  0001 C CNN
F 3 "" H -2200 3150 50  0001 C CNN
	1    -2200 3150
	1    0    0    -1  
$EndComp
NoConn ~ -1300 2550
NoConn ~ -1500 2550
NoConn ~ -1400 3150
NoConn ~ -1900 2550
Wire Wire Line
	-1850 7150 -1850 7200
Wire Wire Line
	-1850 7200 -1750 7200
Connection ~ -1650 7200
Wire Wire Line
	-1750 7150 -1750 7200
Connection ~ -1750 7200
Wire Wire Line
	-1750 7200 -1650 7200
Text Notes -800 6250 0    50   ~ 0
start/stop relay
Text Notes -800 6500 0    50   ~ 0
I2C comms
$EndSCHEMATC
