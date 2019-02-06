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
L MCU_ST_STM32F4:STM32F411RETx U2
U 1 1 5C5B6215
P 4550 4450
F 0 "U2" H 4550 2564 50  0000 C CNN
F 1 "STM32F411RETx" H 4550 2473 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 3950 2750 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00115249.pdf" H 4550 4450 50  0001 C CNN
	1    4550 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_OTG J1
U 1 1 5C5B62B9
P 1100 1000
F 0 "J1" H 1155 1467 50  0000 C CNN
F 1 "USB_OTG" H 1155 1376 50  0000 C CNN
F 2 "" H 1250 950 50  0001 C CNN
F 3 " ~" H 1250 950 50  0001 C CNN
	1    1100 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1400 1100 1450
Wire Wire Line
	1100 1450 1050 1450
Wire Wire Line
	1000 1450 1000 1400
$Comp
L power:GND #PWR0101
U 1 1 5C5B6375
P 1050 1450
F 0 "#PWR0101" H 1050 1200 50  0001 C CNN
F 1 "GND" H 1055 1277 50  0000 C CNN
F 2 "" H 1050 1450 50  0001 C CNN
F 3 "" H 1050 1450 50  0001 C CNN
	1    1050 1450
	1    0    0    -1  
$EndComp
Connection ~ 1050 1450
Wire Wire Line
	1050 1450 1000 1450
Wire Wire Line
	1400 800  1500 800 
$Comp
L power:+5V #PWR0102
U 1 1 5C5B63CE
P 1500 800
F 0 "#PWR0102" H 1500 650 50  0001 C CNN
F 1 "+5V" H 1515 973 50  0000 C CNN
F 2 "" H 1500 800 50  0001 C CNN
F 3 "" H 1500 800 50  0001 C CNN
	1    1500 800 
	1    0    0    -1  
$EndComp
Connection ~ 1500 800 
Wire Wire Line
	1500 800  1750 800 
$Comp
L Device:C C2
U 1 1 5C5B6419
P 1750 950
F 0 "C2" H 1865 996 50  0000 L CNN
F 1 "100nF" H 1865 905 50  0000 L CNN
F 2 "" H 1788 800 50  0001 C CNN
F 3 "~" H 1750 950 50  0001 C CNN
	1    1750 950 
	1    0    0    -1  
$EndComp
Connection ~ 1750 800 
Wire Wire Line
	1750 800  2400 800 
$Comp
L Device:C C7
U 1 1 5C5B651C
P 2950 950
F 0 "C7" H 3065 996 50  0000 L CNN
F 1 "100nF" H 3065 905 50  0000 L CNN
F 2 "" H 2988 800 50  0001 C CNN
F 3 "~" H 2950 950 50  0001 C CNN
	1    2950 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C5
U 1 1 5C5B65E3
P 2400 950
F 0 "C5" H 2518 996 50  0000 L CNN
F 1 "10µF" H 2518 905 50  0000 L CNN
F 2 "" H 2438 800 50  0001 C CNN
F 3 "~" H 2400 950 50  0001 C CNN
	1    2400 950 
	1    0    0    -1  
$EndComp
Connection ~ 2400 800 
Wire Wire Line
	2400 800  2950 800 
$Comp
L power:GND #PWR0103
U 1 1 5C5B668D
P 1750 1100
F 0 "#PWR0103" H 1750 850 50  0001 C CNN
F 1 "GND" H 1755 927 50  0000 C CNN
F 2 "" H 1750 1100 50  0001 C CNN
F 3 "" H 1750 1100 50  0001 C CNN
	1    1750 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5C5B66B3
P 2400 1100
F 0 "#PWR0104" H 2400 850 50  0001 C CNN
F 1 "GND" H 2405 927 50  0000 C CNN
F 2 "" H 2400 1100 50  0001 C CNN
F 3 "" H 2400 1100 50  0001 C CNN
	1    2400 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5C5B66E5
P 2950 1100
F 0 "#PWR0105" H 2950 850 50  0001 C CNN
F 1 "GND" H 2955 927 50  0000 C CNN
F 2 "" H 2950 1100 50  0001 C CNN
F 3 "" H 2950 1100 50  0001 C CNN
	1    2950 1100
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1117-ADJ U1
U 1 1 5C5B6889
P 3600 800
F 0 "U1" H 3600 1042 50  0000 C CNN
F 1 "LM1117-ADJ" H 3600 951 50  0000 C CNN
F 2 "" H 3600 800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 3600 800 50  0001 C CNN
	1    3600 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 800  3300 800 
Connection ~ 2950 800 
Wire Wire Line
	3900 800  4000 800 
$Comp
L power:+3V3 #PWR0106
U 1 1 5C5B6B13
P 5450 800
F 0 "#PWR0106" H 5450 650 50  0001 C CNN
F 1 "+3V3" H 5465 973 50  0000 C CNN
F 2 "" H 5450 800 50  0001 C CNN
F 3 "" H 5450 800 50  0001 C CNN
	1    5450 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5C5B6D80
P 4000 950
F 0 "R1" H 4070 996 50  0000 L CNN
F 1 "100" H 4070 905 50  0000 L CNN
F 2 "" V 3930 950 50  0001 C CNN
F 3 "~" H 4000 950 50  0001 C CNN
	1    4000 950 
	1    0    0    -1  
$EndComp
Connection ~ 4000 800 
Wire Wire Line
	4000 800  4400 800 
$Comp
L Device:R R2
U 1 1 5C5B6E19
P 4000 1250
F 0 "R2" H 4070 1296 50  0000 L CNN
F 1 "220" H 4070 1205 50  0000 L CNN
F 2 "" V 3930 1250 50  0001 C CNN
F 3 "~" H 4000 1250 50  0001 C CNN
	1    4000 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5C5B6ED9
P 4000 1550
F 0 "R3" H 4070 1596 50  0000 L CNN
F 1 "180" H 4070 1505 50  0000 L CNN
F 2 "" V 3930 1550 50  0001 C CNN
F 3 "~" H 4000 1550 50  0001 C CNN
	1    4000 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5C5B7092
P 4000 1900
F 0 "R4" H 4070 1946 50  0000 L CNN
F 1 "820" H 4070 1855 50  0000 L CNN
F 2 "" V 3930 1900 50  0001 C CNN
F 3 "~" H 4000 1900 50  0001 C CNN
	1    4000 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1750 4000 1750
Wire Wire Line
	3600 1100 3600 1750
Wire Wire Line
	4000 1700 4000 1750
Connection ~ 4000 1750
$Comp
L power:GND #PWR0107
U 1 1 5C5B7388
P 4000 2050
F 0 "#PWR0107" H 4000 1800 50  0001 C CNN
F 1 "GND" H 4005 1877 50  0000 C CNN
F 2 "" H 4000 2050 50  0001 C CNN
F 3 "" H 4000 2050 50  0001 C CNN
	1    4000 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C10
U 1 1 5C5B73DC
P 4850 950
F 0 "C10" H 4968 996 50  0000 L CNN
F 1 "10µF" H 4968 905 50  0000 L CNN
F 2 "" H 4888 800 50  0001 C CNN
F 3 "~" H 4850 950 50  0001 C CNN
	1    4850 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5C5B73E3
P 4850 1100
F 0 "#PWR0108" H 4850 850 50  0001 C CNN
F 1 "GND" H 4855 927 50  0000 C CNN
F 2 "" H 4850 1100 50  0001 C CNN
F 3 "" H 4850 1100 50  0001 C CNN
	1    4850 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5C5B74C2
P 4400 950
F 0 "C9" H 4515 996 50  0000 L CNN
F 1 "100nF" H 4515 905 50  0000 L CNN
F 2 "" H 4438 800 50  0001 C CNN
F 3 "~" H 4400 950 50  0001 C CNN
	1    4400 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5C5B74C9
P 4400 1100
F 0 "#PWR0109" H 4400 850 50  0001 C CNN
F 1 "GND" H 4405 927 50  0000 C CNN
F 2 "" H 4400 1100 50  0001 C CNN
F 3 "" H 4400 1100 50  0001 C CNN
	1    4400 1100
	1    0    0    -1  
$EndComp
Connection ~ 4850 800 
Wire Wire Line
	4850 800  5450 800 
Connection ~ 4400 800 
Wire Wire Line
	4400 800  4850 800 
Wire Wire Line
	4350 2750 4350 2650
Wire Wire Line
	4350 2650 4450 2650
Wire Wire Line
	4750 2750 4750 2650
Wire Wire Line
	4650 2750 4650 2650
Connection ~ 4650 2650
Wire Wire Line
	4650 2650 4750 2650
Wire Wire Line
	4550 2750 4550 2650
Connection ~ 4550 2650
Wire Wire Line
	4550 2650 4600 2650
Wire Wire Line
	4450 2750 4450 2650
Connection ~ 4450 2650
Wire Wire Line
	4450 2650 4550 2650
Wire Wire Line
	4600 2650 4600 2600
Connection ~ 4600 2650
Wire Wire Line
	4600 2650 4650 2650
$Comp
L power:+3V3 #PWR0110
U 1 1 5C5B8202
P 4600 2600
F 0 "#PWR0110" H 4600 2450 50  0001 C CNN
F 1 "+3V3" H 4615 2773 50  0000 C CNN
F 2 "" H 4600 2600 50  0001 C CNN
F 3 "" H 4600 2600 50  0001 C CNN
	1    4600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2250 5050 2250
Wire Wire Line
	5500 2250 5500 2100
$Comp
L power:+3V3 #PWR0111
U 1 1 5C5B8759
P 5500 2100
F 0 "#PWR0111" H 5500 1950 50  0001 C CNN
F 1 "+3V3" H 5515 2273 50  0000 C CNN
F 2 "" H 5500 2100 50  0001 C CNN
F 3 "" H 5500 2100 50  0001 C CNN
	1    5500 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5C5B8A34
P 5450 2400
F 0 "C12" H 5565 2446 50  0000 L CNN
F 1 "100nF" H 5565 2355 50  0000 L CNN
F 2 "" H 5488 2250 50  0001 C CNN
F 3 "~" H 5450 2400 50  0001 C CNN
	1    5450 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5C5B8A3B
P 5450 2550
F 0 "#PWR0112" H 5450 2300 50  0001 C CNN
F 1 "GND" H 5455 2377 50  0000 C CNN
F 2 "" H 5450 2550 50  0001 C CNN
F 3 "" H 5450 2550 50  0001 C CNN
	1    5450 2550
	1    0    0    -1  
$EndComp
Connection ~ 5450 2250
Wire Wire Line
	5450 2250 5500 2250
Wire Wire Line
	4850 2250 4850 2750
$Comp
L Device:C C11
U 1 1 5C5B9C16
P 5050 2400
F 0 "C11" H 5165 2446 50  0000 L CNN
F 1 "1µF" H 5165 2355 50  0000 L CNN
F 2 "" H 5088 2250 50  0001 C CNN
F 3 "~" H 5050 2400 50  0001 C CNN
	1    5050 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5C5B9C1D
P 5050 2550
F 0 "#PWR0113" H 5050 2300 50  0001 C CNN
F 1 "GND" H 5055 2377 50  0000 C CNN
F 2 "" H 5050 2550 50  0001 C CNN
F 3 "" H 5050 2550 50  0001 C CNN
	1    5050 2550
	1    0    0    -1  
$EndComp
Connection ~ 5050 2250
Wire Wire Line
	5050 2250 5450 2250
Wire Wire Line
	4350 6250 4350 6350
Wire Wire Line
	4350 6350 4450 6350
Wire Wire Line
	4750 6350 4750 6250
Wire Wire Line
	4650 6250 4650 6350
Connection ~ 4650 6350
Wire Wire Line
	4650 6350 4750 6350
Wire Wire Line
	4550 6250 4550 6350
Connection ~ 4550 6350
Wire Wire Line
	4550 6350 4650 6350
Wire Wire Line
	4450 6250 4450 6350
Connection ~ 4450 6350
Wire Wire Line
	4450 6350 4550 6350
Wire Wire Line
	4550 6350 4550 6450
$Comp
L power:GND #PWR0114
U 1 1 5C5BBE53
P 4550 6450
F 0 "#PWR0114" H 4550 6200 50  0001 C CNN
F 1 "GND" H 4555 6277 50  0000 C CNN
F 2 "" H 4550 6450 50  0001 C CNN
F 3 "" H 4550 6450 50  0001 C CNN
	1    4550 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5C5BBFAA
P 1300 3050
F 0 "C1" H 1415 3096 50  0000 L CNN
F 1 "100nF" H 1415 3005 50  0000 L CNN
F 2 "" H 1338 2900 50  0001 C CNN
F 3 "~" H 1300 3050 50  0001 C CNN
	1    1300 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5C5BC620
P 1750 3050
F 0 "C3" H 1865 3096 50  0000 L CNN
F 1 "100nF" H 1865 3005 50  0000 L CNN
F 2 "" H 1788 2900 50  0001 C CNN
F 3 "~" H 1750 3050 50  0001 C CNN
	1    1750 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5C5BCBF8
P 2200 3050
F 0 "C4" H 2315 3096 50  0000 L CNN
F 1 "100nF" H 2315 3005 50  0000 L CNN
F 2 "" H 2238 2900 50  0001 C CNN
F 3 "~" H 2200 3050 50  0001 C CNN
	1    2200 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5C5BD1C9
P 2650 3050
F 0 "C6" H 2765 3096 50  0000 L CNN
F 1 "100nF" H 2765 3005 50  0000 L CNN
F 2 "" H 2688 2900 50  0001 C CNN
F 3 "~" H 2650 3050 50  0001 C CNN
	1    2650 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5C5BDD89
P 3100 3050
F 0 "C8" H 3215 3096 50  0000 L CNN
F 1 "4.7µF" H 3215 3005 50  0000 L CNN
F 2 "" H 3138 2900 50  0001 C CNN
F 3 "~" H 3100 3050 50  0001 C CNN
	1    3100 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2900 1300 2800
Wire Wire Line
	1300 2800 1750 2800
Wire Wire Line
	3100 2800 3100 2900
Wire Wire Line
	2650 2900 2650 2800
Connection ~ 2650 2800
Wire Wire Line
	2650 2800 3100 2800
Wire Wire Line
	2200 2900 2200 2800
Connection ~ 2200 2800
Wire Wire Line
	2200 2800 2650 2800
Wire Wire Line
	1750 2900 1750 2800
Connection ~ 1750 2800
Wire Wire Line
	1750 2800 2200 2800
Wire Wire Line
	1300 3200 1300 3300
Wire Wire Line
	1300 3300 1750 3300
Wire Wire Line
	3100 3300 3100 3200
Wire Wire Line
	2650 3200 2650 3300
Connection ~ 2650 3300
Wire Wire Line
	2650 3300 3100 3300
Wire Wire Line
	2200 3200 2200 3300
Connection ~ 2200 3300
Wire Wire Line
	2200 3300 2650 3300
Wire Wire Line
	1750 3200 1750 3300
Connection ~ 1750 3300
Wire Wire Line
	1750 3300 2200 3300
Wire Wire Line
	2200 3300 2200 3400
Wire Wire Line
	2200 2800 2200 2650
$Comp
L power:GND #PWR0115
U 1 1 5C5C7AD7
P 2200 3400
F 0 "#PWR0115" H 2200 3150 50  0001 C CNN
F 1 "GND" H 2205 3227 50  0000 C CNN
F 2 "" H 2200 3400 50  0001 C CNN
F 3 "" H 2200 3400 50  0001 C CNN
	1    2200 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0116
U 1 1 5C5C7B3B
P 2200 2650
F 0 "#PWR0116" H 2200 2500 50  0001 C CNN
F 1 "+3.3V" H 2215 2823 50  0000 C CNN
F 2 "" H 2200 2650 50  0001 C CNN
F 3 "" H 2200 2650 50  0001 C CNN
	1    2200 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2 J2
U 1 1 5C5D57A2
P 6250 1350
F 0 "J2" H 6280 1675 50  0000 C CNN
F 1 "AudioJack2" H 6280 1584 50  0000 C CNN
F 2 "" H 6250 1350 50  0001 C CNN
F 3 "~" H 6250 1350 50  0001 C CNN
	1    6250 1350
	1    0    0    -1  
$EndComp
$EndSCHEMATC