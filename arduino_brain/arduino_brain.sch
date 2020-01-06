EESchema Schematic File Version 4
LIBS:arduino_brain-cache
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
$Comp
L power:+BATT #PWR0101
U 1 1 5DFE0044
P -1850 4800
F 0 "#PWR0101" H -1850 4650 50  0001 C CNN
F 1 "+BATT" H -1835 4973 50  0000 C CNN
F 2 "" H -1850 4800 50  0001 C CNN
F 3 "" H -1850 4800 50  0001 C CNN
	1    -1850 4800
	1    0    0    -1  
$EndComp
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
Text GLabel 9000 2600 2    50   Output ~ 0
TAILLIGHT_GND
Text GLabel 9000 2800 2    50   Output ~ 0
TAILLIGHT_BRAKE
Text GLabel 9000 3000 2    50   Output ~ 0
TAILLIGHT_TAILLIGHT
Text Notes 9200 2550 0    50   ~ 0
Green
Text Notes 9150 2950 0    50   ~ 0
Yellow, 0.066 A
Text Notes 9250 2750 0    50   ~ 0
Blue, 0.093 A
Wire Notes Line
	9800 2450 9800 3100
Wire Notes Line
	8950 3100 8950 2450
Text Notes 8950 2450 0    50   ~ 0
Taillight
Wire Notes Line
	8950 2450 9800 2450
Wire Notes Line
	8950 3100 9800 3100
Text GLabel 9000 3350 2    50   Output ~ 0
INDICATOR_R_GND
Text GLabel 9000 3550 2    50   Output ~ 0
INDICATOR_R_+12V
Text Notes 9250 3300 0    50   ~ 0
Black
Text Notes 9150 3500 0    50   ~ 0
Yellow 0.038 A
Wire Notes Line
	8950 3200 8950 3650
Wire Notes Line
	8950 3650 9800 3650
Wire Notes Line
	9800 3650 9800 3200
Wire Notes Line
	9800 3200 8950 3200
Text Notes 8950 3200 0    50   ~ 0
Indicators_right
Text GLabel 9000 4400 2    50   Output ~ 0
BEAM_GND
Text GLabel 9000 4550 2    50   Output ~ 0
BEAM_+12V
Wire Notes Line
	8950 4300 9600 4300
Wire Notes Line
	9600 4300 9600 4650
Wire Notes Line
	9600 4650 8950 4650
Wire Notes Line
	8950 4650 8950 4300
Text Notes 8950 4300 0    50   ~ 0
Low beam - 0.985 A
Text GLabel 9000 4850 2    50   Output ~ 0
HORN_GND
Text GLabel 9000 5000 2    50   Output ~ 0
HORN_+12V
Wire Notes Line
	9600 5100 8950 5100
Wire Notes Line
	8950 5100 8950 4750
Wire Notes Line
	8950 4750 9600 4750
Wire Notes Line
	9600 4750 9600 5100
Text Notes 8950 4750 0    50   ~ 0
Horn
Text GLabel 9000 3900 2    50   Output ~ 0
INDICATOR_L_GND
Text GLabel 9000 4100 2    50   Output ~ 0
INDICATOR_L_+12V
Text Notes 9250 3850 0    50   ~ 0
Black
Text Notes 9150 4050 0    50   ~ 0
Yellow, 0.038 A
Wire Notes Line
	8950 3750 8950 4200
Wire Notes Line
	8950 4200 9800 4200
Wire Notes Line
	9800 4200 9800 3750
Wire Notes Line
	9800 3750 8950 3750
Text Notes 8950 3750 0    50   ~ 0
Indicators_left
Text GLabel 1650 2650 0    50   Output ~ 0
ACCEL_GND
Text GLabel 1650 2850 0    50   Output ~ 0
ACCEL_+5V
Text GLabel 1650 3050 0    50   Output ~ 0
ACCEL_SIGNAL
Text Notes 1450 2600 0    50   ~ 0
Color
Text Notes 1450 3000 0    50   ~ 0
Color
Text Notes 1450 2800 0    50   ~ 0
Color
Wire Notes Line
	1700 2500 1700 3150
Wire Notes Line
	1050 3150 1050 2500
Text Notes 1050 2500 0    50   ~ 0
Accelerator
Wire Notes Line
	1050 2500 1700 2500
Wire Notes Line
	1050 3150 1700 3150
Text GLabel 1650 3350 0    50   Output ~ 0
BRAKE_GND
Text GLabel 1650 3500 0    50   Output ~ 10
BRAKE_XXX
Wire Notes Line
	1700 3600 1150 3600
Wire Notes Line
	1150 3600 1150 3250
Wire Notes Line
	1150 3250 1700 3250
Wire Notes Line
	1700 3250 1700 3600
Text Notes 1150 3250 0    50   ~ 0
Brakes x2
Text GLabel 1650 3800 0    50   Output ~ 0
SPD_LO
Text GLabel 1650 3950 0    50   Output ~ 10
SPD_HI
Wire Notes Line
	1700 4050 1150 4050
Wire Notes Line
	1150 4050 1150 3700
Wire Notes Line
	1150 3700 1700 3700
Wire Notes Line
	1700 3700 1700 4050
Text Notes 1150 3700 0    50   ~ 0
Speed magnet
Text GLabel 1650 5100 0    50   Output ~ 10
COMMODO_LEFT
Text GLabel 1650 5250 0    50   Output ~ 10
COMMODO_RIGHT
Text GLabel 1650 5400 0    50   Output ~ 10
COMMODO_HORN
Text GLabel 1650 5550 0    50   Output ~ 10
COMMODO_ECO
Text GLabel 1650 5700 0    50   Output ~ 0
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
Text GLabel 2100 2100 2    50   Input ~ 10
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
Text GLabel 2300 2650 2    50   Input ~ 0
CA_ACCEL_GND
Text GLabel 2300 2850 2    50   Input ~ 0
CA_ACCEL_+5V
Text GLabel 2300 3050 2    50   Input ~ 0
CA_ACCEL_SIGNAL
Wire Wire Line
	1650 2650 2300 2650
Wire Wire Line
	1650 2850 2300 2850
Wire Wire Line
	1650 3050 2300 3050
Text GLabel 2300 3350 2    50   Input ~ 0
CA_BRAKES_HI
Text GLabel 2300 3500 2    50   Input ~ 0
CA_BRAKES_LO
Text GLabel 2100 3200 2    50   Input ~ 0
MOTOR_CTRL_BRAKES_HI
Text GLabel 2100 3650 2    50   Input ~ 0
MOTOR_CTRL_BRAKES_LO
Wire Wire Line
	1650 3350 2000 3350
Wire Wire Line
	1650 3500 2000 3500
Wire Wire Line
	2100 3200 2000 3200
Wire Wire Line
	2000 3200 2000 3350
Connection ~ 2000 3350
Wire Wire Line
	2100 3650 2000 3650
Wire Wire Line
	2000 3650 2000 3500
Connection ~ 2000 3500
Text GLabel 1850 3800 2    50   Input ~ 0
CA_SPEED_GND
Text GLabel 1850 3950 2    50   Input ~ 0
CA_SPEED_HI
Wire Wire Line
	1650 3950 1850 3950
Text GLabel 2100 2250 2    50   Input ~ 0
MOTOR_CTRL_SWITCH_LO
$Comp
L power:+12V #PWR0103
U 1 1 5E08A10C
P 8550 2550
F 0 "#PWR0103" H 8550 2400 50  0001 C CNN
F 1 "+12V" H 8565 2723 50  0000 C CNN
F 2 "" H 8550 2550 50  0001 C CNN
F 3 "" H 8550 2550 50  0001 C CNN
	1    8550 2550
	1    0    0    -1  
$EndComp
Wire Notes Line
	1750 5800 900  5800
Wire Notes Line
	900  5800 900  5000
Wire Notes Line
	900  5000 1750 5000
Wire Notes Line
	1750 5000 1750 5800
Text Notes 900  5000 0    50   ~ 0
Comodo
$Comp
L power:GND #PWR0104
U 1 1 5E08D35E
P 7950 5250
F 0 "#PWR0104" H 7950 5000 50  0001 C CNN
F 1 "GND" H 7955 5077 50  0000 C CNN
F 2 "" H 7950 5250 50  0001 C CNN
F 3 "" H 7950 5250 50  0001 C CNN
	1    7950 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 5000 8550 5000
$Comp
L Device:Q_NPN_Darlington_BCE Q10
U 1 1 5E0ABF98
P 6850 4100
F 0 "Q10" H 7040 4146 50  0000 L CNN
F 1 "Q_NPN_Darlington_BCE" H 7040 4055 50  0000 L CNN
F 2 "" H 7050 4200 50  0001 C CNN
F 3 "~" H 6850 4100 50  0001 C CNN
	1    6850 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 5E0AE97B
P 6250 4100
F 0 "R20" V 6457 4100 50  0000 C CNN
F 1 "2.2k" V 6366 4100 50  0000 C CNN
F 2 "" V 6180 4100 50  0001 C CNN
F 3 "~" H 6250 4100 50  0001 C CNN
	1    6250 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 4100 6650 4100
$Comp
L Device:Q_NPN_Darlington_BCE Q2
U 1 1 5E0B07A3
P 7850 5050
F 0 "Q2" H 8040 5096 50  0000 L CNN
F 1 "Q_NPN_Darlington_BCE" H 8040 5005 50  0000 L CNN
F 2 "" H 8050 5150 50  0001 C CNN
F 3 "~" H 7850 5050 50  0001 C CNN
	1    7850 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 4850 8850 4850
$Comp
L Device:R R9
U 1 1 5E0B3D4A
P 7450 5050
F 0 "R9" V 7657 5050 50  0000 C CNN
F 1 "2.2k" V 7566 5050 50  0000 C CNN
F 2 "" V 7380 5050 50  0001 C CNN
F 3 "~" H 7450 5050 50  0001 C CNN
	1    7450 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7600 5050 7650 5050
Connection ~ 7950 5250
Connection ~ 6950 5250
Wire Wire Line
	6950 5250 7500 5250
Wire Wire Line
	8850 2600 9000 2600
Text GLabel 2600 6400 0    50   Input ~ 10
CA_ECO_MODE_HI
Text GLabel 2600 6600 0    50   Input ~ 0
CA_ECO_MODE_LO
Text Notes 9850 2650 0    50   ~ 0
Check if lamp chassis ground is isolated. If not, we need an isolated ground (not connecting battery ground with chassis ground!!!)
Text Notes 9850 3400 0    50   ~ 0
Check if lamp chassis ground is isolated. If not, we need an isolated ground (not connecting battery ground with chassis ground!!!)
Text Notes 9850 3900 0    50   ~ 0
Check if lamp chassis ground is isolated. If not, we need an isolated ground (not connecting battery ground with chassis ground!!!)
Text Notes 9650 4450 0    50   ~ 0
Check if lamp chassis ground is isolated. If not, we need an isolated ground (not connecting battery ground with chassis ground!!!)
Text Notes 9650 4900 0    50   ~ 0
Check if lamp chassis ground is isolated. If not, we need an isolated ground (not connecting battery ground with chassis ground!!!)
$Comp
L Device:Q_PNP_BCE Q11
U 1 1 5E0EA248
P 7550 3900
F 0 "Q11" H 7740 3854 50  0000 L CNN
F 1 "Q_PNP_BCE" H 7740 3945 50  0000 L CNN
F 2 "" H 7750 4000 50  0001 C CNN
F 3 "~" H 7550 3900 50  0001 C CNN
	1    7550 3900
	1    0    0    1   
$EndComp
$Comp
L Device:R R21
U 1 1 5E0EAF2D
P 7200 3900
F 0 "R21" V 7407 3900 50  0000 C CNN
F 1 "2.2k" V 7316 3900 50  0000 C CNN
F 2 "" V 7130 3900 50  0001 C CNN
F 3 "~" H 7200 3900 50  0001 C CNN
	1    7200 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8550 4550 9000 4550
Connection ~ 8550 4550
Wire Wire Line
	8550 4550 8550 4900
Wire Wire Line
	7050 3900 6950 3900
$Comp
L Device:R R22
U 1 1 5E0FEFBE
P 7200 3550
F 0 "R22" V 7407 3550 50  0000 C CNN
F 1 "22k" V 7316 3550 50  0000 C CNN
F 2 "" V 7130 3550 50  0001 C CNN
F 3 "~" H 7200 3550 50  0001 C CNN
	1    7200 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7650 3700 7650 3550
Wire Wire Line
	7650 3550 8550 3550
Connection ~ 8550 3550
Wire Wire Line
	8550 3550 8550 4550
Wire Wire Line
	7350 3550 7650 3550
Connection ~ 7650 3550
Wire Wire Line
	7050 3550 7050 3900
Connection ~ 7050 3900
Wire Wire Line
	7650 4100 9000 4100
$Comp
L Device:Q_NPN_Darlington_BCE Q8
U 1 1 5E10C4F3
P 6750 3150
F 0 "Q8" H 6940 3196 50  0000 L CNN
F 1 "Q_NPN_Darlington_BCE" H 6940 3105 50  0000 L CNN
F 2 "" H 6950 3250 50  0001 C CNN
F 3 "~" H 6750 3150 50  0001 C CNN
	1    6750 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5E10C4FD
P 6300 3150
F 0 "R17" V 6507 3150 50  0000 C CNN
F 1 "2.2k" V 6416 3150 50  0000 C CNN
F 2 "" V 6230 3150 50  0001 C CNN
F 3 "~" H 6300 3150 50  0001 C CNN
	1    6300 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6450 3150 6550 3150
$Comp
L Device:Q_PNP_BCE Q9
U 1 1 5E10C508
P 7450 2950
F 0 "Q9" H 7640 2904 50  0000 L CNN
F 1 "Q_PNP_BCE" H 7640 2995 50  0000 L CNN
F 2 "" H 7650 3050 50  0001 C CNN
F 3 "~" H 7450 2950 50  0001 C CNN
	1    7450 2950
	1    0    0    1   
$EndComp
$Comp
L Device:R R18
U 1 1 5E10C512
P 7100 2950
F 0 "R18" V 7307 2950 50  0000 C CNN
F 1 "2.2k" V 7216 2950 50  0000 C CNN
F 2 "" V 7030 2950 50  0001 C CNN
F 3 "~" H 7100 2950 50  0001 C CNN
	1    7100 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6950 2950 6850 2950
$Comp
L Device:R R19
U 1 1 5E10C51D
P 7100 2600
F 0 "R19" V 7307 2600 50  0000 C CNN
F 1 "22k" V 7216 2600 50  0000 C CNN
F 2 "" V 7030 2600 50  0001 C CNN
F 3 "~" H 7100 2600 50  0001 C CNN
	1    7100 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6950 2600 6950 2950
Connection ~ 6950 2950
Wire Wire Line
	6850 3350 6850 3500
Wire Wire Line
	6850 5250 6950 5250
Wire Wire Line
	7550 3150 7550 3450
Wire Wire Line
	7550 3450 8750 3450
Wire Wire Line
	8750 3450 8750 3550
Wire Wire Line
	8750 3550 9000 3550
Connection ~ 8550 2600
Wire Wire Line
	8550 2600 8550 3550
$Comp
L Device:D D2
U 1 1 5E119BF7
P 8700 4900
F 0 "D2" H 8700 5116 50  0000 C CNN
F 1 "D" H 8700 5025 50  0000 C CNN
F 2 "" H 8700 4900 50  0001 C CNN
F 3 "~" H 8700 4900 50  0001 C CNN
	1    8700 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 4900 8550 5000
Wire Wire Line
	8850 4900 8850 4850
Connection ~ 8850 4850
Wire Wire Line
	8850 4850 9000 4850
Wire Wire Line
	8550 2550 8550 2600
$Comp
L Device:Q_NPN_Darlington_BCE Q4
U 1 1 5E13A0BB
P 7950 1850
F 0 "Q4" H 8140 1896 50  0000 L CNN
F 1 "Q_NPN_Darlington_BCE" H 8140 1805 50  0000 L CNN
F 2 "" H 8150 1950 50  0001 C CNN
F 3 "~" H 7950 1850 50  0001 C CNN
	1    7950 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5E13A0C5
P 7600 1850
F 0 "R11" V 7807 1850 50  0000 C CNN
F 1 "2.2k" V 7716 1850 50  0000 C CNN
F 2 "" V 7530 1850 50  0001 C CNN
F 3 "~" H 7600 1850 50  0001 C CNN
	1    7600 1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:Q_PNP_BCE Q5
U 1 1 5E13A0D0
P 8700 1650
F 0 "Q5" H 8890 1604 50  0000 L CNN
F 1 "Q_PNP_BCE" H 8890 1695 50  0000 L CNN
F 2 "" H 8900 1750 50  0001 C CNN
F 3 "~" H 8700 1650 50  0001 C CNN
	1    8700 1650
	1    0    0    1   
$EndComp
$Comp
L Device:R R12
U 1 1 5E13A0DA
P 8350 1650
F 0 "R12" V 8557 1650 50  0000 C CNN
F 1 "2.2k" V 8466 1650 50  0000 C CNN
F 2 "" V 8280 1650 50  0001 C CNN
F 3 "~" H 8350 1650 50  0001 C CNN
	1    8350 1650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8200 1650 8050 1650
$Comp
L Device:R R13
U 1 1 5E13A0E5
P 8350 1300
F 0 "R13" V 8557 1300 50  0000 C CNN
F 1 "22k" V 8466 1300 50  0000 C CNN
F 2 "" V 8280 1300 50  0001 C CNN
F 3 "~" H 8350 1300 50  0001 C CNN
	1    8350 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8800 1450 8800 1300
Wire Wire Line
	8200 1300 8200 1650
Connection ~ 8200 1650
$Comp
L Device:Q_NPN_Darlington_BCE Q6
U 1 1 5E13EC7D
P 4650 2850
F 0 "Q6" H 4840 2896 50  0000 L CNN
F 1 "Q_NPN_Darlington_BCE" H 4840 2805 50  0000 L CNN
F 2 "" H 4850 2950 50  0001 C CNN
F 3 "~" H 4650 2850 50  0001 C CNN
	1    4650 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5E13EC87
P 4200 2850
F 0 "R14" V 4407 2850 50  0000 C CNN
F 1 "2.2k" V 4316 2850 50  0000 C CNN
F 2 "" V 4130 2850 50  0001 C CNN
F 3 "~" H 4200 2850 50  0001 C CNN
	1    4200 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 2850 4450 2850
$Comp
L Device:Q_PNP_BCE Q7
U 1 1 5E13EC92
P 5350 2650
F 0 "Q7" H 5540 2604 50  0000 L CNN
F 1 "Q_PNP_BCE" H 5540 2695 50  0000 L CNN
F 2 "" H 5550 2750 50  0001 C CNN
F 3 "~" H 5350 2650 50  0001 C CNN
	1    5350 2650
	1    0    0    1   
$EndComp
$Comp
L Device:R R15
U 1 1 5E13EC9C
P 5000 2650
F 0 "R15" V 5207 2650 50  0000 C CNN
F 1 "2.2k" V 5116 2650 50  0000 C CNN
F 2 "" V 4930 2650 50  0001 C CNN
F 3 "~" H 5000 2650 50  0001 C CNN
	1    5000 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 2650 4750 2650
$Comp
L Device:R R16
U 1 1 5E13ECA7
P 5000 2300
F 0 "R16" V 5207 2300 50  0000 C CNN
F 1 "22k" V 5116 2300 50  0000 C CNN
F 2 "" V 4930 2300 50  0001 C CNN
F 3 "~" H 5000 2300 50  0001 C CNN
	1    5000 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5450 2450 5450 2300
Wire Wire Line
	5150 2300 5450 2300
Wire Wire Line
	4850 2300 4850 2650
Connection ~ 4850 2650
Wire Wire Line
	8800 1850 8800 2800
Wire Wire Line
	8800 2800 9000 2800
Wire Wire Line
	8300 2850 8300 3000
Wire Wire Line
	8300 3000 9000 3000
Wire Wire Line
	4750 3050 5900 3050
Wire Wire Line
	5900 3050 5900 3500
Wire Wire Line
	5900 3500 6850 3500
Connection ~ 6850 3500
$Comp
L Device:R R7
U 1 1 5E1687C7
P 3350 4900
F 0 "R7" V 3557 4900 50  0000 C CNN
F 1 "10k" V 3466 4900 50  0000 C CNN
F 2 "" V 3280 4900 50  0001 C CNN
F 3 "~" H 3350 4900 50  0001 C CNN
	1    3350 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 5E16A1FA
P 4250 4150
F 0 "#PWR0105" H 4250 4000 50  0001 C CNN
F 1 "+5V" H 4265 4323 50  0000 C CNN
F 2 "" H 4250 4150 50  0001 C CNN
F 3 "" H 4250 4150 50  0001 C CNN
	1    4250 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4150 4250 4250
Wire Wire Line
	4250 4250 3350 4250
Wire Wire Line
	3350 4250 3350 4750
Connection ~ 4250 4250
Wire Wire Line
	4250 4250 4250 4500
Wire Wire Line
	3350 5100 3850 5100
Wire Wire Line
	3050 4750 3350 4750
Connection ~ 3350 4750
Wire Wire Line
	3350 4750 3350 4800
$Comp
L Device:R R5
U 1 1 5E18A3DC
P 2700 4900
F 0 "R5" V 2907 4900 50  0000 C CNN
F 1 "10k" V 2816 4900 50  0000 C CNN
F 2 "" V 2630 4900 50  0001 C CNN
F 3 "~" H 2700 4900 50  0001 C CNN
	1    2700 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 5400 1650 5400
Wire Wire Line
	2700 4750 3050 4750
Connection ~ 3050 4750
$Comp
L Device:R R4
U 1 1 5E19AF71
P 2350 4900
F 0 "R4" V 2557 4900 50  0000 C CNN
F 1 "10k" V 2466 4900 50  0000 C CNN
F 2 "" V 2280 4900 50  0001 C CNN
F 3 "~" H 2350 4900 50  0001 C CNN
	1    2350 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 5550 1650 5550
Wire Wire Line
	2350 4750 2700 4750
Connection ~ 2700 4750
Connection ~ 3350 5100
Text Notes 3750 5150 0    50   ~ 0
~
Text Notes 4200 5200 0    50   ~ 0
~
Text Notes 4100 5250 0    50   ~ 0
~ 
$Comp
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 5E167047
P 4350 5500
F 0 "A1" H 4350 6681 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 4350 6590 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 4500 4450 50  0001 L CNN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 4150 6550 50  0001 C CNN
	1    4350 5500
	1    0    0    -1  
$EndComp
Text Notes 4100 5250 0    50   ~ 0
PWM
Text Notes 4100 5450 0    50   ~ 0
PWM
Text Notes 4100 5550 0    50   ~ 0
PWM
Text Notes 4100 5850 0    50   ~ 0
PWM
Text Notes 4150 5950 0    50   ~ 0
PWM
Text Notes 4150 6050 0    50   ~ 0
PWM
Wire Wire Line
	3050 5300 3050 5250
$Comp
L Regulator_Switching:R-78B5.0-2.0 U1
U 1 1 5E105FCA
P 1100 7150
F 0 "U1" H 1100 7392 50  0000 C CNN
F 1 "R-78B5.0-1.5" H 1100 7301 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_RECOM_R-78B-2.0_THT" H 1150 6900 50  0001 L CIN
F 3 "https://www.recom-power.com/pdf/Innoline/R-78Bxx-2.0.pdf" H 1100 7150 50  0001 C CNN
	1    1100 7150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5E107402
P 1500 7150
F 0 "#PWR0106" H 1500 7000 50  0001 C CNN
F 1 "+5V" H 1515 7323 50  0000 C CNN
F 2 "" H 1500 7150 50  0001 C CNN
F 3 "" H 1500 7150 50  0001 C CNN
	1    1500 7150
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0107
U 1 1 5E107F0F
P 650 7150
F 0 "#PWR0107" H 650 7000 50  0001 C CNN
F 1 "+12V" H 665 7323 50  0000 C CNN
F 2 "" H 650 7150 50  0001 C CNN
F 3 "" H 650 7150 50  0001 C CNN
	1    650  7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5E108737
P 1100 7450
F 0 "#PWR0108" H 1100 7200 50  0001 C CNN
F 1 "GND" H 1105 7277 50  0000 C CNN
F 2 "" H 1100 7450 50  0001 C CNN
F 3 "" H 1100 7450 50  0001 C CNN
	1    1100 7450
	1    0    0    -1  
$EndComp
Connection ~ 5350 5500
$Comp
L Device:R R3
U 1 1 5E11941E
P 5500 5500
F 0 "R3" V 5707 5500 50  0000 C CNN
F 1 "2k" V 5616 5500 50  0000 C CNN
F 2 "" V 5430 5500 50  0001 C CNN
F 3 "~" H 5500 5500 50  0001 C CNN
	1    5500 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 5850 5650 5500
Wire Wire Line
	5350 5850 5350 5500
$Comp
L Device:C C1
U 1 1 5E12E82D
P 5500 5850
F 0 "C1" V 5752 5850 50  0000 C CNN
F 1 "0.1 uF, 100V, ceramic" V 5661 5850 50  0000 C CNN
F 2 "" H 5538 5700 50  0001 C CNN
F 3 "~" H 5500 5850 50  0001 C CNN
	1    5500 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7300 5050 7250 5050
$Comp
L Device:R R1
U 1 1 5E10520B
P 5000 5500
F 0 "R1" V 5207 5500 50  0000 C CNN
F 1 "10k" V 5116 5500 50  0000 C CNN
F 2 "" V 4930 5500 50  0001 C CNN
F 3 "~" H 5000 5500 50  0001 C CNN
	1    5000 5500
	0    -1   -1   0   
$EndComp
Text GLabel 5150 5100 1    50   Output Italic 0
battery+
Connection ~ 5150 5500
Wire Wire Line
	5150 5500 5350 5500
$Comp
L Device:R R2
U 1 1 5E0F06FF
P 5150 5350
F 0 "R2" V 5357 5350 50  0000 C CNN
F 1 "22k" V 5266 5350 50  0000 C CNN
F 2 "" V 5080 5350 50  0001 C CNN
F 3 "~" H 5150 5350 50  0001 C CNN
	1    5150 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 7150 1500 7150
Wire Wire Line
	800  7150 650  7150
$Comp
L power:GND #PWR0109
U 1 1 5E27DA33
P 5750 5850
F 0 "#PWR0109" H 5750 5600 50  0001 C CNN
F 1 "GND" H 5755 5677 50  0000 C CNN
F 2 "" H 5750 5850 50  0001 C CNN
F 3 "" H 5750 5850 50  0001 C CNN
	1    5750 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5850 5750 5850
Connection ~ 5650 5850
Wire Wire Line
	2000 5550 2000 5700
Wire Wire Line
	2050 5400 2050 5600
Wire Wire Line
	1650 5250 3050 5250
$Comp
L Device:D D1
U 1 1 5E291EAE
P 1100 6700
F 0 "D1" H 1100 6916 50  0000 C CNN
F 1 "D" H 1100 6825 50  0000 C CNN
F 2 "" H 1100 6700 50  0001 C CNN
F 3 "~" H 1100 6700 50  0001 C CNN
	1    1100 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 6700 1400 6700
Wire Wire Line
	1400 6700 1400 7150
Connection ~ 1400 7150
Wire Wire Line
	950  6700 800  6700
Wire Wire Line
	800  6700 800  7150
Connection ~ 800  7150
$Comp
L Device:R R6
U 1 1 5E17B774
P 3050 4900
F 0 "R6" V 3257 4900 50  0000 C CNN
F 1 "10k" V 3166 4900 50  0000 C CNN
F 2 "" V 2980 4900 50  0001 C CNN
F 3 "~" H 3050 4900 50  0001 C CNN
	1    3050 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 5050 3350 5100
Wire Wire Line
	2050 5600 2700 5600
Wire Wire Line
	2000 5700 2350 5700
Wire Wire Line
	2350 5050 2350 5700
Connection ~ 2350 5700
Wire Wire Line
	2350 5700 3850 5700
Wire Wire Line
	2700 5050 2700 5600
Connection ~ 2700 5600
Wire Wire Line
	2700 5600 3850 5600
Wire Wire Line
	1650 5100 3350 5100
Wire Wire Line
	3050 5050 3050 5250
Wire Wire Line
	3050 5300 3850 5300
Connection ~ 3050 5250
Text GLabel 3850 5500 0    50   Output ~ 0
A1_D6
Text GLabel 6150 3150 0    50   Output ~ 0
A1_D6
Text GLabel 3850 5400 0    50   Output ~ 0
A1_D5
Text GLabel 4050 2850 0    50   Output ~ 0
A1_D5
Text GLabel 3850 5800 0    50   Output ~ 0
A1_D9
Text GLabel 6100 4100 0    50   Output ~ 0
A1_D9
$Comp
L power:GND #PWR0110
U 1 1 5E318B50
P 1850 5700
F 0 "#PWR0110" H 1850 5450 50  0001 C CNN
F 1 "GND" H 1855 5527 50  0000 C CNN
F 2 "" H 1850 5700 50  0001 C CNN
F 3 "" H 1850 5700 50  0001 C CNN
	1    1850 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 5700 1850 5700
Text GLabel 3850 5900 0    50   Output ~ 0
A1_D10
Text GLabel 3850 6000 0    50   Output ~ 0
A1_D11
Text GLabel 7250 5050 0    50   Output ~ 0
A1_D11
Text GLabel 3850 5200 0    50   Output ~ 0
A1_D3
Text GLabel 7450 1850 0    50   Output ~ 0
A1_D3
Wire Wire Line
	1650 3800 1850 3800
Wire Wire Line
	2000 3500 2300 3500
Wire Wire Line
	2000 3350 2300 3350
Wire Notes Line
	2650 6700 2650 6250
Wire Notes Line
	2650 6250 1800 6250
Wire Notes Line
	1800 6700 2650 6700
Text Notes 1900 6350 0    50   ~ 0
white (3)
Text Notes 1900 6550 0    50   ~ 0
black (2)
Text Notes 1800 6250 0    50   ~ 0
JST-3-F white
Wire Notes Line
	1800 6250 1800 6700
$Comp
L power:GND #PWR0111
U 1 1 5E45D479
P 2950 6600
F 0 "#PWR0111" H 2950 6350 50  0001 C CNN
F 1 "GND" H 2955 6427 50  0000 C CNN
F 2 "" H 2950 6600 50  0001 C CNN
F 3 "" H 2950 6600 50  0001 C CNN
	1    2950 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5E464CCA
P 3400 6400
F 0 "R8" V 3607 6400 50  0000 C CNN
F 1 "2.2k" V 3516 6400 50  0000 C CNN
F 2 "" V 3330 6400 50  0001 C CNN
F 3 "~" H 3400 6400 50  0001 C CNN
	1    3400 6400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3550 6400 3550 6200
$Comp
L Device:Q_NPN_Darlington_BCE Q1
U 1 1 5E482565
P 3050 6400
F 0 "Q1" H 3240 6446 50  0000 L CNN
F 1 "Q_NPN_Darlington_BCE" H 3240 6355 50  0000 L CNN
F 2 "" H 3250 6500 50  0001 C CNN
F 3 "~" H 3050 6400 50  0001 C CNN
	1    3050 6400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3550 6200 3850 6200
Wire Wire Line
	2600 6600 2950 6600
Connection ~ 2950 6600
Wire Wire Line
	2600 6400 2700 6400
Wire Wire Line
	2700 6400 2700 6200
Wire Wire Line
	2700 6200 2950 6200
$Comp
L Regulator_Switching:CRE1S2412SC U2
U 1 1 5E4CA4B9
P 6600 6000
F 0 "U2" H 6600 6467 50  0000 C CNN
F 1 "CRE1S2412SC" H 6600 6376 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_muRata_CRE1xxxxxxSC_THT" H 6600 5600 50  0001 C CNN
F 3 "http://power.murata.com/datasheet?/data/power/ncl/kdc_cre1.pdf" H 6600 5500 50  0001 C CNN
	1    6600 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 5100 5150 5150
Wire Wire Line
	5150 5150 6100 5150
Wire Wire Line
	6100 5150 6100 5800
Connection ~ 5150 5150
Wire Wire Line
	5150 5150 5150 5200
Wire Wire Line
	5750 5850 6000 5850
Wire Wire Line
	6000 5850 6000 6200
Wire Wire Line
	6000 6200 6100 6200
Connection ~ 5750 5850
Wire Wire Line
	6000 6200 6000 6400
Wire Wire Line
	6000 6400 7100 6400
Wire Wire Line
	7100 6400 7100 6200
Connection ~ 6000 6200
$Comp
L power:+12V #PWR0112
U 1 1 5E4F3D35
P 7250 5800
F 0 "#PWR0112" H 7250 5650 50  0001 C CNN
F 1 "+12V" H 7265 5973 50  0000 C CNN
F 2 "" H 7250 5800 50  0001 C CNN
F 3 "" H 7250 5800 50  0001 C CNN
	1    7250 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 5800 7100 5800
Text Notes 1850 3750 0    50   ~ 0
black
Text Notes 1850 3900 0    50   ~ 0
white
Text Notes 1850 4050 0    50   ~ 0
need to check voltage
Connection ~ 8550 4900
Text GLabel 6900 4600 0    50   Output ~ 0
A1_D10
Wire Wire Line
	6850 3500 6850 5250
Wire Wire Line
	6950 4300 6950 5250
Wire Wire Line
	7500 4400 9000 4400
$Comp
L Device:R R10
U 1 1 5E0F2758
P 7050 4600
F 0 "R10" V 7257 4600 50  0000 C CNN
F 1 "2.2k" V 7166 4600 50  0000 C CNN
F 2 "" V 6980 4600 50  0001 C CNN
F 3 "~" H 7050 4600 50  0001 C CNN
	1    7050 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:Q_NPN_Darlington_BCE Q3
U 1 1 5E0E94DF
P 7400 4600
F 0 "Q3" H 7590 4646 50  0000 L CNN
F 1 "Q_NPN_Darlington_BCE" H 7590 4555 50  0000 L CNN
F 2 "" H 7600 4700 50  0001 C CNN
F 3 "~" H 7400 4600 50  0001 C CNN
	1    7400 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4800 7500 5250
Connection ~ 7500 5250
Wire Wire Line
	7500 5250 7950 5250
Connection ~ 8850 3350
Wire Wire Line
	9000 3350 8850 3350
Wire Wire Line
	8850 2600 8850 3350
Connection ~ 8850 3900
$Comp
L power:GND #PWR0113
U 1 1 5E50ECA0
P 8850 3900
F 0 "#PWR0113" H 8850 3650 50  0001 C CNN
F 1 "GND" H 8855 3727 50  0000 C CNN
F 2 "" H 8850 3900 50  0001 C CNN
F 3 "" H 8850 3900 50  0001 C CNN
	1    8850 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3350 8850 3900
Wire Wire Line
	9000 3900 8850 3900
Wire Wire Line
	8800 1300 8500 1300
Wire Wire Line
	8050 2050 8850 2050
Wire Wire Line
	8850 2050 8850 2600
Connection ~ 8850 2600
Wire Wire Line
	7250 2600 7550 2600
Wire Wire Line
	7550 2750 7550 2600
Connection ~ 7550 2600
Wire Wire Line
	7550 2600 8550 2600
$Comp
L power:+12V #PWR0114
U 1 1 5E635F99
P 8800 1300
F 0 "#PWR0114" H 8800 1150 50  0001 C CNN
F 1 "+12V" H 8815 1473 50  0000 C CNN
F 2 "" H 8800 1300 50  0001 C CNN
F 3 "" H 8800 1300 50  0001 C CNN
	1    8800 1300
	1    0    0    -1  
$EndComp
Connection ~ 8800 1300
$Comp
L power:+12V #PWR0115
U 1 1 5E6365E0
P 5450 2300
F 0 "#PWR0115" H 5450 2150 50  0001 C CNN
F 1 "+12V" H 5465 2473 50  0000 C CNN
F 2 "" H 5450 2300 50  0001 C CNN
F 3 "" H 5450 2300 50  0001 C CNN
	1    5450 2300
	1    0    0    -1  
$EndComp
Connection ~ 5450 2300
Wire Wire Line
	5450 2850 8300 2850
Text Notes 700  900  0    50   ~ 0
TODO: \n- wire the speed sensor\n- wire the start/stop\n- wire the e-brakes
Text Notes 2300 2600 0    50   ~ 0
Black (2)
Text Notes 2300 2800 0    50   ~ 0
Red (1)
Text Notes 2300 3000 0    50   ~ 0
Green (3)
Wire Notes Line
	3050 3150 2200 3150
Wire Notes Line
	2200 3150 2200 2500
Wire Notes Line
	2200 2500 3050 2500
Wire Notes Line
	3050 2500 3050 3150
Text Notes 2200 2500 0    50   ~ 0
JST-3-F black
$EndSCHEMATC
