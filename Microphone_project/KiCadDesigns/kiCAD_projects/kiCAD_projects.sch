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
$Comp
L power:GND #PWR0102
U 1 1 60B08086
P 6500 4400
F 0 "#PWR0102" H 6500 4150 50  0001 C CNN
F 1 "GND" H 6505 4227 50  0000 C CNN
F 2 "" H 6500 4400 50  0001 C CNN
F 3 "" H 6500 4400 50  0001 C CNN
	1    6500 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3500 6500 3400
NoConn ~ 6500 3100
NoConn ~ 6500 3000
Wire Wire Line
	5500 2900 5500 2600
$Comp
L Connector:Conn_01x15_Male J1
U 1 1 60AF31B3
P 5300 3600
F 0 "J1" H 5408 4481 50  0000 C CNN
F 1 "Conn_01x15_Male" H 5408 4390 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x15_P2.54mm_Vertical" H 5300 3600 50  0001 C CNN
F 3 "~" H 5300 3600 50  0001 C CNN
	1    5300 3600
	1    0    0    -1  
$EndComp
Text Label 5300 4000 0    50   ~ 0
DF1
Text Label 5300 4100 0    50   ~ 0
DF2
Text Label 5300 1850 0    50   ~ 0
GND
$Comp
L Mechanical:MountingHole H3
U 1 1 60B14590
P 6800 1150
F 0 "H3" H 6900 1196 50  0000 L CNN
F 1 "MountingHole" H 6900 1105 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 6800 1150 50  0001 C CNN
F 3 "~" H 6800 1150 50  0001 C CNN
	1    6800 1150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 60B15CE2
P 6750 4650
F 0 "H4" H 6850 4696 50  0000 L CNN
F 1 "MountingHole" H 6850 4605 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 6750 4650 50  0001 C CNN
F 3 "~" H 6750 4650 50  0001 C CNN
	1    6750 4650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60B16466
P 5150 4650
F 0 "H2" H 5250 4696 50  0000 L CNN
F 1 "MountingHole" H 5250 4605 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 5150 4650 50  0001 C CNN
F 3 "~" H 5150 4650 50  0001 C CNN
	1    5150 4650
	1    0    0    -1  
$EndComp
Text Label 6500 4500 0    50   ~ 0
GND
$Comp
L Connector:Conn_01x10_Male J2
U 1 1 60B02FD3
P 6700 4000
F 0 "J2" H 6672 3882 50  0000 R CNN
F 1 "Conn_01x10_Male" H 6672 3973 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 6700 4000 50  0001 C CNN
F 3 "~" H 6700 4000 50  0001 C CNN
	1    6700 4000
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 60B254E3
P 6100 2150
F 0 "J3" V 6162 2294 50  0000 L CNN
F 1 "Conn_01x04_Male" V 6253 2294 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6100 2150 50  0001 C CNN
F 3 "~" H 6100 2150 50  0001 C CNN
	1    6100 2150
	0    1    1    0   
$EndComp
Text Label 5300 1350 0    50   ~ 0
DF1
Text Label 5300 1450 0    50   ~ 0
DF2
$Comp
L DFR0299:DFR0299 U1
U 1 1 60B10216
P 5300 1250
F 0 "U1" H 5950 1515 50  0000 C CNN
F 1 "DFR0299" H 5950 1424 50  0000 C CNN
F 2 "DFR0299:DIPS1778W50P254L2100H170Q16N" H 6450 1350 50  0001 L CNN
F 3 "https://github.com/Arduinolibrary/DFPlayer_Mini_mp3/raw/master/DFPlayer%20Mini%20Manual.pdf" H 6450 1250 50  0001 L CNN
F 4 "DFRobot Accessories DFPlayer" H 6450 1150 50  0001 L CNN "Description"
F 5 "1.7" H 6450 1050 50  0001 L CNN "Height"
F 6 "DFRobot" H 6450 950 50  0001 L CNN "Manufacturer_Name"
F 7 "DFR0299" H 6450 850 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "426-DFR0299" H 6450 750 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/DFRobot/DFR0299?qs=Zcin8yvlhnPSNhqM2hweWw%3D%3D" H 6450 650 50  0001 L CNN "Mouser Price/Stock"
F 10 "DFR0299" H 6450 550 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/dfr0299/dfrobot" H 6450 450 50  0001 L CNN "Arrow Price/Stock"
	1    5300 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 60B2C0EB
P 6200 2350
F 0 "#PWR0103" H 6200 2100 50  0001 C CNN
F 1 "GND" H 6205 2177 50  0000 C CNN
F 2 "" H 6200 2350 50  0001 C CNN
F 3 "" H 6200 2350 50  0001 C CNN
	1    6200 2350
	1    0    0    -1  
$EndComp
$Comp
L kiCAD_projects-rescue:Arduino_Nano_v3.x-MCU_Module A1
U 1 1 60AE7ECE
P 6000 3600
F 0 "A1" H 6000 2511 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 6000 2420 50  0000 C CNN
F 2 "Arduino:Arduino_Nano_Socket" H 6000 3600 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 6000 3600 50  0001 C CNN
	1    6000 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2350 6100 2500
Wire Wire Line
	6100 2500 6200 2500
Wire Wire Line
	6200 2500 6200 2600
Wire Wire Line
	6000 2350 6000 2550
Wire Wire Line
	6000 2550 6100 2550
Wire Wire Line
	6100 2550 6100 2600
Wire Wire Line
	5900 2350 5900 2600
$Comp
L Mechanical:MountingHole H1
U 1 1 60B14D24
P 4650 1200
F 0 "H1" H 4750 1246 50  0000 L CNN
F 1 "MountingHole" H 4750 1155 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 4650 1200 50  0001 C CNN
F 3 "~" H 4650 1200 50  0001 C CNN
	1    4650 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 60B017CC
P 4750 2650
F 0 "#PWR0101" H 4750 2400 50  0001 C CNN
F 1 "GND" H 4755 2477 50  0000 C CNN
F 2 "" H 4750 2650 50  0001 C CNN
F 3 "" H 4750 2650 50  0001 C CNN
	1    4750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2600 5500 2600
Wire Wire Line
	4750 2600 4750 2650
Text Label 4750 2750 0    50   ~ 0
GND
$EndSCHEMATC
