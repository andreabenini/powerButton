EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "tinySwitch"
Date "2020-11-26"
Rev "1.1"
Comp "Ben"
Comment1 ""
Comment2 "Tiny85 USB with 1 channel relay"
Comment3 ""
Comment4 "ON/OFF switch for Raspberry Pi"
$EndDescr
$Comp
L Relay:DIPxx-1Axx-12xD K1
U 1 1 5FBA1307
P 4400 3150
F 0 "K1" V 4867 3150 50  0000 C CNN
F 1 "1 Channel Relay" V 4776 3150 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 4750 3100 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 4400 3150 50  0001 C CNN
	1    4400 3150
	0    -1   -1   0   
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny85V-10SU U1
U 1 1 5FB9B9E0
P 6100 3350
F 0 "U1" V 5433 3350 50  0000 C CNN
F 1 "Digispark Tiny85" V 5524 3350 50  0000 C CNN
F 2 "Package_SO:SOIJ-8_5.3x5.3mm_P1.27mm" H 6100 3350 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 6100 3350 50  0001 C CNN
	1    6100 3350
	0    -1   1    0   
$EndComp
Wire Wire Line
	4700 3350 4950 3350
Wire Wire Line
	5800 3950 4100 3950
Wire Wire Line
	4100 3950 4100 3350
$Comp
L Switch:SW_Push SW1
U 1 1 5FBAA7A8
P 5150 4450
F 0 "SW1" H 5150 4650 50  0000 C CNN
F 1 "Power Button" H 5150 4350 50  0000 C CNN
F 2 "" H 5150 4650 50  0001 C CNN
F 3 "~" H 5150 4650 50  0001 C CNN
	1    5150 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4450 4950 3350
Connection ~ 4950 3350
Wire Wire Line
	4950 3350 5500 3350
Wire Wire Line
	5350 4450 5900 4450
Wire Wire Line
	5900 4450 5900 3950
$Comp
L power:Earth #PWR?
U 1 1 5FBAF213
P 4400 3600
F 0 "#PWR?" H 4400 3350 50  0001 C CNN
F 1 "Earth" H 4400 3450 50  0001 C CNN
F 2 "" H 4400 3600 50  0001 C CNN
F 3 "~" H 4400 3600 50  0001 C CNN
	1    4400 3600
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 5FBB0448
P 7100 4550
F 0 "#PWR?" H 7100 4300 50  0001 C CNN
F 1 "Earth" H 7100 4400 50  0001 C CNN
F 2 "" H 7100 4550 50  0001 C CNN
F 3 "~" H 7100 4550 50  0001 C CNN
	1    7100 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5FBB20BE
P 6600 4450
F 0 "R4" V 6500 4450 50  0000 C CNN
F 1 "10K" V 6600 4450 50  0000 C CNN
F 2 "" V 6530 4450 50  0001 C CNN
F 3 "~" H 6600 4450 50  0001 C CNN
	1    6600 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 4450 6450 4450
Connection ~ 5900 4450
Wire Wire Line
	6750 4450 7100 4450
Wire Wire Line
	7100 4450 7100 3350
Wire Wire Line
	7100 3350 6850 3350
Connection ~ 7100 4450
Wire Wire Line
	4950 3350 4950 2950
Wire Wire Line
	4950 2950 4700 2950
Wire Wire Line
	4950 2950 4950 2450
Wire Wire Line
	4950 2450 4450 2450
Wire Wire Line
	4450 2450 4450 2200
Connection ~ 4950 2950
Wire Wire Line
	4100 2950 4000 2950
Wire Wire Line
	4000 2950 4000 2450
Wire Wire Line
	4000 2450 4350 2450
Wire Wire Line
	4350 2450 4350 2200
Wire Wire Line
	7100 3350 7100 2350
Wire Wire Line
	7100 2350 4550 2350
Wire Wire Line
	4550 2350 4550 2200
Connection ~ 7100 3350
Wire Wire Line
	6000 3950 6000 4250
Wire Wire Line
	6000 4250 6450 4250
$Comp
L Device:R R2
U 1 1 5FBBB646
P 6600 4050
F 0 "R2" V 6500 4050 50  0000 C CNN
F 1 "2K2" V 6600 4050 50  0000 C CNN
F 2 "" V 6530 4050 50  0001 C CNN
F 3 "~" H 6600 4050 50  0001 C CNN
	1    6600 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5FBBD94C
P 6850 3750
F 0 "R1" H 6750 3750 50  0000 C CNN
F 1 "3K3" V 6850 3750 50  0000 C CNN
F 2 "" V 6780 3750 50  0001 C CNN
F 3 "~" H 6850 3750 50  0001 C CNN
	1    6850 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	6850 3600 6850 3350
Connection ~ 6850 3350
Wire Wire Line
	6850 3350 6700 3350
$Comp
L Device:R R3
U 1 1 5FBC97E0
P 6600 4250
F 0 "R3" V 6500 4250 50  0000 C CNN
F 1 "1K" V 6600 4250 50  0000 C CNN
F 2 "" V 6530 4250 50  0001 C CNN
F 3 "~" H 6600 4250 50  0001 C CNN
	1    6600 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 4050 6200 4050
Wire Wire Line
	6200 4050 6200 3950
Text Notes 6050 3400 0    39   ~ 0
 USB\nD+ D-
Wire Wire Line
	6750 4050 6850 4050
Wire Wire Line
	6850 4050 6850 3900
Connection ~ 6850 4050
Wire Wire Line
	6850 4050 7400 4050
Wire Wire Line
	6750 4250 6850 4250
Wire Wire Line
	6850 4250 6850 4150
Wire Wire Line
	6850 4150 7400 4150
Wire Wire Line
	7100 4450 7100 4550
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5FC1178B
P 7600 4050
F 0 "J2" H 7550 4200 50  0000 L CNN
F 1 "Conn_01x02" H 7680 4042 50  0001 L CNN
F 2 "" H 7600 4050 50  0001 C CNN
F 3 "~" H 7600 4050 50  0001 C CNN
F 4 "RPi Shutdown Line (output)" H 7700 4050 50  0000 L CNN "Output"
F 5 "RPi Detection Line (input) " H 7700 3950 50  0000 L CNN "Input"
	1    7600 4050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5FC158BD
P 4450 2000
F 0 "J1" V 4650 2050 50  0000 R CNN
F 1 "Conn_01x03" H 4530 1951 50  0001 L CNN
F 2 "" H 4450 2000 50  0001 C CNN
F 3 "~" H 4450 2000 50  0001 C CNN
F 4 "Vout" V 4550 2250 50  0000 R CNN "vout"
F 5 "Vin" V 4550 2050 50  0000 R CNN "vin"
F 6 "Gnd" V 4550 1900 50  0000 R CNN "gnd"
	1    4450 2000
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
