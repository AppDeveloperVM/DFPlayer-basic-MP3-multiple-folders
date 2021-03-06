EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Arduino NANO Microphone project"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 5150 4550
NoConn ~ 5150 4450
Wire Wire Line
	4750 3800 4750 3900
Wire Wire Line
	4750 3950 4850 3950
Wire Wire Line
	4850 3950 4850 4050
Wire Wire Line
	5150 4950 5150 4850
NoConn ~ 5150 5150
NoConn ~ 5150 5250
NoConn ~ 5150 5350
NoConn ~ 5150 5450
NoConn ~ 5150 5550
NoConn ~ 5150 5650
NoConn ~ 5150 4950
NoConn ~ 3950 3000
NoConn ~ 3950 3100
NoConn ~ 5250 3100
NoConn ~ 5250 3000
NoConn ~ 5250 2900
NoConn ~ 5250 2800
NoConn ~ 5250 3200
NoConn ~ 5250 3300
NoConn ~ 5250 3400
$Comp
L Connector:Conn_01x03_Female J2
U 1 1 60D3E65B
P 3450 3300
F 0 "J2" H 3342 2975 50  0000 C CNN
F 1 "Conn_01x03_Female" H 3342 3066 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3450 3300 50  0001 C CNN
F 3 "~" H 3450 3300 50  0001 C CNN
	1    3450 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 3200 3950 3200
Wire Wire Line
	3950 3400 3700 3400
Wire Wire Line
	3700 3400 3700 3300
Wire Wire Line
	3700 3300 3650 3300
Wire Wire Line
	3650 3400 3650 3550
Wire Wire Line
	3950 3300 3850 3300
$Comp
L Device:R_Small R2
U 1 1 60E1C497
P 3000 2800
F 0 "R2" H 3059 2846 50  0000 L CNN
F 1 "R" H 3059 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3000 2800 50  0001 C CNN
F 3 "~" H 3000 2800 50  0001 C CNN
	1    3000 2800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 60E1BDF4
P 2900 2900
F 0 "R1" H 2959 2946 50  0000 L CNN
F 1 "R" H 2959 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2900 2900 50  0001 C CNN
F 3 "~" H 2900 2900 50  0001 C CNN
	1    2900 2900
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x04_Female J4
U 1 1 60E3B1BC
P 3450 6300
F 0 "J4" V 3342 6012 50  0000 R CNN
F 1 "Conn_01x04_Female" V 3297 6012 50  0001 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3450 6300 50  0001 C CNN
F 3 "~" H 3450 6300 50  0001 C CNN
	1    3450 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 2800 3950 2800
Wire Wire Line
	3000 2900 3950 2900
Text Notes 3200 6450 0    50   Italic 0
BTNS MUSIC
$Comp
L Connector:Conn_01x03_Female J6
U 1 1 60E52FA0
P 4750 7100
F 0 "J6" V 4642 7248 50  0000 L CNN
F 1 "Conn_01x03_Female" V 4687 7248 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4750 7100 50  0001 C CNN
F 3 "~" H 4750 7100 50  0001 C CNN
	1    4750 7100
	0    1    1    0   
$EndComp
Text Notes 4450 7200 0    50   Italic 0
VOLTIMETRO
Wire Wire Line
	4850 6900 4850 6700
Wire Wire Line
	4750 3900 5350 3900
Wire Wire Line
	4650 6550 4650 6900
Connection ~ 4750 3900
Wire Wire Line
	4750 3900 4750 3950
Wire Wire Line
	3550 6000 3550 6100
Wire Wire Line
	3350 5250 3350 6100
Wire Wire Line
	3450 6100 3450 5350
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 60E9E6D2
P 2700 5150
F 0 "J1" H 2592 4825 50  0000 C CNN
F 1 " " H 2592 4916 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2700 5150 50  0001 C CNN
F 3 "~" H 2700 5150 50  0001 C CNN
	1    2700 5150
	-1   0    0    1   
$EndComp
Text Notes 2350 5300 1    50   Italic 0
BTN POWER
Wire Wire Line
	5150 5050 5250 5050
NoConn ~ 5150 5750
Wire Wire Line
	4750 6450 4750 6900
$Comp
L Device:R_Small R3
U 1 1 60ED20C2
P 3300 4350
F 0 "R3" V 3196 4350 50  0000 C CNN
F 1 "R_Small" V 3195 4350 50  0001 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3300 4350 50  0001 C CNN
F 3 "~" H 3300 4350 50  0001 C CNN
	1    3300 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 60EEA273
P 3000 5050
F 0 "R5" V 2804 5050 50  0000 C CNN
F 1 "R_Small" V 2895 5050 50  0001 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3000 5050 50  0001 C CNN
F 3 "~" H 3000 5050 50  0001 C CNN
	1    3000 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 5450 2000 2900
Wire Wire Line
	2000 2900 2800 2900
Wire Wire Line
	2000 5450 4150 5450
Wire Wire Line
	4150 5550 1900 5550
Wire Wire Line
	1900 5550 1900 2800
Wire Wire Line
	1900 2800 2900 2800
Text Notes 3100 4200 2    50   Italic 0
LED 1
Wire Wire Line
	3250 5150 3250 6100
Wire Wire Line
	2900 5150 2900 5300
Wire Wire Line
	3100 5050 4150 5050
Text Notes 4450 2250 0    50   Italic 0
DFPLAYER
Text Notes 4400 6300 0    50   Italic 0
ARDUINO NANO
Wire Wire Line
	5250 6450 4750 6450
Wire Wire Line
	5250 5050 5250 6450
Wire Wire Line
	4650 6550 5350 6550
Wire Wire Line
	5350 3900 5350 6550
NoConn ~ 4750 4050
$Comp
L Connector:Conn_01x03_Male J7
U 1 1 60E7ECFB
P 4750 3600
F 0 "J7" V 4812 3744 50  0000 L CNN
F 1 "Conn_01x03_Male" V 4903 3744 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4750 3600 50  0001 C CNN
F 3 "~" H 4750 3600 50  0001 C CNN
	1    4750 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 3800 4650 4000
Wire Wire Line
	4650 4000 4550 4000
Wire Wire Line
	4550 4000 4550 4050
$Comp
L Mechanical:MountingHole H1
U 1 1 60E6D69A
P 1700 2550
F 0 "H1" H 1800 2596 50  0000 L CNN
F 1 "MountingHole" H 1800 2505 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 1700 2550 50  0001 C CNN
F 3 "~" H 1700 2550 50  0001 C CNN
	1    1700 2550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60E6E1B9
P 5700 2600
F 0 "H2" H 5800 2646 50  0000 L CNN
F 1 "MountingHole" H 5800 2555 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 5700 2600 50  0001 C CNN
F 3 "~" H 5700 2600 50  0001 C CNN
	1    5700 2600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 60E6F0B1
P 1150 7250
F 0 "H3" H 1250 7296 50  0000 L CNN
F 1 "MountingHole" H 1250 7205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 1150 7250 50  0001 C CNN
F 3 "~" H 1150 7250 50  0001 C CNN
	1    1150 7250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 60E6FCD5
P 5850 7250
F 0 "H4" H 5950 7296 50  0000 L CNN
F 1 "MountingHole" H 5950 7205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 5850 7250 50  0001 C CNN
F 3 "~" H 5850 7250 50  0001 C CNN
	1    5850 7250
	1    0    0    -1  
$EndComp
NoConn ~ 4150 4450
NoConn ~ 4150 4550
NoConn ~ 4150 4850
Wire Wire Line
	4150 4650 4050 4650
Wire Wire Line
	4050 4650 4050 3550
Wire Wire Line
	4050 3550 5400 3550
Wire Wire Line
	5400 3550 5400 2700
Wire Wire Line
	5400 2700 5250 2700
Wire Wire Line
	3300 2700 3950 2700
Wire Wire Line
	3300 3900 3300 2700
Text Notes 3400 3750 1    50   Italic 0
SALIDA SPEAKER
NoConn ~ 4150 5650
NoConn ~ 4150 5750
$Comp
L DFR0299:DFR0299 U1
U 1 1 60B10216
P 3950 2700
F 0 "U1" H 4600 2965 50  0000 C CNN
F 1 "DFR0299" H 4600 2874 50  0000 C CNN
F 2 "DFR0299:DIPS1778W50P254L2100H170Q16N" H 5100 2800 50  0001 L CNN
F 3 "https://github.com/Arduinolibrary/DFPlayer_Mini_mp3/raw/master/DFPlayer%20Mini%20Manual.pdf" H 5100 2700 50  0001 L CNN
F 4 "DFRobot Accessories DFPlayer" H 5100 2600 50  0001 L CNN "Description"
F 5 "1.7" H 5100 2500 50  0001 L CNN "Height"
F 6 "DFRobot" H 5100 2400 50  0001 L CNN "Manufacturer_Name"
F 7 "DFR0299" H 5100 2300 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "426-DFR0299" H 5100 2200 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/DFRobot/DFR0299?qs=Zcin8yvlhnPSNhqM2hweWw%3D%3D" H 5100 2100 50  0001 L CNN "Mouser Price/Stock"
F 10 "DFR0299" H 5100 2000 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/dfr0299/dfrobot" H 5100 1900 50  0001 L CNN "Arrow Price/Stock"
	1    3950 2700
	1    0    0    -1  
$EndComp
$Comp
L kiCAD_projects-rescue:Arduino_Nano_v3.x-MCU_Module A1
U 1 1 60AE7ECE
P 4650 5050
F 0 "A1" H 4650 3961 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 4650 3870 50  0001 C CNN
F 2 "Arduino:Arduino_Nano_Socket" H 4650 5050 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 4650 5050 50  0001 C CNN
	1    4650 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3900 3300 3900
Wire Wire Line
	3650 3550 3850 3550
Connection ~ 3850 3550
Wire Wire Line
	3850 3300 3850 3550
$Comp
L power:GND #PWR04
U 1 1 60D4511C
P 3850 3550
F 0 "#PWR04" H 3850 3300 50  0001 C CNN
F 1 "GND" H 3855 3377 50  0000 C CNN
F 2 "" H 3850 3550 50  0001 C CNN
F 3 "" H 3850 3550 50  0001 C CNN
	1    3850 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 6050 4750 6050
$Comp
L power:GND #PWR08
U 1 1 60B2C0EB
P 4850 3800
F 0 "#PWR08" H 4850 3550 50  0001 C CNN
F 1 "GND" H 4855 3627 50  0001 C CNN
F 2 "" H 4850 3800 50  0001 C CNN
F 3 "" H 4850 3800 50  0001 C CNN
	1    4850 3800
	1    0    0    -1  
$EndComp
Connection ~ 4750 6050
$Comp
L power:GND #PWR07
U 1 1 60D110F0
P 4750 6050
F 0 "#PWR07" H 4750 5800 50  0001 C CNN
F 1 "GND" H 4755 5877 50  0001 C CNN
F 2 "" H 4750 6050 50  0001 C CNN
F 3 "" H 4750 6050 50  0001 C CNN
	1    4750 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 5300 2650 5300
$Comp
L power:GND #PWR03
U 1 1 60E9F4A1
P 2650 5300
F 0 "#PWR03" H 2650 5050 50  0001 C CNN
F 1 "GND" H 2655 5127 50  0000 C CNN
F 2 "" H 2650 5300 50  0001 C CNN
F 3 "" H 2650 5300 50  0001 C CNN
	1    2650 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 60E3DC2B
P 3650 6000
F 0 "#PWR05" H 3650 5750 50  0001 C CNN
F 1 "GND" H 3655 5827 50  0000 C CNN
F 2 "" H 3650 6000 50  0001 C CNN
F 3 "" H 3650 6000 50  0001 C CNN
	1    3650 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 6700 4850 6700
Wire Wire Line
	5000 6750 5000 6700
$Comp
L power:GND #PWR06
U 1 1 60E549F1
P 5000 6750
F 0 "#PWR06" H 5000 6500 50  0001 C CNN
F 1 "GND" H 5005 6577 50  0000 C CNN
F 2 "" H 5000 6750 50  0001 C CNN
F 3 "" H 5000 6750 50  0001 C CNN
	1    5000 6750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J3
U 1 1 61081FD0
P 3200 4050
F 0 "J3" V 3138 3862 50  0000 R CNN
F 1 "Conn_01x02_Female" V 3047 3862 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3200 4050 50  0001 C CNN
F 3 "~" H 3200 4050 50  0001 C CNN
	1    3200 4050
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x02_Female J5
U 1 1 610831BA
P 5800 4000
F 0 "J5" V 5738 3812 50  0000 R CNN
F 1 "Conn_01x02_Female" V 5647 3812 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5800 4000 50  0001 C CNN
F 3 "~" H 5800 4000 50  0001 C CNN
	1    5800 4000
	0    -1   -1   0   
$EndComp
Text Notes 5800 3900 0    50   Italic 0
LED 2
$Comp
L Device:R_Small R4
U 1 1 60ED2CF3
P 5900 4300
F 0 "R4" V 5796 4300 50  0000 C CNN
F 1 "R_Small" V 5795 4300 50  0001 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5900 4300 50  0001 C CNN
F 3 "~" H 5900 4300 50  0001 C CNN
	1    5900 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4450 3300 4950
Wire Wire Line
	3300 4950 4150 4950
Wire Wire Line
	5900 4400 5450 4400
Wire Wire Line
	3250 5150 4150 5150
Wire Wire Line
	3350 5250 4150 5250
Wire Wire Line
	3450 5350 4150 5350
Wire Wire Line
	3900 4750 4150 4750
Wire Wire Line
	5450 4400 5450 6400
Wire Wire Line
	3900 4750 3900 6400
Wire Wire Line
	3900 6400 5450 6400
Wire Wire Line
	3550 6000 3650 6000
Wire Wire Line
	3200 4250 3000 4250
Wire Wire Line
	3000 4250 3000 4350
Wire Wire Line
	5800 4200 5650 4200
Wire Wire Line
	5650 4200 5650 4250
$Comp
L power:GND #PWR0101
U 1 1 610A7661
P 5650 4250
F 0 "#PWR0101" H 5650 4000 50  0001 C CNN
F 1 "GND" H 5655 4077 50  0000 C CNN
F 2 "" H 5650 4250 50  0001 C CNN
F 3 "" H 5650 4250 50  0001 C CNN
	1    5650 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 610A7E72
P 3000 4350
F 0 "#PWR0102" H 3000 4100 50  0001 C CNN
F 1 "GND" H 3005 4177 50  0000 C CNN
F 2 "" H 3000 4350 50  0001 C CNN
F 3 "" H 3000 4350 50  0001 C CNN
	1    3000 4350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x20_Male J10
U 1 1 610AA5B5
P 3900 1650
F 0 "J10" V 3735 1578 50  0000 C CNN
F 1 "Conn_01x20_Male" V 3826 1578 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x20_P2.54mm_Vertical" H 3900 1650 50  0001 C CNN
F 3 "~" H 3900 1650 50  0001 C CNN
	1    3900 1650
	0    1    1    0   
$EndComp
$EndSCHEMATC
