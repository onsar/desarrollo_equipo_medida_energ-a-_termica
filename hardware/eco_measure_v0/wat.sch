EESchema Schematic File Version 4
LIBS:wat-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "EcoPower"
Date ""
Rev ""
Comp "iotlibre"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR?
U 1 1 5FF18B7C
P 1005 995
F 0 "#PWR?" H 1005 745 50  0001 C CNN
F 1 "GND" H 1005 845 50  0000 C CNN
F 2 "" H 1005 995 50  0000 C CNN
F 3 "" H 1005 995 50  0000 C CNN
	1    1005 995 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5FF18B7D
P 1005 945
F 0 "#FLG?" H 1005 1040 50  0001 C CNN
F 1 "PWR_FLAG" H 1005 1125 50  0000 C CNN
F 2 "" H 1005 945 50  0000 C CNN
F 3 "" H 1005 945 50  0000 C CNN
	1    1005 945 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5FF18B7E
P 1505 945
F 0 "#FLG?" H 1505 1040 50  0001 C CNN
F 1 "PWR_FLAG" H 1505 1125 50  0000 C CNN
F 2 "" H 1505 945 50  0000 C CNN
F 3 "" H 1505 945 50  0000 C CNN
	1    1505 945 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5FF18B7F
P 1505 1095
F 0 "#PWR?" H 1505 945 50  0001 C CNN
F 1 "VCC" H 1505 1245 50  0000 C CNN
F 2 "" H 1505 1095 50  0000 C CNN
F 3 "" H 1505 1095 50  0000 C CNN
	1    1505 1095
	-1   0    0    1   
$EndComp
$Comp
L wat-rescue:Conn_02x05_Odd_Even J?
U 1 1 5D4CBA5C
P 9385 1750
F 0 "J?" H 9435 2050 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 9435 1450 50  0000 C CNN
F 2 "oscar_libreria_huellas:Pin_Header_Straight_2x05_Pitch2.54mm_onsar" H 9385 1750 50  0001 C CNN
F 3 "" H 9385 1750 50  0001 C CNN
	1    9385 1750
	1    0    0    -1  
$EndComp
Text Label 8750 1950 0    60   ~ 0
vcc_5v
$Comp
L power:GND #PWR?
U 1 1 5FF18B82
P 1460 2605
F 0 "#PWR?" H 1460 2355 50  0001 C CNN
F 1 "GND" H 1460 2455 50  0000 C CNN
F 2 "" H 1460 2605 50  0000 C CNN
F 3 "" H 1460 2605 50  0000 C CNN
	1    1460 2605
	-1   0    0    -1  
$EndComp
$Comp
L wat-rescue:CONN_01X02 P?
U 1 1 5FF18B83
P 1260 2175
F 0 "P?" H 1260 2325 50  0000 C CNN
F 1 "V_IN" V 1360 2175 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 1260 2175 50  0001 C CNN
F 3 "" H 1260 2175 50  0000 C CNN
	1    1260 2175
	-1   0    0    1   
$EndComp
$Comp
L wat-rescue:CP1 C?
U 1 1 5FF18B84
P 2285 2375
F 0 "C?" H 2310 2475 50  0000 L CNN
F 1 "10uF" H 2310 2275 50  0000 L CNN
F 2 "Capacitors_SMD:C_2220_HandSoldering" H 2285 2375 50  0001 C CNN
F 3 "" H 2285 2375 50  0000 C CNN
	1    2285 2375
	1    0    0    -1  
$EndComp
$Comp
L wat-rescue:D D?
U 1 1 5D4E44AF
P 2010 2125
F 0 "D?" H 2010 2225 50  0000 C CNN
F 1 "schottky" H 2010 2025 50  0000 C CNN
F 2 "Diodes_SMD:D_2114" H 2010 2125 50  0001 C CNN
F 3 "" H 2010 2125 50  0000 C CNN
	1    2010 2125
	-1   0    0    1   
$EndComp
$Comp
L wat-rescue:TEST_1P W?
U 1 1 5FF18B86
P 2285 2125
F 0 "W?" H 2285 2395 50  0000 C CNN
F 1 "+5V" H 2285 2325 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 2485 2125 50  0001 C CNN
F 3 "" H 2485 2125 50  0000 C CNN
	1    2285 2125
	1    0    0    -1  
$EndComp
Text Label 2510 2125 0    60   ~ 0
vin_5V
Text Label 1500 2125 0    60   ~ 0
vcc_5v
$Comp
L nano1:NANO U?
U 1 1 5D4E51E2
P 5830 2035
F 0 "U?" H 6180 3035 50  0000 C CNN
F 1 "NANO" H 5830 2885 50  0000 C CNN
F 2 "libreria_huellas_proyecto:arduino_nano" H 5530 1235 50  0001 C CNN
F 3 "DOCUMENTATION" H 5680 1185 50  0001 C CNN
	1    5830 2035
	1    0    0    -1  
$EndComp
Text Label 6640 1635 0    60   ~ 0
vin_5V
NoConn ~ 5080 1535
NoConn ~ 5080 2035
NoConn ~ 6580 1335
NoConn ~ 6580 1535
NoConn ~ 6580 2535
NoConn ~ 6580 2635
Text Label 1505 1020 0    60   ~ 0
vin_5V
Wire Wire Line
	1505 945  1505 1095
Wire Wire Line
	1005 945  1005 995 
Wire Wire Line
	8750 1550 9185 1550
Wire Wire Line
	8750 1650 9185 1650
Wire Wire Line
	8750 1850 9185 1850
Wire Wire Line
	2285 2125 2285 2225
Connection ~ 2285 2125
Wire Wire Line
	2160 2125 2285 2125
Wire Wire Line
	1460 2125 1860 2125
Wire Wire Line
	1460 2225 1460 2605
Wire Wire Line
	1460 2605 2285 2605
Wire Wire Line
	2285 2605 2285 2525
Connection ~ 1460 2605
Wire Notes Line
	7000 1185 7000 2875
Wire Notes Line
	7000 2875 7010 2875
Wire Wire Line
	6580 1635 7000 1635
Wire Wire Line
	6580 1735 7000 1735
Wire Wire Line
	6580 1835 7000 1835
Wire Wire Line
	6580 1935 7000 1935
Wire Wire Line
	6580 2035 7000 2035
Wire Wire Line
	6580 2335 7000 2335
Wire Wire Line
	6580 2435 7000 2435
Wire Wire Line
	6580 2135 7000 2135
Wire Wire Line
	6580 1435 6995 1435
Wire Notes Line
	4475 1190 4475 2880
Text Label 8750 1850 0    60   ~ 0
vcc_5v
Wire Wire Line
	9185 1950 8750 1950
Text Label 8750 1550 0    60   ~ 0
ard_tx
Text Label 8750 1650 0    60   ~ 0
ard_rx
Wire Wire Line
	5080 1735 4475 1735
Text Label 4570 1935 0    60   ~ 0
ard_d4
Wire Wire Line
	9685 1850 10110 1850
Text Label 1005 965  0    60   ~ 0
GND
Text Label 8750 1750 0    60   ~ 0
GND
Wire Wire Line
	9185 1750 8750 1750
Wire Wire Line
	9685 1950 10110 1950
Text Label 9760 1950 0    60   ~ 0
GND
Wire Wire Line
	5080 1835 4475 1835
Wire Wire Line
	5080 1935 4475 1935
NoConn ~ 4875 -920
Wire Wire Line
	2285 2125 2935 2125
Wire Wire Line
	5080 1335 4475 1335
Wire Wire Line
	5080 1435 4475 1435
Wire Wire Line
	5080 1635 4475 1635
Wire Wire Line
	6580 2235 7000 2235
Text Label 6640 1435 0    60   ~ 0
GND
Text Label 4570 1635 0    60   ~ 0
GND
Wire Wire Line
	5080 2135 4475 2135
Wire Wire Line
	5080 2235 4475 2235
Wire Wire Line
	5080 2335 4475 2335
Wire Wire Line
	5080 2435 4475 2435
Wire Wire Line
	5080 2535 4475 2535
Wire Wire Line
	5080 2635 4475 2635
Wire Wire Line
	5080 2735 4475 2735
Wire Wire Line
	6580 2735 7000 2735
Wire Notes Line
	10110 1550 10110 1950
Wire Wire Line
	9685 1550 10110 1550
Wire Wire Line
	9685 1650 10110 1650
Wire Wire Line
	9685 1750 10110 1750
$Comp
L wat-rescue:C C?
U 1 1 5FF5070E
P 13930 3270
F 0 "C?" H 13955 3370 50  0000 L CNN
F 1 "100nF" H 13955 3170 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 13968 3120 50  0001 C CNN
F 3 "" H 13930 3270 50  0000 C CNN
	1    13930 3270
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5FF50715
P 12940 3050
F 0 "J?" H 12860 2825 50  0000 C CNN
F 1 "Conn_01x01" H 12860 2916 50  0000 C CNN
F 2 "" H 12940 3050 50  0001 C CNN
F 3 "~" H 12940 3050 50  0001 C CNN
	1    12940 3050
	-1   0    0    1   
$EndComp
$Comp
L wat-rescue:R R?
U 1 1 5FF5071C
P 13620 3270
F 0 "R?" H 13505 3345 50  0000 C CNN
F 1 "10k" V 13620 3270 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 13550 3270 50  0001 C CNN
F 3 "" H 13620 3270 50  0000 C CNN
	1    13620 3270
	-1   0    0    1   
$EndComp
$Comp
L wat-rescue:R R?
U 1 1 5FF50723
P 13330 3050
F 0 "R?" V 13410 3050 50  0000 C CNN
F 1 "10k" V 13330 3050 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 13260 3050 50  0001 C CNN
F 3 "" H 13330 3050 50  0000 C CNN
	1    13330 3050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF50732
P 13930 3420
F 0 "#PWR?" H 13930 3170 50  0001 C CNN
F 1 "GND" H 13930 3270 50  0000 C CNN
F 2 "" H 13930 3420 50  0000 C CNN
F 3 "" H 13930 3420 50  0000 C CNN
	1    13930 3420
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF50738
P 13620 3420
F 0 "#PWR?" H 13620 3170 50  0001 C CNN
F 1 "GND" H 13620 3270 50  0000 C CNN
F 2 "" H 13620 3420 50  0000 C CNN
F 3 "" H 13620 3420 50  0000 C CNN
	1    13620 3420
	-1   0    0    -1  
$EndComp
Text Label 14100 3050 0    60   ~ 0
D2
$Comp
L wat-rescue:R R?
U 1 1 5FF55C55
P 13620 2830
F 0 "R?" V 13700 2830 50  0000 C CNN
F 1 "10k" V 13620 2830 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 13550 2830 50  0001 C CNN
F 3 "" H 13620 2830 50  0000 C CNN
	1    13620 2830
	-1   0    0    1   
$EndComp
Text Label 13620 2570 0    60   ~ 0
vin_5V
Wire Wire Line
	13930 3120 13930 3050
Connection ~ 13930 3050
Wire Wire Line
	13930 3050 14260 3050
Wire Wire Line
	13620 2980 13620 3050
Connection ~ 13620 3050
Wire Wire Line
	13620 3050 13930 3050
Wire Wire Line
	13620 3120 13620 3050
Wire Wire Line
	13620 2680 13620 2500
Wire Wire Line
	13140 3050 13180 3050
Wire Wire Line
	13480 3050 13620 3050
$Comp
L wat-rescue:C C?
U 1 1 5FF955E2
P 1920 5710
F 0 "C?" H 1945 5810 50  0000 L CNN
F 1 "100nF" H 1945 5610 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 1958 5560 50  0001 C CNN
F 3 "" H 1920 5710 50  0000 C CNN
	1    1920 5710
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5FF955E9
P 930 5490
F 0 "J?" H 850 5265 50  0000 C CNN
F 1 "Conn_01x01" H 850 5356 50  0000 C CNN
F 2 "" H 930 5490 50  0001 C CNN
F 3 "~" H 930 5490 50  0001 C CNN
	1    930  5490
	-1   0    0    1   
$EndComp
$Comp
L wat-rescue:R R?
U 1 1 5FF955F0
P 1610 5710
F 0 "R?" H 1495 5785 50  0000 C CNN
F 1 "10k" V 1610 5710 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 1540 5710 50  0001 C CNN
F 3 "" H 1610 5710 50  0000 C CNN
	1    1610 5710
	-1   0    0    1   
$EndComp
$Comp
L wat-rescue:R R?
U 1 1 5FF955F7
P 1320 5490
F 0 "R?" V 1400 5490 50  0000 C CNN
F 1 "10k" V 1320 5490 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 1250 5490 50  0001 C CNN
F 3 "" H 1320 5490 50  0000 C CNN
	1    1320 5490
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF955FE
P 1920 5860
F 0 "#PWR?" H 1920 5610 50  0001 C CNN
F 1 "GND" H 1920 5710 50  0000 C CNN
F 2 "" H 1920 5860 50  0000 C CNN
F 3 "" H 1920 5860 50  0000 C CNN
	1    1920 5860
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF95604
P 1610 5860
F 0 "#PWR?" H 1610 5610 50  0001 C CNN
F 1 "GND" H 1610 5710 50  0000 C CNN
F 2 "" H 1610 5860 50  0000 C CNN
F 3 "" H 1610 5860 50  0000 C CNN
	1    1610 5860
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1920 5560 1920 5490
Connection ~ 1920 5490
Wire Wire Line
	1920 5490 2250 5490
Connection ~ 1610 5490
Wire Wire Line
	1610 5490 1920 5490
Wire Wire Line
	1610 5560 1610 5490
Wire Wire Line
	1130 5490 1170 5490
Wire Wire Line
	1470 5490 1610 5490
Text Label 2060 5490 0    60   ~ 0
A0
$Comp
L wat-rescue:C C?
U 1 1 5FFB1A03
P 1270 4610
F 0 "C?" H 1295 4710 50  0000 L CNN
F 1 "100nF" H 1295 4510 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 1308 4460 50  0001 C CNN
F 3 "" H 1270 4610 50  0000 C CNN
	1    1270 4610
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5FFB1A0A
P 930 4390
F 0 "J?" H 850 4165 50  0000 C CNN
F 1 "Conn_01x01" H 850 4256 50  0000 C CNN
F 2 "" H 930 4390 50  0001 C CNN
F 3 "~" H 930 4390 50  0001 C CNN
	1    930  4390
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFB1A25
P 1270 4760
F 0 "#PWR?" H 1270 4510 50  0001 C CNN
F 1 "GND" H 1270 4610 50  0000 C CNN
F 2 "" H 1270 4760 50  0000 C CNN
F 3 "" H 1270 4760 50  0000 C CNN
	1    1270 4760
	-1   0    0    -1  
$EndComp
Text Label 1530 4390 0    60   ~ 0
D2
$Comp
L wat-rescue:R R?
U 1 1 5FFB1A2C
P 1270 4170
F 0 "R?" V 1350 4170 50  0000 C CNN
F 1 "10k" V 1270 4170 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 1200 4170 50  0001 C CNN
F 3 "" H 1270 4170 50  0000 C CNN
	1    1270 4170
	-1   0    0    1   
$EndComp
Text Label 1270 3910 0    60   ~ 0
vin_5V
Wire Wire Line
	1270 4320 1270 4390
Connection ~ 1270 4390
Wire Wire Line
	1270 4460 1270 4390
Wire Wire Line
	1270 4020 1270 3840
Wire Wire Line
	1130 4390 1270 4390
Wire Wire Line
	1270 4390 1700 4390
$Comp
L wat-rescue:C C?
U 1 1 5FFCF401
P 3540 5710
F 0 "C?" H 3565 5810 50  0000 L CNN
F 1 "100nF" H 3565 5610 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3578 5560 50  0001 C CNN
F 3 "" H 3540 5710 50  0000 C CNN
	1    3540 5710
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5FFCF408
P 2550 5490
F 0 "J?" H 2470 5265 50  0000 C CNN
F 1 "Conn_01x01" H 2470 5356 50  0000 C CNN
F 2 "" H 2550 5490 50  0001 C CNN
F 3 "~" H 2550 5490 50  0001 C CNN
	1    2550 5490
	-1   0    0    1   
$EndComp
$Comp
L wat-rescue:R R?
U 1 1 5FFCF40F
P 3230 5710
F 0 "R?" H 3115 5785 50  0000 C CNN
F 1 "10k" V 3230 5710 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 3160 5710 50  0001 C CNN
F 3 "" H 3230 5710 50  0000 C CNN
	1    3230 5710
	-1   0    0    1   
$EndComp
$Comp
L wat-rescue:R R?
U 1 1 5FFCF416
P 2940 5490
F 0 "R?" V 3020 5490 50  0000 C CNN
F 1 "10k" V 2940 5490 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 2870 5490 50  0001 C CNN
F 3 "" H 2940 5490 50  0000 C CNN
	1    2940 5490
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFCF41D
P 3540 5860
F 0 "#PWR?" H 3540 5610 50  0001 C CNN
F 1 "GND" H 3540 5710 50  0000 C CNN
F 2 "" H 3540 5860 50  0000 C CNN
F 3 "" H 3540 5860 50  0000 C CNN
	1    3540 5860
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFCF423
P 3230 5860
F 0 "#PWR?" H 3230 5610 50  0001 C CNN
F 1 "GND" H 3230 5710 50  0000 C CNN
F 2 "" H 3230 5860 50  0000 C CNN
F 3 "" H 3230 5860 50  0000 C CNN
	1    3230 5860
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3540 5560 3540 5490
Connection ~ 3540 5490
Wire Wire Line
	3540 5490 3870 5490
Connection ~ 3230 5490
Wire Wire Line
	3230 5490 3540 5490
Wire Wire Line
	3230 5560 3230 5490
Wire Wire Line
	2750 5490 2790 5490
Wire Wire Line
	3090 5490 3230 5490
Text Label 3680 5490 0    60   ~ 0
A0
$Comp
L wat-rescue:C C?
U 1 1 5FFD4082
P 5170 5710
F 0 "C?" H 5195 5810 50  0000 L CNN
F 1 "100nF" H 5195 5610 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5208 5560 50  0001 C CNN
F 3 "" H 5170 5710 50  0000 C CNN
	1    5170 5710
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5FFD4089
P 4180 5490
F 0 "J?" H 4100 5265 50  0000 C CNN
F 1 "Conn_01x01" H 4100 5356 50  0000 C CNN
F 2 "" H 4180 5490 50  0001 C CNN
F 3 "~" H 4180 5490 50  0001 C CNN
	1    4180 5490
	-1   0    0    1   
$EndComp
$Comp
L wat-rescue:R R?
U 1 1 5FFD4090
P 4860 5710
F 0 "R?" H 4745 5785 50  0000 C CNN
F 1 "10k" V 4860 5710 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 4790 5710 50  0001 C CNN
F 3 "" H 4860 5710 50  0000 C CNN
	1    4860 5710
	-1   0    0    1   
$EndComp
$Comp
L wat-rescue:R R?
U 1 1 5FFD4097
P 4570 5490
F 0 "R?" V 4650 5490 50  0000 C CNN
F 1 "10k" V 4570 5490 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 4500 5490 50  0001 C CNN
F 3 "" H 4570 5490 50  0000 C CNN
	1    4570 5490
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFD409E
P 5170 5860
F 0 "#PWR?" H 5170 5610 50  0001 C CNN
F 1 "GND" H 5170 5710 50  0000 C CNN
F 2 "" H 5170 5860 50  0000 C CNN
F 3 "" H 5170 5860 50  0000 C CNN
	1    5170 5860
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFD40A4
P 4860 5860
F 0 "#PWR?" H 4860 5610 50  0001 C CNN
F 1 "GND" H 4860 5710 50  0000 C CNN
F 2 "" H 4860 5860 50  0000 C CNN
F 3 "" H 4860 5860 50  0000 C CNN
	1    4860 5860
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5170 5560 5170 5490
Connection ~ 5170 5490
Wire Wire Line
	5170 5490 5500 5490
Connection ~ 4860 5490
Wire Wire Line
	4860 5490 5170 5490
Wire Wire Line
	4860 5560 4860 5490
Wire Wire Line
	4380 5490 4420 5490
Wire Wire Line
	4720 5490 4860 5490
Text Label 5310 5490 0    60   ~ 0
A0
$Comp
L wat-rescue:C C?
U 1 1 5FFD40B3
P 6880 5710
F 0 "C?" H 6905 5810 50  0000 L CNN
F 1 "100nF" H 6905 5610 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 6918 5560 50  0001 C CNN
F 3 "" H 6880 5710 50  0000 C CNN
	1    6880 5710
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5FFD40BA
P 5890 5490
F 0 "J?" H 5810 5265 50  0000 C CNN
F 1 "Conn_01x01" H 5810 5356 50  0000 C CNN
F 2 "" H 5890 5490 50  0001 C CNN
F 3 "~" H 5890 5490 50  0001 C CNN
	1    5890 5490
	-1   0    0    1   
$EndComp
$Comp
L wat-rescue:R R?
U 1 1 5FFD40C1
P 6570 5710
F 0 "R?" H 6455 5785 50  0000 C CNN
F 1 "10k" V 6570 5710 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 6500 5710 50  0001 C CNN
F 3 "" H 6570 5710 50  0000 C CNN
	1    6570 5710
	-1   0    0    1   
$EndComp
$Comp
L wat-rescue:R R?
U 1 1 5FFD40C8
P 6280 5490
F 0 "R?" V 6360 5490 50  0000 C CNN
F 1 "10k" V 6280 5490 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 6210 5490 50  0001 C CNN
F 3 "" H 6280 5490 50  0000 C CNN
	1    6280 5490
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFD40CF
P 6880 5860
F 0 "#PWR?" H 6880 5610 50  0001 C CNN
F 1 "GND" H 6880 5710 50  0000 C CNN
F 2 "" H 6880 5860 50  0000 C CNN
F 3 "" H 6880 5860 50  0000 C CNN
	1    6880 5860
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFD40D5
P 6570 5860
F 0 "#PWR?" H 6570 5610 50  0001 C CNN
F 1 "GND" H 6570 5710 50  0000 C CNN
F 2 "" H 6570 5860 50  0000 C CNN
F 3 "" H 6570 5860 50  0000 C CNN
	1    6570 5860
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6880 5560 6880 5490
Connection ~ 6880 5490
Wire Wire Line
	6880 5490 7210 5490
Connection ~ 6570 5490
Wire Wire Line
	6570 5490 6880 5490
Wire Wire Line
	6570 5560 6570 5490
Wire Wire Line
	6090 5490 6130 5490
Wire Wire Line
	6430 5490 6570 5490
Text Label 7020 5490 0    60   ~ 0
A0
$Comp
L wat-rescue:C C?
U 1 1 5FFD79D3
P 8530 5710
F 0 "C?" H 8555 5810 50  0000 L CNN
F 1 "100nF" H 8555 5610 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 8568 5560 50  0001 C CNN
F 3 "" H 8530 5710 50  0000 C CNN
	1    8530 5710
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5FFD79DA
P 7540 5490
F 0 "J?" H 7460 5265 50  0000 C CNN
F 1 "Conn_01x01" H 7460 5356 50  0000 C CNN
F 2 "" H 7540 5490 50  0001 C CNN
F 3 "~" H 7540 5490 50  0001 C CNN
	1    7540 5490
	-1   0    0    1   
$EndComp
$Comp
L wat-rescue:R R?
U 1 1 5FFD79E1
P 8220 5710
F 0 "R?" H 8105 5785 50  0000 C CNN
F 1 "10k" V 8220 5710 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 8150 5710 50  0001 C CNN
F 3 "" H 8220 5710 50  0000 C CNN
	1    8220 5710
	-1   0    0    1   
$EndComp
$Comp
L wat-rescue:R R?
U 1 1 5FFD79E8
P 7930 5490
F 0 "R?" V 8010 5490 50  0000 C CNN
F 1 "10k" V 7930 5490 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 7860 5490 50  0001 C CNN
F 3 "" H 7930 5490 50  0000 C CNN
	1    7930 5490
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFD79EF
P 8530 5860
F 0 "#PWR?" H 8530 5610 50  0001 C CNN
F 1 "GND" H 8530 5710 50  0000 C CNN
F 2 "" H 8530 5860 50  0000 C CNN
F 3 "" H 8530 5860 50  0000 C CNN
	1    8530 5860
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFD79F5
P 8220 5860
F 0 "#PWR?" H 8220 5610 50  0001 C CNN
F 1 "GND" H 8220 5710 50  0000 C CNN
F 2 "" H 8220 5860 50  0000 C CNN
F 3 "" H 8220 5860 50  0000 C CNN
	1    8220 5860
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8530 5560 8530 5490
Connection ~ 8530 5490
Wire Wire Line
	8530 5490 8860 5490
Connection ~ 8220 5490
Wire Wire Line
	8220 5490 8530 5490
Wire Wire Line
	8220 5560 8220 5490
Wire Wire Line
	7740 5490 7780 5490
Wire Wire Line
	8080 5490 8220 5490
Text Label 8670 5490 0    60   ~ 0
A0
$Comp
L wat-rescue:C C?
U 1 1 5FFD7A04
P 10110 5710
F 0 "C?" H 10135 5810 50  0000 L CNN
F 1 "100nF" H 10135 5610 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 10148 5560 50  0001 C CNN
F 3 "" H 10110 5710 50  0000 C CNN
	1    10110 5710
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5FFD7A0B
P 9120 5490
F 0 "J?" H 9040 5265 50  0000 C CNN
F 1 "Conn_01x01" H 9040 5356 50  0000 C CNN
F 2 "" H 9120 5490 50  0001 C CNN
F 3 "~" H 9120 5490 50  0001 C CNN
	1    9120 5490
	-1   0    0    1   
$EndComp
$Comp
L wat-rescue:R R?
U 1 1 5FFD7A12
P 9800 5710
F 0 "R?" H 9685 5785 50  0000 C CNN
F 1 "10k" V 9800 5710 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 9730 5710 50  0001 C CNN
F 3 "" H 9800 5710 50  0000 C CNN
	1    9800 5710
	-1   0    0    1   
$EndComp
$Comp
L wat-rescue:R R?
U 1 1 5FFD7A19
P 9510 5490
F 0 "R?" V 9590 5490 50  0000 C CNN
F 1 "10k" V 9510 5490 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 9440 5490 50  0001 C CNN
F 3 "" H 9510 5490 50  0000 C CNN
	1    9510 5490
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFD7A20
P 10110 5860
F 0 "#PWR?" H 10110 5610 50  0001 C CNN
F 1 "GND" H 10110 5710 50  0000 C CNN
F 2 "" H 10110 5860 50  0000 C CNN
F 3 "" H 10110 5860 50  0000 C CNN
	1    10110 5860
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFD7A26
P 9800 5860
F 0 "#PWR?" H 9800 5610 50  0001 C CNN
F 1 "GND" H 9800 5710 50  0000 C CNN
F 2 "" H 9800 5860 50  0000 C CNN
F 3 "" H 9800 5860 50  0000 C CNN
	1    9800 5860
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10110 5560 10110 5490
Connection ~ 10110 5490
Wire Wire Line
	10110 5490 10440 5490
Connection ~ 9800 5490
Wire Wire Line
	9800 5490 10110 5490
Wire Wire Line
	9800 5560 9800 5490
Wire Wire Line
	9320 5490 9360 5490
Wire Wire Line
	9660 5490 9800 5490
Text Label 10250 5490 0    60   ~ 0
A0
$Comp
L wat-rescue:C C?
U 1 1 5FFEEFC9
P 1920 6770
F 0 "C?" H 1945 6870 50  0000 L CNN
F 1 "100nF" H 1945 6670 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 1958 6620 50  0001 C CNN
F 3 "" H 1920 6770 50  0000 C CNN
	1    1920 6770
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5FFEEFD0
P 930 6550
F 0 "J?" H 850 6325 50  0000 C CNN
F 1 "Conn_01x01" H 850 6416 50  0000 C CNN
F 2 "" H 930 6550 50  0001 C CNN
F 3 "~" H 930 6550 50  0001 C CNN
	1    930  6550
	-1   0    0    1   
$EndComp
$Comp
L wat-rescue:R R?
U 1 1 5FFEEFD7
P 1610 6770
F 0 "R?" H 1495 6845 50  0000 C CNN
F 1 "10k" V 1610 6770 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 1540 6770 50  0001 C CNN
F 3 "" H 1610 6770 50  0000 C CNN
	1    1610 6770
	-1   0    0    1   
$EndComp
$Comp
L wat-rescue:R R?
U 1 1 5FFEEFDE
P 1320 6550
F 0 "R?" V 1400 6550 50  0000 C CNN
F 1 "10k" V 1320 6550 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 1250 6550 50  0001 C CNN
F 3 "" H 1320 6550 50  0000 C CNN
	1    1320 6550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFEEFE5
P 1920 6920
F 0 "#PWR?" H 1920 6670 50  0001 C CNN
F 1 "GND" H 1920 6770 50  0000 C CNN
F 2 "" H 1920 6920 50  0000 C CNN
F 3 "" H 1920 6920 50  0000 C CNN
	1    1920 6920
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFEEFEB
P 1610 6920
F 0 "#PWR?" H 1610 6670 50  0001 C CNN
F 1 "GND" H 1610 6770 50  0000 C CNN
F 2 "" H 1610 6920 50  0000 C CNN
F 3 "" H 1610 6920 50  0000 C CNN
	1    1610 6920
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1920 6620 1920 6550
Connection ~ 1920 6550
Wire Wire Line
	1920 6550 2250 6550
Connection ~ 1610 6550
Wire Wire Line
	1610 6550 1920 6550
Wire Wire Line
	1610 6620 1610 6550
Wire Wire Line
	1130 6550 1170 6550
Wire Wire Line
	1470 6550 1610 6550
Text Label 2060 6550 0    60   ~ 0
A0
$Comp
L wat-rescue:C C?
U 1 1 5FFEEFFA
P 3540 6770
F 0 "C?" H 3565 6870 50  0000 L CNN
F 1 "100nF" H 3565 6670 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3578 6620 50  0001 C CNN
F 3 "" H 3540 6770 50  0000 C CNN
	1    3540 6770
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5FFEF001
P 2550 6550
F 0 "J?" H 2470 6325 50  0000 C CNN
F 1 "Conn_01x01" H 2470 6416 50  0000 C CNN
F 2 "" H 2550 6550 50  0001 C CNN
F 3 "~" H 2550 6550 50  0001 C CNN
	1    2550 6550
	-1   0    0    1   
$EndComp
$Comp
L wat-rescue:R R?
U 1 1 5FFEF008
P 3230 6770
F 0 "R?" H 3115 6845 50  0000 C CNN
F 1 "10k" V 3230 6770 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 3160 6770 50  0001 C CNN
F 3 "" H 3230 6770 50  0000 C CNN
	1    3230 6770
	-1   0    0    1   
$EndComp
$Comp
L wat-rescue:R R?
U 1 1 5FFEF00F
P 2940 6550
F 0 "R?" V 3020 6550 50  0000 C CNN
F 1 "10k" V 2940 6550 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 2870 6550 50  0001 C CNN
F 3 "" H 2940 6550 50  0000 C CNN
	1    2940 6550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFEF016
P 3540 6920
F 0 "#PWR?" H 3540 6670 50  0001 C CNN
F 1 "GND" H 3540 6770 50  0000 C CNN
F 2 "" H 3540 6920 50  0000 C CNN
F 3 "" H 3540 6920 50  0000 C CNN
	1    3540 6920
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFEF01C
P 3230 6920
F 0 "#PWR?" H 3230 6670 50  0001 C CNN
F 1 "GND" H 3230 6770 50  0000 C CNN
F 2 "" H 3230 6920 50  0000 C CNN
F 3 "" H 3230 6920 50  0000 C CNN
	1    3230 6920
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3540 6620 3540 6550
Connection ~ 3540 6550
Wire Wire Line
	3540 6550 3870 6550
Connection ~ 3230 6550
Wire Wire Line
	3230 6550 3540 6550
Wire Wire Line
	3230 6620 3230 6550
Wire Wire Line
	2750 6550 2790 6550
Wire Wire Line
	3090 6550 3230 6550
Text Label 3680 6550 0    60   ~ 0
A0
$Comp
L wat-rescue:C C?
U 1 1 5FFFA89D
P 2500 4610
F 0 "C?" H 2525 4710 50  0000 L CNN
F 1 "100nF" H 2525 4510 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 2538 4460 50  0001 C CNN
F 3 "" H 2500 4610 50  0000 C CNN
	1    2500 4610
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5FFFA8A4
P 2160 4390
F 0 "J?" H 2080 4165 50  0000 C CNN
F 1 "Conn_01x01" H 2080 4256 50  0000 C CNN
F 2 "" H 2160 4390 50  0001 C CNN
F 3 "~" H 2160 4390 50  0001 C CNN
	1    2160 4390
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFFA8AB
P 2500 4760
F 0 "#PWR?" H 2500 4510 50  0001 C CNN
F 1 "GND" H 2500 4610 50  0000 C CNN
F 2 "" H 2500 4760 50  0000 C CNN
F 3 "" H 2500 4760 50  0000 C CNN
	1    2500 4760
	-1   0    0    -1  
$EndComp
Text Label 2760 4390 0    60   ~ 0
D2
$Comp
L wat-rescue:R R?
U 1 1 5FFFA8B2
P 2500 4170
F 0 "R?" V 2580 4170 50  0000 C CNN
F 1 "10k" V 2500 4170 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 2430 4170 50  0001 C CNN
F 3 "" H 2500 4170 50  0000 C CNN
	1    2500 4170
	-1   0    0    1   
$EndComp
Text Label 2500 3910 0    60   ~ 0
vin_5V
Wire Wire Line
	2500 4320 2500 4390
Connection ~ 2500 4390
Wire Wire Line
	2500 4460 2500 4390
Wire Wire Line
	2500 4020 2500 3840
Wire Wire Line
	2360 4390 2500 4390
Wire Wire Line
	2500 4390 2930 4390
$Comp
L wat-rescue:C C?
U 1 1 5FFFF00A
P 3710 4610
F 0 "C?" H 3735 4710 50  0000 L CNN
F 1 "100nF" H 3735 4510 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3748 4460 50  0001 C CNN
F 3 "" H 3710 4610 50  0000 C CNN
	1    3710 4610
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5FFFF011
P 3370 4390
F 0 "J?" H 3290 4165 50  0000 C CNN
F 1 "Conn_01x01" H 3290 4256 50  0000 C CNN
F 2 "" H 3370 4390 50  0001 C CNN
F 3 "~" H 3370 4390 50  0001 C CNN
	1    3370 4390
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFFF018
P 3710 4760
F 0 "#PWR?" H 3710 4510 50  0001 C CNN
F 1 "GND" H 3710 4610 50  0000 C CNN
F 2 "" H 3710 4760 50  0000 C CNN
F 3 "" H 3710 4760 50  0000 C CNN
	1    3710 4760
	-1   0    0    -1  
$EndComp
Text Label 3970 4390 0    60   ~ 0
D2
$Comp
L wat-rescue:R R?
U 1 1 5FFFF01F
P 3710 4170
F 0 "R?" V 3790 4170 50  0000 C CNN
F 1 "10k" V 3710 4170 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 3640 4170 50  0001 C CNN
F 3 "" H 3710 4170 50  0000 C CNN
	1    3710 4170
	-1   0    0    1   
$EndComp
Text Label 3710 3910 0    60   ~ 0
vin_5V
Wire Wire Line
	3710 4320 3710 4390
Connection ~ 3710 4390
Wire Wire Line
	3710 4460 3710 4390
Wire Wire Line
	3710 4020 3710 3840
Wire Wire Line
	3570 4390 3710 4390
Wire Wire Line
	3710 4390 4140 4390
$Comp
L wat-rescue:C C?
U 1 1 6004F39B
P 4920 4610
F 0 "C?" H 4945 4710 50  0000 L CNN
F 1 "100nF" H 4945 4510 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4958 4460 50  0001 C CNN
F 3 "" H 4920 4610 50  0000 C CNN
	1    4920 4610
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 6004F3A2
P 4580 4390
F 0 "J?" H 4500 4165 50  0000 C CNN
F 1 "Conn_01x01" H 4500 4256 50  0000 C CNN
F 2 "" H 4580 4390 50  0001 C CNN
F 3 "~" H 4580 4390 50  0001 C CNN
	1    4580 4390
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6004F3A9
P 4920 4760
F 0 "#PWR?" H 4920 4510 50  0001 C CNN
F 1 "GND" H 4920 4610 50  0000 C CNN
F 2 "" H 4920 4760 50  0000 C CNN
F 3 "" H 4920 4760 50  0000 C CNN
	1    4920 4760
	-1   0    0    -1  
$EndComp
Text Label 5180 4390 0    60   ~ 0
D2
$Comp
L wat-rescue:R R?
U 1 1 6004F3B0
P 4920 4170
F 0 "R?" V 5000 4170 50  0000 C CNN
F 1 "10k" V 4920 4170 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 4850 4170 50  0001 C CNN
F 3 "" H 4920 4170 50  0000 C CNN
	1    4920 4170
	-1   0    0    1   
$EndComp
Text Label 4920 3910 0    60   ~ 0
vin_5V
Wire Wire Line
	4920 4320 4920 4390
Connection ~ 4920 4390
Wire Wire Line
	4920 4460 4920 4390
Wire Wire Line
	4920 4020 4920 3840
Wire Wire Line
	4780 4390 4920 4390
Wire Wire Line
	4920 4390 5350 4390
$Comp
L wat-rescue:C C?
U 1 1 6004F3BE
P 6150 4610
F 0 "C?" H 6175 4710 50  0000 L CNN
F 1 "100nF" H 6175 4510 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 6188 4460 50  0001 C CNN
F 3 "" H 6150 4610 50  0000 C CNN
	1    6150 4610
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 6004F3C5
P 5810 4390
F 0 "J?" H 5730 4165 50  0000 C CNN
F 1 "Conn_01x01" H 5730 4256 50  0000 C CNN
F 2 "" H 5810 4390 50  0001 C CNN
F 3 "~" H 5810 4390 50  0001 C CNN
	1    5810 4390
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6004F3CC
P 6150 4760
F 0 "#PWR?" H 6150 4510 50  0001 C CNN
F 1 "GND" H 6150 4610 50  0000 C CNN
F 2 "" H 6150 4760 50  0000 C CNN
F 3 "" H 6150 4760 50  0000 C CNN
	1    6150 4760
	-1   0    0    -1  
$EndComp
Text Label 6410 4390 0    60   ~ 0
D2
$Comp
L wat-rescue:R R?
U 1 1 6004F3D3
P 6150 4170
F 0 "R?" V 6230 4170 50  0000 C CNN
F 1 "10k" V 6150 4170 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 6080 4170 50  0001 C CNN
F 3 "" H 6150 4170 50  0000 C CNN
	1    6150 4170
	-1   0    0    1   
$EndComp
Text Label 6150 3910 0    60   ~ 0
vin_5V
Wire Wire Line
	6150 4320 6150 4390
Connection ~ 6150 4390
Wire Wire Line
	6150 4460 6150 4390
Wire Wire Line
	6150 4020 6150 3840
Wire Wire Line
	6010 4390 6150 4390
Wire Wire Line
	6150 4390 6580 4390
$Comp
L wat-rescue:C C?
U 1 1 6004F3E1
P 7360 4610
F 0 "C?" H 7385 4710 50  0000 L CNN
F 1 "100nF" H 7385 4510 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 7398 4460 50  0001 C CNN
F 3 "" H 7360 4610 50  0000 C CNN
	1    7360 4610
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 6004F3E8
P 7020 4390
F 0 "J?" H 6940 4165 50  0000 C CNN
F 1 "Conn_01x01" H 6940 4256 50  0000 C CNN
F 2 "" H 7020 4390 50  0001 C CNN
F 3 "~" H 7020 4390 50  0001 C CNN
	1    7020 4390
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6004F3EF
P 7360 4760
F 0 "#PWR?" H 7360 4510 50  0001 C CNN
F 1 "GND" H 7360 4610 50  0000 C CNN
F 2 "" H 7360 4760 50  0000 C CNN
F 3 "" H 7360 4760 50  0000 C CNN
	1    7360 4760
	-1   0    0    -1  
$EndComp
Text Label 7620 4390 0    60   ~ 0
D2
$Comp
L wat-rescue:R R?
U 1 1 6004F3F6
P 7360 4170
F 0 "R?" V 7440 4170 50  0000 C CNN
F 1 "10k" V 7360 4170 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 7290 4170 50  0001 C CNN
F 3 "" H 7360 4170 50  0000 C CNN
	1    7360 4170
	-1   0    0    1   
$EndComp
Text Label 7360 3910 0    60   ~ 0
vin_5V
Wire Wire Line
	7360 4320 7360 4390
Connection ~ 7360 4390
Wire Wire Line
	7360 4460 7360 4390
Wire Wire Line
	7360 4020 7360 3840
Wire Wire Line
	7220 4390 7360 4390
Wire Wire Line
	7360 4390 7790 4390
$Comp
L wat-rescue:C C?
U 1 1 60054BD1
P 8550 4610
F 0 "C?" H 8575 4710 50  0000 L CNN
F 1 "100nF" H 8575 4510 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 8588 4460 50  0001 C CNN
F 3 "" H 8550 4610 50  0000 C CNN
	1    8550 4610
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 60054BD8
P 8210 4390
F 0 "J?" H 8130 4165 50  0000 C CNN
F 1 "Conn_01x01" H 8130 4256 50  0000 C CNN
F 2 "" H 8210 4390 50  0001 C CNN
F 3 "~" H 8210 4390 50  0001 C CNN
	1    8210 4390
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60054BDF
P 8550 4760
F 0 "#PWR?" H 8550 4510 50  0001 C CNN
F 1 "GND" H 8550 4610 50  0000 C CNN
F 2 "" H 8550 4760 50  0000 C CNN
F 3 "" H 8550 4760 50  0000 C CNN
	1    8550 4760
	-1   0    0    -1  
$EndComp
Text Label 8810 4390 0    60   ~ 0
D2
$Comp
L wat-rescue:R R?
U 1 1 60054BE6
P 8550 4170
F 0 "R?" V 8630 4170 50  0000 C CNN
F 1 "10k" V 8550 4170 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 8480 4170 50  0001 C CNN
F 3 "" H 8550 4170 50  0000 C CNN
	1    8550 4170
	-1   0    0    1   
$EndComp
Text Label 8550 3910 0    60   ~ 0
vin_5V
Wire Wire Line
	8550 4320 8550 4390
Connection ~ 8550 4390
Wire Wire Line
	8550 4460 8550 4390
Wire Wire Line
	8550 4020 8550 3840
Wire Wire Line
	8410 4390 8550 4390
Wire Wire Line
	8550 4390 8980 4390
$EndSCHEMATC
