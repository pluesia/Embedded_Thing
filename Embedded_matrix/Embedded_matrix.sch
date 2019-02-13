EESchema Schematic File Version 4
EELAYER 26 0
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
L led_matrix7x5:TC20-11GWA U?
U 1 1 5C650474
P 5450 4250
F 0 "U?" H 5900 4700 50  0000 C CNN
F 1 "TC20-11GWA" H 5425 4674 50  0000 C CNN
F 2 "" H 5950 4450 50  0001 C CNN
F 3 "" H 5950 4450 50  0001 C CNN
	1    5450 4250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U?
U 1 1 5C6505AE
P 3750 3450
F 0 "U?" H 4000 2800 50  0000 C CNN
F 1 "74HC595" H 3450 4050 50  0000 C CNN
F 2 "" H 3750 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 3750 3450 50  0001 C CNN
	1    3750 3450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U?
U 1 1 5C650A49
P 3550 5700
F 0 "U?" H 3750 5050 50  0000 C CNN
F 1 "74HC595" H 3250 6300 50  0000 C CNN
F 2 "" H 3550 5700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 3550 5700 50  0001 C CNN
	1    3550 5700
	1    0    0    -1  
$EndComp
Text Label 4150 3050 0    50   ~ 0
C1
Text Label 6150 4100 0    50   ~ 0
C1
Text Label 4150 3150 0    50   ~ 0
C2
Text Label 4700 4200 2    50   ~ 0
C2
Text Label 4150 3250 0    50   ~ 0
C3
Text Label 4700 4300 2    50   ~ 0
C3
Text Label 6150 4300 0    50   ~ 0
C3
Text Label 4150 3350 0    50   ~ 0
C4
Text Label 6150 4400 0    50   ~ 0
C4
Text Label 4150 3450 0    50   ~ 0
C5
Text Label 4700 4500 2    50   ~ 0
C5
Text Label 4250 5300 0    50   ~ 0
R1
Text Label 6150 4500 0    50   ~ 0
R1
Text Label 4250 5400 0    50   ~ 0
R2
Text Label 6150 4000 0    50   ~ 0
R2
Text Label 4250 5500 0    50   ~ 0
R3
Text Label 6150 4600 0    50   ~ 0
R3
Text Label 4250 5600 0    50   ~ 0
R4
Text Label 4700 4400 2    50   ~ 0
R4
Text Label 6150 4200 0    50   ~ 0
R4
Text Label 4250 5700 0    50   ~ 0
R5
Text Label 4700 4000 2    50   ~ 0
R5
Text Label 4250 5800 0    50   ~ 0
R6
Text Label 4700 4600 2    50   ~ 0
R6
Text Label 4250 5900 0    50   ~ 0
R7
Text Label 4700 4100 2    50   ~ 0
R7
NoConn ~ 3950 6000
NoConn ~ 4150 3550
NoConn ~ 4150 3650
NoConn ~ 4150 3750
$Comp
L Device:R R?
U 1 1 5C651279
P 4100 5300
F 0 "R?" V 4000 5800 50  0000 C CNN
F 1 "560" V 4000 5650 50  0000 C CNN
F 2 "" V 4030 5300 50  0001 C CNN
F 3 "~" H 4100 5300 50  0001 C CNN
	1    4100 5300
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5C6513DE
P 4100 5400
F 0 "R?" V 4000 5900 50  0000 C CNN
F 1 "560" V 4000 5750 50  0000 C CNN
F 2 "" V 4030 5400 50  0001 C CNN
F 3 "~" H 4100 5400 50  0001 C CNN
	1    4100 5400
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5C6513F6
P 4100 5500
F 0 "R?" V 4000 6000 50  0000 C CNN
F 1 "560" V 4000 5850 50  0000 C CNN
F 2 "" V 4030 5500 50  0001 C CNN
F 3 "~" H 4100 5500 50  0001 C CNN
	1    4100 5500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5C65140F
P 4100 5600
F 0 "R?" V 4000 6100 50  0000 C CNN
F 1 "560" V 4000 5950 50  0000 C CNN
F 2 "" V 4030 5600 50  0001 C CNN
F 3 "~" H 4100 5600 50  0001 C CNN
	1    4100 5600
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5C651423
P 4100 5700
F 0 "R?" V 4000 6200 50  0000 C CNN
F 1 "560" V 4000 6050 50  0000 C CNN
F 2 "" V 4030 5700 50  0001 C CNN
F 3 "~" H 4100 5700 50  0001 C CNN
	1    4100 5700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5C651438
P 4100 5800
F 0 "R?" V 4000 6300 50  0000 C CNN
F 1 "560" V 4000 6150 50  0000 C CNN
F 2 "" V 4030 5800 50  0001 C CNN
F 3 "~" H 4100 5800 50  0001 C CNN
	1    4100 5800
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5C65144E
P 4100 5900
F 0 "R?" V 4000 6400 50  0000 C CNN
F 1 "560" V 4000 6250 50  0000 C CNN
F 2 "" V 4030 5900 50  0001 C CNN
F 3 "~" H 4100 5900 50  0001 C CNN
	1    4100 5900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C6516E5
P 3900 4250
F 0 "#PWR?" H 3900 4000 50  0001 C CNN
F 1 "GND" H 3905 4077 50  0000 C CNN
F 2 "" H 3900 4250 50  0001 C CNN
F 3 "" H 3900 4250 50  0001 C CNN
	1    3900 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C65171B
P 3650 6500
F 0 "#PWR?" H 3650 6250 50  0001 C CNN
F 1 "GND" H 3655 6327 50  0000 C CNN
F 2 "" H 3650 6500 50  0001 C CNN
F 3 "" H 3650 6500 50  0001 C CNN
	1    3650 6500
	1    0    0    -1  
$EndComp
Text Label 2900 3050 2    50   ~ 0
DATAIN
Text Label 2900 3250 2    50   ~ 0
CLOCK
Text Label 3150 5300 2    50   ~ 0
CHAIN
Text Label 4150 3950 0    50   ~ 0
CHAIN
Text Label 3150 5500 2    50   ~ 0
CLOCK
Wire Wire Line
	3350 3550 2900 3550
Text Label 2900 3550 2    50   ~ 0
STORE
Text Label 3150 5800 2    50   ~ 0
STORE
Wire Wire Line
	3350 3650 2900 3650
Text Label 2900 3650 2    50   ~ 0
OutputEnable
Text Label 3150 5900 2    50   ~ 0
OutputEnable
Wire Wire Line
	3950 6200 3950 6500
Text Label 3950 6500 0    50   ~ 0
OUTCHAIN
$Comp
L Connector:Conn_01x07_Male J?
U 1 1 5C6523E1
P 1150 4250
F 0 "J?" H 1256 4728 50  0000 C CNN
F 1 "Conn_01x07_Male" H 1256 4637 50  0000 C CNN
F 2 "" H 1150 4250 50  0001 C CNN
F 3 "~" H 1150 4250 50  0001 C CNN
	1    1150 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3250 2900 3250
Wire Wire Line
	3350 3050 2900 3050
Wire Wire Line
	1350 3950 1750 3950
Wire Wire Line
	1350 4050 1750 4050
Wire Wire Line
	1350 4150 1750 4150
Wire Wire Line
	1350 4250 1750 4250
Wire Wire Line
	1350 4350 1750 4350
Wire Wire Line
	1350 4450 1750 4450
Wire Wire Line
	1350 4550 1750 4550
Text Label 1750 3950 0    50   ~ 0
DATAIN
Text Label 1750 4050 0    50   ~ 0
CLOCK
Text Label 1750 4150 0    50   ~ 0
STORE
Text Label 1750 4250 0    50   ~ 0
OutputEnable
Wire Wire Line
	3750 4150 3750 4250
Wire Wire Line
	3750 4250 3900 4250
Wire Wire Line
	3550 6400 3550 6500
Wire Wire Line
	3550 6500 3650 6500
$Comp
L Connector:Conn_01x07_Female J?
U 1 1 5C654B1B
P 1150 5350
F 0 "J?" H 1044 4825 50  0000 C CNN
F 1 "Conn_01x07_Female" H 1044 4916 50  0000 C CNN
F 2 "" H 1150 5350 50  0001 C CNN
F 3 "~" H 1150 5350 50  0001 C CNN
	1    1150 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 5050 1650 5050
Wire Wire Line
	1350 5150 1650 5150
Wire Wire Line
	1350 5250 1650 5250
Wire Wire Line
	1350 5350 1650 5350
Wire Wire Line
	1350 5450 1650 5450
Wire Wire Line
	1350 5550 1650 5550
Wire Wire Line
	1350 5650 1650 5650
Text Label 1650 5550 0    50   ~ 0
CLOCK
Text Label 1650 5450 0    50   ~ 0
STORE
Text Label 1650 5650 0    50   ~ 0
OUTCHAIN
$Comp
L Device:C C?
U 1 1 5C656AB5
P 4050 2650
F 0 "C?" V 4200 2700 50  0000 L CNN
F 1 "0.1uF" V 4200 2450 50  0000 L CNN
F 2 "" H 4088 2500 50  0001 C CNN
F 3 "~" H 4050 2650 50  0001 C CNN
	1    4050 2650
	0    -1   -1   0   
$EndComp
NoConn ~ 1750 4350
$Comp
L power:GND #PWR?
U 1 1 5C6581A7
P 1750 4550
F 0 "#PWR?" H 1750 4300 50  0001 C CNN
F 1 "GND" H 1755 4377 50  0000 C CNN
F 2 "" H 1750 4550 50  0001 C CNN
F 3 "" H 1750 4550 50  0001 C CNN
	1    1750 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C65856C
P 1750 4450
F 0 "#PWR?" H 1750 4300 50  0001 C CNN
F 1 "+5V" V 1765 4578 50  0000 L CNN
F 2 "" H 1750 4450 50  0001 C CNN
F 3 "" H 1750 4450 50  0001 C CNN
	1    1750 4450
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C658957
P 1650 5150
F 0 "#PWR?" H 1650 5000 50  0001 C CNN
F 1 "+5V" V 1665 5278 50  0000 L CNN
F 2 "" H 1650 5150 50  0001 C CNN
F 3 "" H 1650 5150 50  0001 C CNN
	1    1650 5150
	0    1    1    0   
$EndComp
Text Label 1650 5350 0    50   ~ 0
OutputEnable
NoConn ~ 1650 5250
$Comp
L power:GND #PWR?
U 1 1 5C65A2DB
P 1650 5050
F 0 "#PWR?" H 1650 4800 50  0001 C CNN
F 1 "GND" V 1655 4922 50  0000 R CNN
F 2 "" H 1650 5050 50  0001 C CNN
F 3 "" H 1650 5050 50  0001 C CNN
	1    1650 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3750 2850 3750 2650
Wire Wire Line
	3750 2650 3900 2650
Wire Wire Line
	3750 2650 3450 2650
Wire Wire Line
	3450 2650 3450 2600
Connection ~ 3750 2650
Wire Wire Line
	4200 2650 4400 2650
$Comp
L power:GND #PWR?
U 1 1 5C65BB73
P 4400 2650
F 0 "#PWR?" H 4400 2400 50  0001 C CNN
F 1 "GND" H 4405 2477 50  0000 C CNN
F 2 "" H 4400 2650 50  0001 C CNN
F 3 "" H 4400 2650 50  0001 C CNN
	1    4400 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C65BBB6
P 3450 2600
F 0 "#PWR?" H 3450 2450 50  0001 C CNN
F 1 "+5V" H 3465 2773 50  0000 C CNN
F 2 "" H 3450 2600 50  0001 C CNN
F 3 "" H 3450 2600 50  0001 C CNN
	1    3450 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C65BD7F
P 3850 4900
F 0 "C?" V 4000 4950 50  0000 L CNN
F 1 "0.1uF" V 4000 4700 50  0000 L CNN
F 2 "" H 3888 4750 50  0001 C CNN
F 3 "~" H 3850 4900 50  0001 C CNN
	1    3850 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3550 5100 3550 4900
Wire Wire Line
	3550 4900 3700 4900
Wire Wire Line
	3550 4900 3250 4900
Wire Wire Line
	3250 4900 3250 4850
Connection ~ 3550 4900
Wire Wire Line
	4000 4900 4200 4900
$Comp
L power:GND #PWR?
U 1 1 5C65BD8C
P 4200 4900
F 0 "#PWR?" H 4200 4650 50  0001 C CNN
F 1 "GND" H 4205 4727 50  0000 C CNN
F 2 "" H 4200 4900 50  0001 C CNN
F 3 "" H 4200 4900 50  0001 C CNN
	1    4200 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C65BD92
P 3250 4850
F 0 "#PWR?" H 3250 4700 50  0001 C CNN
F 1 "+5V" H 3265 5023 50  0000 C CNN
F 2 "" H 3250 4850 50  0001 C CNN
F 3 "" H 3250 4850 50  0001 C CNN
	1    3250 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C65D786
P 3200 3350
F 0 "R?" V 3100 3400 50  0000 C CNN
F 1 "10k" V 3100 3250 50  0000 C CNN
F 2 "" V 3130 3350 50  0001 C CNN
F 3 "~" H 3200 3350 50  0001 C CNN
	1    3200 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5C65D861
P 3000 5600
F 0 "R?" V 3100 5900 50  0000 C CNN
F 1 "10k" V 3100 5750 50  0000 C CNN
F 2 "" V 2930 5600 50  0001 C CNN
F 3 "~" H 3000 5600 50  0001 C CNN
	1    3000 5600
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C65D8D6
P 2850 5600
F 0 "#PWR?" H 2850 5450 50  0001 C CNN
F 1 "+5V" V 2865 5728 50  0000 L CNN
F 2 "" H 2850 5600 50  0001 C CNN
F 3 "" H 2850 5600 50  0001 C CNN
	1    2850 5600
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C65D938
P 3050 3350
F 0 "#PWR?" H 3050 3200 50  0001 C CNN
F 1 "+5V" V 3065 3478 50  0000 L CNN
F 2 "" H 3050 3350 50  0001 C CNN
F 3 "" H 3050 3350 50  0001 C CNN
	1    3050 3350
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
