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
L MCU_Module:Arduino_UNO_R3 A?
U 1 1 5DFDE4CB
P -1750 6050
F 0 "A?" H -1750 7231 50  0000 C CNN
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
L power:+BATT #PWR?
U 1 1 5DFE0044
P -1850 4800
F 0 "#PWR?" H -1850 4650 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5DFE07DB
P -1650 7200
F 0 "#PWR?" H -1650 6950 50  0001 C CNN
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
Text Notes 1400 2600 0    50   ~ 0
Color
Text Notes 1350 3000 0    50   ~ 0
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
Text GLabel 1650 4250 0    50   Output ~ 10
COMMODO_LEFT
Text GLabel 1650 4400 0    50   Output ~ 10
COMMODO_RIGHT
Text GLabel 1650 4550 0    50   Output ~ 10
COMMODO_HORN
Text GLabel 1650 4700 0    50   Output ~ 10
COMMODO_ECO
Text GLabel 1650 4850 0    50   Output ~ 0
COMMODO_GND
Text Notes -1100 5050 0    50   ~ 0
9 free I/O\n15 I/O to have
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
Text GLabel 2300 2100 2    50   Input ~ 10
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
Text GLabel 2300 3250 2    50   Input ~ 0
CA_BRAKES_HI
Text GLabel 2300 3400 2    50   Input ~ 0
CA_BRAKES_LO
Text GLabel 2300 3550 2    50   Input ~ 0
MOTOR_CTRL_BRAKES_HI
Text GLabel 2300 3700 2    50   Input ~ 0
MOTOR_CTRL_BRAKES_LO
Wire Wire Line
	1650 3350 1900 3350
Wire Wire Line
	2050 3350 2050 3250
Wire Wire Line
	2050 3250 2300 3250
Wire Wire Line
	1650 3500 2000 3500
Wire Wire Line
	2100 3500 2100 3400
Wire Wire Line
	2100 3400 2300 3400
Wire Wire Line
	2300 3550 1900 3550
Wire Wire Line
	1900 3550 1900 3350
Connection ~ 1900 3350
Wire Wire Line
	1900 3350 2050 3350
Wire Wire Line
	2300 3700 2000 3700
Wire Wire Line
	2000 3700 2000 3500
Connection ~ 2000 3500
Wire Wire Line
	2000 3500 2100 3500
Text GLabel 2300 3850 2    50   Input ~ 0
CA_SPEED_LO
Text GLabel 2300 3950 2    50   Input ~ 0
CA_SPEED_HI
Wire Wire Line
	2300 3850 2000 3850
Wire Wire Line
	2000 3850 2000 3800
Wire Wire Line
	2000 3800 1650 3800
Wire Wire Line
	1650 3950 2300 3950
Text GLabel 2300 2250 2    50   Input ~ 0
MOTOR_CTRL_SWITCH_LO
Text Notes 8650 2150 0    50   ~ 0
12 V rail
$Comp
L power:+12V #PWR?
U 1 1 5E08A10C
P 8000 1650
F 0 "#PWR?" H 8000 1500 50  0001 C CNN
F 1 "+12V" H 8015 1823 50  0000 C CNN
F 2 "" H 8000 1650 50  0001 C CNN
F 3 "" H 8000 1650 50  0001 C CNN
	1    8000 1650
	1    0    0    -1  
$EndComp
Wire Notes Line
	1750 4950 900  4950
Wire Notes Line
	900  4950 900  4150
Wire Notes Line
	900  4150 1750 4150
Wire Notes Line
	1750 4150 1750 4950
Text Notes 900  4150 0    50   ~ 0
Comodo
$Comp
L power:GND #PWR?
U 1 1 5E08D35E
P 7750 5250
F 0 "#PWR?" H 7750 5000 50  0001 C CNN
F 1 "GND" H 7755 5077 50  0000 C CNN
F 2 "" H 7750 5250 50  0001 C CNN
F 3 "" H 7750 5250 50  0001 C CNN
	1    7750 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 5000 8250 5000
$Comp
L Device:Q_NPN_Darlington_BCE Q?
U 1 1 5E0ABF98
P 6850 4100
F 0 "Q?" H 7040 4146 50  0000 L CNN
F 1 "Q_NPN_Darlington_BCE" H 7040 4055 50  0000 L CNN
F 2 "" H 7050 4200 50  0001 C CNN
F 3 "~" H 6850 4100 50  0001 C CNN
	1    6850 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E0AE97B
P 6250 4100
F 0 "R?" V 6457 4100 50  0000 C CNN
F 1 "2.2k" V 6366 4100 50  0000 C CNN
F 2 "" V 6180 4100 50  0001 C CNN
F 3 "~" H 6250 4100 50  0001 C CNN
	1    6250 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 4100 6650 4100
$Comp
L Device:Q_NPN_Darlington_BCE Q?
U 1 1 5E0B07A3
P 7100 5050
F 0 "Q?" H 7290 5096 50  0000 L CNN
F 1 "Q_NPN_Darlington_BCE" H 7290 5005 50  0000 L CNN
F 2 "" H 7300 5150 50  0001 C CNN
F 3 "~" H 7100 5050 50  0001 C CNN
	1    7100 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4850 8550 4850
$Comp
L Device:R R?
U 1 1 5E0B3D4A
P 6450 5050
F 0 "R?" V 6657 5050 50  0000 C CNN
F 1 "2.2k" V 6566 5050 50  0000 C CNN
F 2 "" V 6380 5050 50  0001 C CNN
F 3 "~" H 6450 5050 50  0001 C CNN
	1    6450 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6600 5050 6900 5050
Connection ~ 7200 5250
Wire Wire Line
	8700 5250 7750 5250
Connection ~ 7750 5250
Wire Wire Line
	6950 4300 6950 5250
Connection ~ 6950 5250
Wire Wire Line
	6950 5250 7200 5250
Wire Wire Line
	8700 2600 9000 2600
Text Notes 4700 900  0    50   ~ 0
order PNP transistors, 7 V relay, 10x diodes N4001 or SB560 
Text GLabel 1650 1500 0    50   Output Italic 0
battery+
Text Notes 7600 5850 0    50   ~ 0
6 lights/things to control
Text GLabel 2300 1750 2    50   Input ~ 10
CA_ECO_MODE_HI
Text GLabel 2300 1900 2    50   Input ~ 0
CA_ECO_MODE_LO
Text Notes 2250 1550 0    50   ~ 0
2 more controls / +1 if e-brake works
Text Notes 1200 2250 0    50   ~ 0
7 inputs to read
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
L Device:Q_NPN_Darlington_BCE Q?
U 1 1 5E0E94DF
P 7400 4600
F 0 "Q?" H 7590 4646 50  0000 L CNN
F 1 "Q_NPN_Darlington_BCE" H 7590 4555 50  0000 L CNN
F 2 "" H 7600 4700 50  0001 C CNN
F 3 "~" H 7400 4600 50  0001 C CNN
	1    7400 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_PNP_BCE Q?
U 1 1 5E0EA248
P 7550 3900
F 0 "Q?" H 7740 3854 50  0000 L CNN
F 1 "Q_PNP_BCE" H 7740 3945 50  0000 L CNN
F 2 "" H 7750 4000 50  0001 C CNN
F 3 "~" H 7550 3900 50  0001 C CNN
	1    7550 3900
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E0EAF2D
P 7200 3900
F 0 "R?" V 7407 3900 50  0000 C CNN
F 1 "2.2k" V 7316 3900 50  0000 C CNN
F 2 "" V 7130 3900 50  0001 C CNN
F 3 "~" H 7200 3900 50  0001 C CNN
	1    7200 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8000 4550 9000 4550
Connection ~ 8000 4550
Wire Wire Line
	8000 4550 8000 5000
Wire Wire Line
	8700 2600 8700 3350
$Comp
L Device:R R?
U 1 1 5E0F2758
P 7050 4600
F 0 "R?" V 7257 4600 50  0000 C CNN
F 1 "2.2k" V 7166 4600 50  0000 C CNN
F 2 "" V 6980 4600 50  0001 C CNN
F 3 "~" H 7050 4600 50  0001 C CNN
	1    7050 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7200 5250 7500 5250
Connection ~ 7500 5250
Wire Wire Line
	7500 5250 7750 5250
Wire Wire Line
	7500 4800 7500 5250
Wire Wire Line
	7500 4400 9000 4400
Wire Wire Line
	7050 3900 6950 3900
$Comp
L Device:R R?
U 1 1 5E0FEFBE
P 7200 3550
F 0 "R?" V 7407 3550 50  0000 C CNN
F 1 "22k" V 7316 3550 50  0000 C CNN
F 2 "" V 7130 3550 50  0001 C CNN
F 3 "~" H 7200 3550 50  0001 C CNN
	1    7200 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7650 3700 7650 3550
Wire Wire Line
	7650 3550 8000 3550
Connection ~ 8000 3550
Wire Wire Line
	8000 3550 8000 4550
Wire Wire Line
	7350 3550 7650 3550
Connection ~ 7650 3550
Wire Wire Line
	7050 3550 7050 3900
Connection ~ 7050 3900
Wire Wire Line
	7650 4100 9000 4100
Wire Wire Line
	9000 3900 8700 3900
Connection ~ 8700 3900
Wire Wire Line
	8700 3900 8700 5250
Wire Wire Line
	9000 3350 8700 3350
Connection ~ 8700 3350
Wire Wire Line
	8700 3350 8700 3900
$Comp
L Device:Q_NPN_Darlington_BCE Q?
U 1 1 5E10C4F3
P 6750 3150
F 0 "Q?" H 6940 3196 50  0000 L CNN
F 1 "Q_NPN_Darlington_BCE" H 6940 3105 50  0000 L CNN
F 2 "" H 6950 3250 50  0001 C CNN
F 3 "~" H 6750 3150 50  0001 C CNN
	1    6750 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E10C4FD
P 6150 3150
F 0 "R?" V 6357 3150 50  0000 C CNN
F 1 "2.2k" V 6266 3150 50  0000 C CNN
F 2 "" V 6080 3150 50  0001 C CNN
F 3 "~" H 6150 3150 50  0001 C CNN
	1    6150 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 3150 6550 3150
$Comp
L Device:Q_PNP_BCE Q?
U 1 1 5E10C508
P 7450 2950
F 0 "Q?" H 7640 2904 50  0000 L CNN
F 1 "Q_PNP_BCE" H 7640 2995 50  0000 L CNN
F 2 "" H 7650 3050 50  0001 C CNN
F 3 "~" H 7450 2950 50  0001 C CNN
	1    7450 2950
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E10C512
P 7100 2950
F 0 "R?" V 7307 2950 50  0000 C CNN
F 1 "2.2k" V 7216 2950 50  0000 C CNN
F 2 "" V 7030 2950 50  0001 C CNN
F 3 "~" H 7100 2950 50  0001 C CNN
	1    7100 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6950 2950 6850 2950
$Comp
L Device:R R?
U 1 1 5E10C51D
P 7100 2600
F 0 "R?" V 7307 2600 50  0000 C CNN
F 1 "22k" V 7216 2600 50  0000 C CNN
F 2 "" V 7030 2600 50  0001 C CNN
F 3 "~" H 7100 2600 50  0001 C CNN
	1    7100 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7550 2750 7550 2600
Wire Wire Line
	7250 2600 7550 2600
Connection ~ 7550 2600
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
	7550 3450 8850 3450
Wire Wire Line
	8850 3450 8850 3550
Wire Wire Line
	8850 3550 9000 3550
Wire Wire Line
	7550 2600 8000 2600
Connection ~ 8000 2600
Wire Wire Line
	8000 2600 8000 3550
$Comp
L Device:D D?
U 1 1 5E119BF7
P 8400 4950
F 0 "D?" H 8400 5166 50  0000 C CNN
F 1 "D" H 8400 5075 50  0000 C CNN
F 2 "" H 8400 4950 50  0001 C CNN
F 3 "~" H 8400 4950 50  0001 C CNN
	1    8400 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 4950 8250 5000
Connection ~ 8250 5000
Wire Wire Line
	8250 5000 8000 5000
Wire Wire Line
	8550 4950 8550 4850
Connection ~ 8550 4850
Wire Wire Line
	8550 4850 9000 4850
Wire Wire Line
	8000 1650 8000 2600
$Comp
L Device:Q_NPN_Darlington_BCE Q?
U 1 1 5E1295CF
P 9850 1350
F 0 "Q?" H 10040 1396 50  0000 L CNN
F 1 "Q_NPN_Darlington_BCE" H 10040 1305 50  0000 L CNN
F 2 "" H 10050 1450 50  0001 C CNN
F 3 "~" H 9850 1350 50  0001 C CNN
	1    9850 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E1295D9
P 9250 1350
F 0 "R?" V 9457 1350 50  0000 C CNN
F 1 "2.2k" V 9366 1350 50  0000 C CNN
F 2 "" V 9180 1350 50  0001 C CNN
F 3 "~" H 9250 1350 50  0001 C CNN
	1    9250 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9400 1350 9650 1350
$Comp
L Device:Q_PNP_BCE Q?
U 1 1 5E1295E4
P 10550 1150
F 0 "Q?" H 10740 1104 50  0000 L CNN
F 1 "Q_PNP_BCE" H 10740 1195 50  0000 L CNN
F 2 "" H 10750 1250 50  0001 C CNN
F 3 "~" H 10550 1150 50  0001 C CNN
	1    10550 1150
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E1295EE
P 10200 1150
F 0 "R?" V 10407 1150 50  0000 C CNN
F 1 "2.2k" V 10316 1150 50  0000 C CNN
F 2 "" V 10130 1150 50  0001 C CNN
F 3 "~" H 10200 1150 50  0001 C CNN
	1    10200 1150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10050 1150 9950 1150
$Comp
L Device:R R?
U 1 1 5E1295F9
P 10200 800
F 0 "R?" V 10407 800 50  0000 C CNN
F 1 "22k" V 10316 800 50  0000 C CNN
F 2 "" V 10130 800 50  0001 C CNN
F 3 "~" H 10200 800 50  0001 C CNN
	1    10200 800 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10650 950  10650 800 
Wire Wire Line
	10350 800  10650 800 
Wire Wire Line
	10050 800  10050 1150
Connection ~ 10050 1150
$Comp
L Device:Q_NPN_Darlington_BCE Q?
U 1 1 5E13A0BB
P 5300 1850
F 0 "Q?" H 5490 1896 50  0000 L CNN
F 1 "Q_NPN_Darlington_BCE" H 5490 1805 50  0000 L CNN
F 2 "" H 5500 1950 50  0001 C CNN
F 3 "~" H 5300 1850 50  0001 C CNN
	1    5300 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E13A0C5
P 4700 1850
F 0 "R?" V 4907 1850 50  0000 C CNN
F 1 "2.2k" V 4816 1850 50  0000 C CNN
F 2 "" V 4630 1850 50  0001 C CNN
F 3 "~" H 4700 1850 50  0001 C CNN
	1    4700 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 1850 5100 1850
$Comp
L Device:Q_PNP_BCE Q?
U 1 1 5E13A0D0
P 6000 1650
F 0 "Q?" H 6190 1604 50  0000 L CNN
F 1 "Q_PNP_BCE" H 6190 1695 50  0000 L CNN
F 2 "" H 6200 1750 50  0001 C CNN
F 3 "~" H 6000 1650 50  0001 C CNN
	1    6000 1650
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E13A0DA
P 5650 1650
F 0 "R?" V 5857 1650 50  0000 C CNN
F 1 "2.2k" V 5766 1650 50  0000 C CNN
F 2 "" V 5580 1650 50  0001 C CNN
F 3 "~" H 5650 1650 50  0001 C CNN
	1    5650 1650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 1650 5400 1650
$Comp
L Device:R R?
U 1 1 5E13A0E5
P 5650 1300
F 0 "R?" V 5857 1300 50  0000 C CNN
F 1 "22k" V 5766 1300 50  0000 C CNN
F 2 "" V 5580 1300 50  0001 C CNN
F 3 "~" H 5650 1300 50  0001 C CNN
	1    5650 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 1450 6100 1300
Wire Wire Line
	5800 1300 6100 1300
Wire Wire Line
	5500 1300 5500 1650
Connection ~ 5500 1650
$Comp
L Device:Q_NPN_Darlington_BCE Q?
U 1 1 5E13EC7D
P 4650 2850
F 0 "Q?" H 4840 2896 50  0000 L CNN
F 1 "Q_NPN_Darlington_BCE" H 4840 2805 50  0000 L CNN
F 2 "" H 4850 2950 50  0001 C CNN
F 3 "~" H 4650 2850 50  0001 C CNN
	1    4650 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E13EC87
P 4050 2850
F 0 "R?" V 4257 2850 50  0000 C CNN
F 1 "2.2k" V 4166 2850 50  0000 C CNN
F 2 "" V 3980 2850 50  0001 C CNN
F 3 "~" H 4050 2850 50  0001 C CNN
	1    4050 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 2850 4450 2850
$Comp
L Device:Q_PNP_BCE Q?
U 1 1 5E13EC92
P 5350 2650
F 0 "Q?" H 5540 2604 50  0000 L CNN
F 1 "Q_PNP_BCE" H 5540 2695 50  0000 L CNN
F 2 "" H 5550 2750 50  0001 C CNN
F 3 "~" H 5350 2650 50  0001 C CNN
	1    5350 2650
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E13EC9C
P 5000 2650
F 0 "R?" V 5207 2650 50  0000 C CNN
F 1 "2.2k" V 5116 2650 50  0000 C CNN
F 2 "" V 4930 2650 50  0001 C CNN
F 3 "~" H 5000 2650 50  0001 C CNN
	1    5000 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 2650 4750 2650
$Comp
L Device:R R?
U 1 1 5E13ECA7
P 5000 2300
F 0 "R?" V 5207 2300 50  0000 C CNN
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
	6100 1850 8500 1850
Wire Wire Line
	8500 1850 8500 2800
Wire Wire Line
	8500 2800 9000 2800
Wire Wire Line
	5450 2850 6600 2850
Wire Wire Line
	6600 2850 6600 2250
Wire Wire Line
	6600 2250 8300 2250
Wire Wire Line
	8300 2250 8300 3000
Wire Wire Line
	8300 3000 9000 3000
Wire Wire Line
	4750 3050 5900 3050
Wire Wire Line
	5900 3050 5900 3500
Wire Wire Line
	5900 3500 6850 3500
Connection ~ 6850 3500
Wire Wire Line
	6850 3500 6850 5250
Wire Wire Line
	5400 2050 5900 2050
Wire Wire Line
	5900 2050 5900 3050
Connection ~ 5900 3050
$Comp
L Device:R R?
U 1 1 5E1687C7
P 3350 4950
F 0 "R?" V 3557 4950 50  0000 C CNN
F 1 "10k" V 3466 4950 50  0000 C CNN
F 2 "" V 3280 4950 50  0001 C CNN
F 3 "~" H 3350 4950 50  0001 C CNN
	1    3350 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E16A1FA
P 4250 4150
F 0 "#PWR?" H 4250 4000 50  0001 C CNN
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
	2150 5100 2150 4250
Wire Wire Line
	2150 4250 1650 4250
$Comp
L Device:R R?
U 1 1 5E17B774
P 3050 5150
F 0 "R?" V 3257 5150 50  0000 C CNN
F 1 "10k" V 3166 5150 50  0000 C CNN
F 2 "" V 2980 5150 50  0001 C CNN
F 3 "~" H 3050 5150 50  0001 C CNN
	1    3050 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4400 1650 4400
Wire Wire Line
	3050 5000 3050 4850
Wire Wire Line
	3050 4750 3350 4750
Connection ~ 3350 4750
Wire Wire Line
	3350 4750 3350 4800
$Comp
L Device:R R?
U 1 1 5E18A3DC
P 2850 5450
F 0 "R?" V 3057 5450 50  0000 C CNN
F 1 "10k" V 2966 5450 50  0000 C CNN
F 2 "" V 2780 5450 50  0001 C CNN
F 3 "~" H 2850 5450 50  0001 C CNN
	1    2850 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4550 1650 4550
Wire Wire Line
	2850 5300 2850 4950
Wire Wire Line
	2850 4850 3050 4850
Connection ~ 3050 4850
Wire Wire Line
	3050 4850 3050 4750
$Comp
L Device:R R?
U 1 1 5E19AF71
P 2650 5550
F 0 "R?" V 2857 5550 50  0000 C CNN
F 1 "10k" V 2766 5550 50  0000 C CNN
F 2 "" V 2580 5550 50  0001 C CNN
F 3 "~" H 2650 5550 50  0001 C CNN
	1    2650 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4700 1650 4700
Wire Wire Line
	2650 5400 2650 4950
Wire Wire Line
	2650 4950 2850 4950
Connection ~ 2850 4950
Wire Wire Line
	2850 4950 2850 4850
Connection ~ 3350 5100
Text Notes 3750 5150 0    50   ~ 0
~
Text Notes 4200 5200 0    50   ~ 0
~
Text Notes 4100 5250 0    50   ~ 0
~ 
$Comp
L MCU_Module:Arduino_UNO_R3 A?
U 1 1 5E167047
P 4350 5500
F 0 "A?" H 4350 6681 50  0000 C CNN
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
	2150 5100 3350 5100
Wire Wire Line
	3050 5300 3850 5300
Wire Wire Line
	3050 5300 2950 5300
Wire Wire Line
	2950 5300 2950 5250
Wire Wire Line
	2950 5250 2100 5250
Wire Wire Line
	2100 4400 2100 5250
Connection ~ 3050 5300
Wire Wire Line
	3850 5600 2850 5600
Wire Wire Line
	2850 5600 2050 5600
Wire Wire Line
	2050 4550 2050 5600
Connection ~ 2850 5600
Wire Wire Line
	3850 5700 2650 5700
Wire Wire Line
	2650 5700 2000 5700
Wire Wire Line
	2000 4700 2000 5700
Connection ~ 2650 5700
Wire Wire Line
	6300 5050 5250 5050
Wire Wire Line
	5250 5050 5250 6900
Wire Wire Line
	5250 6900 3550 6900
Wire Wire Line
	3550 6900 3550 6000
Wire Wire Line
	3550 6000 3850 6000
Wire Wire Line
	6900 4600 5150 4600
Wire Wire Line
	5150 4600 5150 6800
Wire Wire Line
	5150 6800 3650 6800
Wire Wire Line
	3650 6800 3650 5900
Wire Wire Line
	3650 5900 3850 5900
Wire Wire Line
	6100 4100 5050 4100
Wire Wire Line
	5050 4100 5050 6700
Wire Wire Line
	5050 6700 3450 6700
Wire Wire Line
	3450 6700 3450 5800
Wire Wire Line
	3450 5800 3850 5800
Wire Wire Line
	6000 3150 6000 3750
Wire Wire Line
	6000 3750 3700 3750
Wire Wire Line
	3700 3750 3700 5500
Wire Wire Line
	3700 5500 3850 5500
Wire Wire Line
	3900 2850 3900 3650
Wire Wire Line
	3900 3650 3600 3650
Wire Wire Line
	3600 3650 3600 5400
Wire Wire Line
	3600 5400 3850 5400
Wire Wire Line
	4550 1850 3550 1850
Wire Wire Line
	3550 1850 3550 5200
Wire Wire Line
	3550 5200 3850 5200
$Comp
L Device:R R?
U 1 1 5E0F06FF
P 2400 1200
F 0 "R?" V 2607 1200 50  0000 C CNN
F 1 "22k" V 2516 1200 50  0000 C CNN
F 2 "" V 2330 1200 50  0001 C CNN
F 3 "~" H 2400 1200 50  0001 C CNN
	1    2400 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 1200 1850 1200
Wire Wire Line
	1850 1200 1850 1500
Wire Wire Line
	1850 1500 1650 1500
Wire Wire Line
	4850 5500 4900 5500
Wire Wire Line
	4900 5500 4900 5450
Wire Wire Line
	4900 3200 3700 3200
Wire Wire Line
	3700 3200 3700 1200
Wire Wire Line
	3700 1200 2550 1200
$Comp
L Device:R R?
U 1 1 5E10520B
P 4950 5300
F 0 "R?" V 5157 5300 50  0000 C CNN
F 1 "10k" V 5066 5300 50  0000 C CNN
F 2 "" V 4880 5300 50  0001 C CNN
F 3 "~" H 4950 5300 50  0001 C CNN
	1    4950 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 5150 4900 5150
Wire Wire Line
	4900 5150 4900 4850
Wire Wire Line
	4950 5450 4900 5450
$Comp
L Device:R R?
U 1 1 5E11941E
P 5750 5350
F 0 "R?" V 5957 5350 50  0000 C CNN
F 1 "2k" V 5866 5350 50  0000 C CNN
F 2 "" V 5680 5350 50  0001 C CNN
F 3 "~" H 5750 5350 50  0001 C CNN
	1    5750 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5600 5350 5550 5350
Wire Wire Line
	5550 5350 5550 4850
Wire Wire Line
	5550 4850 4900 4850
Connection ~ 4900 4850
Wire Wire Line
	4900 4850 4900 3200
Wire Wire Line
	5900 5350 6850 5350
Wire Wire Line
	6850 5350 6850 5250
Connection ~ 6850 5250
$Comp
L Device:C C?
U 1 1 5E12E82D
P 5750 5700
F 0 "C?" V 6002 5700 50  0000 C CNN
F 1 "0.1 uF, 100V, ceramic" V 5911 5700 50  0000 C CNN
F 2 "" H 5788 5550 50  0001 C CNN
F 3 "~" H 5750 5700 50  0001 C CNN
	1    5750 5700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5600 5700 5600 5350
Connection ~ 5600 5350
Wire Wire Line
	5900 5700 5900 5350
Connection ~ 5900 5350
$EndSCHEMATC
