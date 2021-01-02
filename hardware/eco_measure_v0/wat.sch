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
L wat-rescue:CONN_01X02 P?
U 1 1 5D4CAF0F
P 5095 6605
F 0 "P?" H 5095 6755 50  0000 C CNN
F 1 "PINZA_1" V 5195 6605 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 5095 6605 50  0001 C CNN
F 3 "" H 5095 6605 50  0000 C CNN
	1    5095 6605
	-1   0    0    1   
$EndComp
Text Label 6095 6970 0    60   ~ 0
v_referencia
$Comp
L wat-rescue:C C?
U 1 1 5D4CAF07
P 5525 6765
F 0 "C?" H 5550 6865 50  0000 L CNN
F 1 "100nF" H 5550 6665 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5563 6615 50  0001 C CNN
F 3 "" H 5525 6765 50  0000 C CNN
	1    5525 6765
	1    0    0    -1  
$EndComp
$Comp
L wat-rescue:R R?
U 1 1 5D4CAF01
P 5985 6755
F 0 "R?" V 6065 6755 50  0000 C CNN
F 1 "10k" V 5985 6755 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 5915 6755 50  0001 C CNN
F 3 "" H 5985 6755 50  0000 C CNN
	1    5985 6755
	1    0    0    -1  
$EndComp
Text Label 6065 6555 0    60   ~ 0
intensidad_1
$Comp
L wat-rescue:Conn_02x05_Odd_Even J?
U 1 1 5D4CBA5C
P 9455 2430
F 0 "J?" H 9505 2730 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 9505 2130 50  0000 C CNN
F 2 "oscar_libreria_huellas:Pin_Header_Straight_2x05_Pitch2.54mm_onsar" H 9455 2430 50  0001 C CNN
F 3 "" H 9455 2430 50  0001 C CNN
	1    9455 2430
	1    0    0    -1  
$EndComp
Text Label 8820 2630 0    60   ~ 0
vcc_5v
$Comp
L power:GND #PWR?
U 1 1 5FF18B82
P 1200 2605
F 0 "#PWR?" H 1200 2355 50  0001 C CNN
F 1 "GND" H 1200 2455 50  0000 C CNN
F 2 "" H 1200 2605 50  0000 C CNN
F 3 "" H 1200 2605 50  0000 C CNN
	1    1200 2605
	-1   0    0    -1  
$EndComp
$Comp
L wat-rescue:CONN_01X02 P?
U 1 1 5FF18B83
P 1000 2175
F 0 "P?" H 1000 2325 50  0000 C CNN
F 1 "V_IN" V 1100 2175 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 1000 2175 50  0001 C CNN
F 3 "" H 1000 2175 50  0000 C CNN
	1    1000 2175
	-1   0    0    1   
$EndComp
$Comp
L wat-rescue:CP1 C?
U 1 1 5FF18B84
P 2025 2375
F 0 "C?" H 2050 2475 50  0000 L CNN
F 1 "10uF" H 2050 2275 50  0000 L CNN
F 2 "Capacitors_SMD:C_2220_HandSoldering" H 2025 2375 50  0001 C CNN
F 3 "" H 2025 2375 50  0000 C CNN
	1    2025 2375
	1    0    0    -1  
$EndComp
$Comp
L wat-rescue:D D?
U 1 1 5D4E44AF
P 1750 2125
F 0 "D?" H 1750 2225 50  0000 C CNN
F 1 "schottky" H 1750 2025 50  0000 C CNN
F 2 "Diodes_SMD:D_2114" H 1750 2125 50  0001 C CNN
F 3 "" H 1750 2125 50  0000 C CNN
	1    1750 2125
	-1   0    0    1   
$EndComp
$Comp
L wat-rescue:TEST_1P W?
U 1 1 5FF18B86
P 2025 2125
F 0 "W?" H 2025 2395 50  0000 C CNN
F 1 "+5V" H 2025 2325 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 2225 2125 50  0001 C CNN
F 3 "" H 2225 2125 50  0000 C CNN
	1    2025 2125
	1    0    0    -1  
$EndComp
Text Label 2250 2125 0    60   ~ 0
vin_5V
Text Label 1240 2125 0    60   ~ 0
vcc_5v
$Comp
L nano1:NANO U?
U 1 1 5D4E51E2
P 5840 2425
F 0 "U?" H 6190 3425 50  0000 C CNN
F 1 "NANO" H 5840 3275 50  0000 C CNN
F 2 "libreria_huellas_proyecto:arduino_nano" H 5540 1625 50  0001 C CNN
F 3 "DOCUMENTATION" H 5690 1575 50  0001 C CNN
	1    5840 2425
	1    0    0    -1  
$EndComp
Text Label 6650 2025 0    60   ~ 0
vin_5V
NoConn ~ 5090 1925
NoConn ~ 5090 2425
NoConn ~ 6590 1725
NoConn ~ 6590 1925
NoConn ~ 6590 2925
NoConn ~ 6590 3025
Text Label 1505 1020 0    60   ~ 0
vin_5V
Wire Wire Line
	1505 945  1505 1095
Wire Wire Line
	1005 945  1005 995 
Wire Wire Line
	5295 6970 5525 6970
Wire Wire Line
	5295 6655 5295 6970
Wire Wire Line
	5295 6555 5525 6555
Connection ~ 5985 6555
Wire Wire Line
	5985 6605 5985 6555
Connection ~ 5525 6555
Wire Wire Line
	5525 6615 5525 6555
Wire Wire Line
	8820 2230 9255 2230
Wire Wire Line
	8820 2330 9255 2330
Wire Wire Line
	8820 2530 9255 2530
Wire Wire Line
	2025 2125 2025 2225
Connection ~ 2025 2125
Wire Wire Line
	1900 2125 2025 2125
Wire Wire Line
	1200 2125 1600 2125
Wire Wire Line
	1200 2225 1200 2605
Wire Wire Line
	1200 2605 2025 2605
Wire Wire Line
	2025 2605 2025 2525
Connection ~ 1200 2605
Wire Notes Line
	7010 1575 7010 3265
Wire Notes Line
	7010 3265 7020 3265
Wire Wire Line
	6590 2025 7010 2025
Wire Wire Line
	6590 2125 7010 2125
Wire Wire Line
	6590 2225 7010 2225
Wire Wire Line
	6590 2325 7010 2325
Wire Wire Line
	6590 2425 7010 2425
Wire Wire Line
	6590 2725 7010 2725
Wire Wire Line
	6590 2825 7010 2825
Wire Wire Line
	6590 2525 7010 2525
Wire Wire Line
	6590 1825 7005 1825
Wire Notes Line
	4485 1580 4485 3270
Wire Wire Line
	5525 6915 5525 6970
Connection ~ 5525 6970
Wire Wire Line
	5985 6905 5985 6970
Connection ~ 5985 6970
Text Label 8820 2530 0    60   ~ 0
vcc_5v
Wire Wire Line
	9255 2630 8820 2630
Text Label 8820 2230 0    60   ~ 0
ard_tx
Text Label 8820 2330 0    60   ~ 0
ard_rx
Wire Wire Line
	5090 2125 4485 2125
Text Label 4580 2325 0    60   ~ 0
ard_d4
Wire Wire Line
	9755 2530 10180 2530
Text Label 1005 965  0    60   ~ 0
GND
Text Label 8820 2430 0    60   ~ 0
GND
Wire Wire Line
	9255 2430 8820 2430
Wire Wire Line
	9755 2630 10180 2630
Text Label 9830 2630 0    60   ~ 0
GND
Wire Wire Line
	5090 2225 4485 2225
Wire Wire Line
	5090 2325 4485 2325
NoConn ~ 4875 -920
Wire Wire Line
	5985 6555 6345 6555
Wire Wire Line
	5525 6555 5985 6555
Wire Wire Line
	2025 2125 2675 2125
Wire Wire Line
	5525 6970 5985 6970
Wire Wire Line
	5985 6970 6345 6970
Wire Wire Line
	5090 1725 4485 1725
Wire Wire Line
	5090 1825 4485 1825
Wire Wire Line
	5090 2025 4485 2025
Wire Wire Line
	6590 2625 7010 2625
Text Label 6650 1825 0    60   ~ 0
GND
Text Label 4580 2025 0    60   ~ 0
GND
Wire Wire Line
	5090 2525 4485 2525
Wire Wire Line
	5090 2625 4485 2625
Wire Wire Line
	5090 2725 4485 2725
Wire Wire Line
	5090 2825 4485 2825
Wire Wire Line
	5090 2925 4485 2925
Wire Wire Line
	5090 3025 4485 3025
Wire Wire Line
	5090 3125 4485 3125
Wire Wire Line
	6590 3125 7010 3125
Wire Notes Line
	10180 2230 10180 2630
Wire Wire Line
	9755 2230 10180 2230
Wire Wire Line
	9755 2330 10180 2330
Wire Wire Line
	9755 2430 10180 2430
$Comp
L wat-rescue:CONN_01X02 P?
U 1 1 5D4D18F7
P 3115 5500
F 0 "P?" H 3115 5650 50  0000 C CNN
F 1 "PINZA_2" V 3215 5500 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 3115 5500 50  0001 C CNN
F 3 "" H 3115 5500 50  0000 C CNN
	1    3115 5500
	-1   0    0    1   
$EndComp
Text Label 2200 6535 0    60   ~ 0
18b20_0
$Comp
L wat-rescue:CONN_01X02 P?
U 1 1 5D4D3DC6
P 5035 5475
F 0 "P?" H 5035 5625 50  0000 C CNN
F 1 "PINZA_3" V 5135 5475 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 5035 5475 50  0001 C CNN
F 3 "" H 5035 5475 50  0000 C CNN
	1    5035 5475
	-1   0    0    1   
$EndComp
Text Label 6005 5425 0    60   ~ 0
pulsos_0
$Comp
L wat-rescue:C C?
U 1 1 5D4D3DCE
P 5465 5635
F 0 "C?" H 5490 5735 50  0000 L CNN
F 1 "100nF" H 5490 5535 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5503 5485 50  0001 C CNN
F 3 "" H 5465 5635 50  0000 C CNN
	1    5465 5635
	1    0    0    -1  
$EndComp
$Comp
L wat-rescue:R R?
U 1 1 5D4D3DD4
P 5925 5625
F 0 "R?" V 6005 5625 50  0000 C CNN
F 1 "10k" V 5925 5625 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 5855 5625 50  0001 C CNN
F 3 "" H 5925 5625 50  0000 C CNN
	1    5925 5625
	1    0    0    -1  
$EndComp
$Comp
L wat-rescue:CONN_01X02 P?
U 1 1 5D4D3DE6
P 6955 5475
F 0 "P?" H 6955 5625 50  0000 C CNN
F 1 "PINZA_4" V 7055 5475 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 6955 5475 50  0001 C CNN
F 3 "" H 6955 5475 50  0000 C CNN
	1    6955 5475
	-1   0    0    1   
$EndComp
Text Label 7925 5425 0    60   ~ 0
lazo_0
$Comp
L wat-rescue:C C?
U 1 1 5D4D3DEE
P 7385 5635
F 0 "C?" H 7410 5735 50  0000 L CNN
F 1 "100nF" H 7410 5535 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 7423 5485 50  0001 C CNN
F 3 "" H 7385 5635 50  0000 C CNN
	1    7385 5635
	1    0    0    -1  
$EndComp
$Comp
L wat-rescue:R R?
U 1 1 5D4D3DF4
P 7845 5625
F 0 "R?" V 7925 5625 50  0000 C CNN
F 1 "39" V 7845 5625 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 7775 5625 50  0001 C CNN
F 3 "" H 7845 5625 50  0000 C CNN
	1    7845 5625
	1    0    0    -1  
$EndComp
$Comp
L wat-rescue:CONN_01X02 P?
U 1 1 5D4C6526
P 8920 5475
F 0 "P?" H 8920 5625 50  0000 C CNN
F 1 "PINZA_5" V 9020 5475 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 8920 5475 50  0001 C CNN
F 3 "" H 8920 5475 50  0000 C CNN
	1    8920 5475
	-1   0    0    1   
$EndComp
Text Label 9890 5425 0    60   ~ 0
divisor_0
$Comp
L wat-rescue:R R?
U 1 1 5D4C6534
P 9810 5625
F 0 "R?" V 9890 5625 50  0000 C CNN
F 1 "10k" V 9810 5625 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 9740 5625 50  0001 C CNN
F 3 "" H 9810 5625 50  0000 C CNN
	1    9810 5625
	1    0    0    -1  
$EndComp
$Comp
L wat-rescue:CONN_01X02 P?
U 1 1 5D4C6F0D
P 1195 6585
F 0 "P?" H 1195 6735 50  0000 C CNN
F 1 "PINZA_6" V 1295 6585 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 1195 6585 50  0001 C CNN
F 3 "" H 1195 6585 50  0000 C CNN
	1    1195 6585
	-1   0    0    1   
$EndComp
$Comp
L wat-rescue:C C?
U 1 1 5D4C6F14
P 3580 5660
F 0 "C?" H 3605 5760 50  0000 L CNN
F 1 "100nF" H 3605 5560 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3618 5510 50  0001 C CNN
F 3 "" H 3580 5660 50  0000 C CNN
	1    3580 5660
	1    0    0    -1  
$EndComp
$Comp
L wat-rescue:R R?
U 1 1 5D4C6F1A
P 2085 6735
F 0 "R?" V 2165 6735 50  0000 C CNN
F 1 "2k2" V 2085 6735 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 2015 6735 50  0001 C CNN
F 3 "" H 2085 6735 50  0000 C CNN
	1    2085 6735
	1    0    0    -1  
$EndComp
$Comp
L wat-rescue:CONN_01X02 P?
U 1 1 5D4C6F2B
P 3115 6585
F 0 "P?" H 3115 6735 50  0000 C CNN
F 1 "PINZA_7" V 3215 6585 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 3115 6585 50  0001 C CNN
F 3 "" H 3115 6585 50  0000 C CNN
	1    3115 6585
	-1   0    0    -1  
$EndComp
$Comp
L wat-rescue:R R?
U 1 1 5D4C6F39
P 4005 6735
F 0 "R?" V 4085 6735 50  0000 C CNN
F 1 "1k" V 4005 6735 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 3935 6735 50  0001 C CNN
F 3 "" H 4005 6735 50  0000 C CNN
	1    4005 6735
	1    0    0    -1  
$EndComp
Wire Bus Line
	5740 5425 5740 5420
Wire Wire Line
	3315 5550 3315 5865
Connection ~ 4005 5450
Wire Wire Line
	4005 5500 4005 5450
Wire Wire Line
	5235 5840 5465 5840
Wire Wire Line
	5235 5525 5235 5840
Wire Wire Line
	5235 5425 5465 5425
Connection ~ 5925 5425
Wire Wire Line
	5925 5475 5925 5425
Connection ~ 5465 5425
Wire Wire Line
	5465 5485 5465 5425
Wire Wire Line
	7155 5840 7385 5840
Wire Wire Line
	7155 5525 7155 5840
Wire Wire Line
	7155 5425 7385 5425
Connection ~ 7845 5425
Wire Wire Line
	7845 5475 7845 5425
Connection ~ 7385 5425
Wire Wire Line
	7385 5485 7385 5425
Wire Wire Line
	9120 5840 9350 5840
Wire Wire Line
	9120 5525 9120 5840
Wire Wire Line
	9120 5425 9350 5425
Wire Wire Line
	9350 5485 9350 5425
Wire Wire Line
	1395 6635 1395 6950
Connection ~ 2085 6535
Wire Wire Line
	2085 6585 2085 6535
Wire Wire Line
	3580 5510 3580 5450
Wire Wire Line
	3315 6950 4005 6950
Wire Wire Line
	3315 6635 3315 6950
Connection ~ 4005 6535
Wire Wire Line
	4005 6585 4005 6535
Wire Wire Line
	4005 5800 4005 5865
Connection ~ 4005 5865
Wire Wire Line
	5465 5785 5465 5840
Connection ~ 5465 5840
Wire Wire Line
	5925 5775 5925 5840
Connection ~ 5925 5840
Wire Wire Line
	7385 5785 7385 5840
Connection ~ 7385 5840
Wire Wire Line
	7845 5775 7845 5840
Connection ~ 7845 5840
Wire Wire Line
	9350 5785 9350 5840
Wire Wire Line
	3580 5810 3580 5865
Wire Wire Line
	2085 6885 2085 6950
Connection ~ 2085 6950
Wire Wire Line
	4005 6885 4005 6950
Connection ~ 4005 6950
Text Label 4120 6535 0    60   ~ 0
voltage_1
$Comp
L wat-rescue:R R?
U 1 1 5D7208D8
P 3625 6535
F 0 "R?" V 3705 6535 50  0000 C CNN
F 1 "10k" V 3625 6535 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3555 6535 50  0001 C CNN
F 3 "" H 3625 6535 50  0000 C CNN
	1    3625 6535
	0    1    1    0   
$EndComp
Wire Wire Line
	3315 6535 3475 6535
Wire Wire Line
	3775 6535 4005 6535
Wire Wire Line
	4005 5450 4365 5450
Wire Wire Line
	5925 5425 6285 5425
Wire Wire Line
	5465 5425 5925 5425
Wire Wire Line
	7845 5425 8205 5425
Wire Wire Line
	7385 5425 7845 5425
Wire Wire Line
	2085 6535 2445 6535
Wire Wire Line
	4005 6535 4365 6535
Wire Wire Line
	4005 5865 4365 5865
Wire Wire Line
	5465 5840 5925 5840
Wire Wire Line
	5925 5840 6285 5840
Wire Wire Line
	7385 5840 7845 5840
Wire Wire Line
	7845 5840 8205 5840
Wire Wire Line
	2085 6950 2445 6950
Wire Wire Line
	4005 6950 4365 6950
$Comp
L wat-rescue:CONN_01X02 P?
U 1 1 5FF18B81
P 1200 5500
F 0 "P?" H 1200 5650 50  0000 C CNN
F 1 "PINZA_1" V 1300 5500 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 1200 5500 50  0001 C CNN
F 3 "" H 1200 5500 50  0000 C CNN
	1    1200 5500
	-1   0    0    1   
$EndComp
$Comp
L wat-rescue:C C?
U 1 1 5FF18B80
P 1600 5650
F 0 "C?" H 1625 5750 50  0000 L CNN
F 1 "100nF" H 1625 5550 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 1638 5500 50  0001 C CNN
F 3 "" H 1600 5650 50  0000 C CNN
	1    1600 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 5450 1600 5450
Wire Wire Line
	1400 5550 1400 5850
Wire Wire Line
	1400 5850 1600 5850
Wire Wire Line
	1600 5500 1600 5450
Wire Wire Line
	1600 5800 1600 5850
Connection ~ 1600 5850
Wire Wire Line
	1600 5850 2100 5850
Wire Wire Line
	2100 5500 2100 5450
Wire Wire Line
	2100 5800 2100 5850
Connection ~ 2100 5850
Wire Wire Line
	1600 5450 2100 5450
Connection ~ 1600 5450
Connection ~ 2100 5450
Wire Wire Line
	2100 5450 2450 5450
Wire Wire Line
	2100 5850 2450 5850
$Comp
L Jumper:Jumper_2_Open JP?
U 1 1 5FD57484
P 9185 3640
F 0 "JP?" H 9330 3780 50  0000 C CNN
F 1 "Jumper_2_Open" H 9185 3784 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 9185 3640 50  0001 C CNN
F 3 "~" H 9185 3640 50  0001 C CNN
	1    9185 3640
	1    0    0    -1  
$EndComp
Wire Wire Line
	9385 3640 10135 3640
Text Label 8315 3640 0    60   ~ 0
v_comun_0
Wire Wire Line
	8285 3640 8985 3640
Text Label 9580 3640 0    60   ~ 0
v_comun_1
$Comp
L Device:D_Zener D?
U 1 1 5FCFF3AC
P 2100 5650
F 0 "D?" V 2054 5729 50  0000 L CNN
F 1 "D_Zener" V 2145 5729 50  0000 L CNN
F 2 "" H 2100 5650 50  0001 C CNN
F 3 "~" H 2100 5650 50  0001 C CNN
	1    2100 5650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FCFFA94
P 2450 5850
F 0 "#PWR?" H 2450 5600 50  0001 C CNN
F 1 "GND" H 2450 5700 50  0000 C CNN
F 2 "" H 2450 5850 50  0000 C CNN
F 3 "" H 2450 5850 50  0000 C CNN
	1    2450 5850
	-1   0    0    -1  
$EndComp
Text Label 2180 5450 0    60   ~ 0
analogico_0
Text Label 4120 5865 0    60   ~ 0
v_op
Wire Wire Line
	3315 5450 3580 5450
Wire Wire Line
	3315 5865 3580 5865
$Comp
L power:GND #PWR?
U 1 1 5FD00C6D
P 6285 5840
F 0 "#PWR?" H 6285 5590 50  0001 C CNN
F 1 "GND" H 6285 5690 50  0000 C CNN
F 2 "" H 6285 5840 50  0000 C CNN
F 3 "" H 6285 5840 50  0000 C CNN
	1    6285 5840
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD00FC1
P 8205 5840
F 0 "#PWR?" H 8205 5590 50  0001 C CNN
F 1 "GND" H 8205 5690 50  0000 C CNN
F 2 "" H 8205 5840 50  0000 C CNN
F 3 "" H 8205 5840 50  0000 C CNN
	1    8205 5840
	-1   0    0    -1  
$EndComp
Connection ~ 9350 5840
$Comp
L power:GND #PWR?
U 1 1 5FD000DE
P 10170 5840
F 0 "#PWR?" H 10170 5590 50  0001 C CNN
F 1 "GND" H 10170 5690 50  0000 C CNN
F 2 "" H 10170 5840 50  0000 C CNN
F 3 "" H 10170 5840 50  0000 C CNN
	1    10170 5840
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9350 5840 9810 5840
Wire Wire Line
	9810 5840 10170 5840
Connection ~ 9810 5840
Wire Wire Line
	9810 5775 9810 5840
Wire Wire Line
	9810 5475 9810 5425
Wire Wire Line
	9810 5425 10170 5425
$Comp
L wat-rescue:C C?
U 1 1 5D4C652E
P 9350 5635
F 0 "C?" H 9375 5735 50  0000 L CNN
F 1 "100nF" H 9375 5535 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 9388 5485 50  0001 C CNN
F 3 "" H 9350 5635 50  0000 C CNN
	1    9350 5635
	1    0    0    -1  
$EndComp
$Comp
L wat-rescue:R R?
U 1 1 5FD187FB
P 9575 5425
F 0 "R?" V 9655 5425 50  0000 C CNN
F 1 "10k" V 9575 5425 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 9505 5425 50  0001 C CNN
F 3 "" H 9575 5425 50  0000 C CNN
	1    9575 5425
	0    1    1    0   
$EndComp
Wire Wire Line
	9725 5425 9810 5425
Connection ~ 9810 5425
Wire Wire Line
	9425 5425 9350 5425
Connection ~ 9350 5425
Connection ~ 3580 5450
Wire Wire Line
	3580 5450 4005 5450
Connection ~ 3580 5865
Wire Wire Line
	3580 5865 4005 5865
Wire Wire Line
	1395 6950 2085 6950
Wire Wire Line
	1395 6535 2085 6535
Text Label 4060 5450 0    60   ~ 0
analogico_1
$Comp
L Device:D_Zener D?
U 1 1 5FD28292
P 4005 5650
F 0 "D?" V 3959 5729 50  0000 L CNN
F 1 "D_Zener" V 4050 5729 50  0000 L CNN
F 2 "" H 4005 5650 50  0001 C CNN
F 3 "~" H 4005 5650 50  0001 C CNN
	1    4005 5650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD29208
P 4365 6950
F 0 "#PWR?" H 4365 6700 50  0001 C CNN
F 1 "GND" H 4365 6800 50  0000 C CNN
F 2 "" H 4365 6950 50  0000 C CNN
F 3 "" H 4365 6950 50  0000 C CNN
	1    4365 6950
	-1   0    0    -1  
$EndComp
Text Label 2215 6950 0    60   ~ 0
v_op_5v
$EndSCHEMATC
