EESchema Schematic File Version 4
EELAYER 30 0
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
L linear:LM358 U2
U 1 1 63F57CE9
P 6250 3250
F 0 "U2" H 6794 3303 60  0000 L CNN
F 1 "LM358" H 6794 3197 60  0000 L CNN
F 2 "" H 6250 3250 50  0001 C CNN
F 3 "ns/lm158.pdf" H 6250 3250 50  0001 C CNN
	1    6250 3250
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 63F5C299
P 6150 4450
F 0 "#PWR?" H 6150 4200 50  0001 C CNN
F 1 "Earth" H 6150 4300 50  0001 C CNN
F 2 "" H 6150 4450 50  0001 C CNN
F 3 "~" H 6150 4450 50  0001 C CNN
	1    6150 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3950 4300 4350
Wire Wire Line
	4300 4350 4950 4350
Wire Wire Line
	4300 3150 4950 3150
$Comp
L SymbolsSimilarEN60617+oldDIN617:PIEZO-ELEMENT-2_TERMINAL X1
U 1 1 63F5DBB6
P 4300 3550
F 0 "X1" V 4250 3200 60  0000 L CNN
F 1 "PIEZO-ELEMENT-2_TERMINAL" V 4350 2000 60  0000 L CNN
F 2 "" H 4300 3550 50  0001 C CNN
F 3 "" H 4300 3550 50  0001 C CNN
	1    4300 3550
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R1
U 1 1 63F6B757
P 4950 3750
F 0 "R1" H 5018 3796 50  0000 L CNN
F 1 "1M" H 5018 3705 50  0000 L CNN
F 2 "" V 4990 3740 50  0001 C CNN
F 3 "~" H 4950 3750 50  0001 C CNN
	1    4950 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3600 4950 3150
Connection ~ 4950 3150
Wire Wire Line
	4950 3150 5400 3150
Wire Wire Line
	4950 3900 4950 4350
Connection ~ 4950 4350
Wire Wire Line
	4950 4350 5400 4350
$Comp
L device:ZENER D1
U 1 1 63F6D08D
P 5400 3750
F 0 "D1" V 5438 3671 50  0000 R CNN
F 1 "3.3V" V 5354 3671 40  0000 R CNN
F 2 "" H 5400 3750 50  0001 C CNN
F 3 "" H 5400 3750 50  0001 C CNN
	1    5400 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5400 3550 5400 3150
Wire Wire Line
	5400 3950 5400 4350
$Comp
L power:+3.3V #PWR?
U 1 1 63F7182E
P 6150 2350
F 0 "#PWR?" H 6150 2200 50  0001 C CNN
F 1 "+3.3V" H 6165 2523 50  0000 C CNN
F 2 "" H 6150 2350 50  0001 C CNN
F 3 "" H 6150 2350 50  0001 C CNN
	1    6150 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2350 6150 2850
Wire Wire Line
	6750 3250 8700 3250
Text Notes 8550 3400 0    50   ~ 0
To Arduino
Wire Wire Line
	6150 3650 6150 4350
Wire Wire Line
	5750 3150 5400 3150
Connection ~ 5400 3150
Wire Wire Line
	5400 4350 5750 4350
Connection ~ 5400 4350
Connection ~ 6150 4350
Wire Wire Line
	6150 4350 6150 4450
$Comp
L Device:R_US R2
U 1 1 63F788B4
P 6600 3650
F 0 "R2" H 6668 3696 50  0000 L CNN
F 1 "1M" H 6668 3605 50  0000 L CNN
F 2 "" V 6640 3640 50  0001 C CNN
F 3 "~" H 6600 3650 50  0001 C CNN
	1    6600 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3250 6600 3500
Wire Wire Line
	6600 3800 5750 3800
Wire Wire Line
	5750 3800 5750 3350
$Comp
L Device:R_US R3
U 1 1 63F7A121
P 5750 4050
F 0 "R3" H 5818 4096 50  0000 L CNN
F 1 "1K" H 5818 4005 50  0000 L CNN
F 2 "" V 5790 4040 50  0001 C CNN
F 3 "~" H 5750 4050 50  0001 C CNN
	1    5750 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4200 5750 4350
Connection ~ 5750 4350
Wire Wire Line
	5750 4350 6150 4350
Wire Wire Line
	5750 3900 5750 3800
Connection ~ 5750 3800
Text Notes 6750 4500 0    50   ~ 0
The op amp (operational amplifier) boosts\nthe signal coming from the piezo sensor.\nR1 limits the current while the zener diode\nmakes sure that any voltage above 3.3 is\nrouted to ground (so we don’t damage the\nArduino). The ratio between R2 and R3 is\nyour gain (amplification factor). In this case\nit is 1000.
$EndSCHEMATC