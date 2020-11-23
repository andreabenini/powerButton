EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "tinySwitch"
Date "2020-11-22"
Rev "1.0"
Comp "Ben"
Comment1 "ON/OFF switch for raspberry"
Comment2 ""
Comment3 ""
Comment4 ""
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
P 5150 4400
F 0 "SW1" H 5150 4550 50  0000 C CNN
F 1 "Power Button" H 5150 4300 50  0000 C CNN
F 2 "" H 5150 4600 50  0001 C CNN
F 3 "~" H 5150 4600 50  0001 C CNN
	1    5150 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4400 4950 3350
Connection ~ 4950 3350
Wire Wire Line
	4950 3350 5500 3350
Wire Wire Line
	5350 4400 5900 4400
Wire Wire Line
	5900 4400 5900 3950
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
P 7100 4400
F 0 "#PWR?" H 7100 4150 50  0001 C CNN
F 1 "Earth" H 7100 4250 50  0001 C CNN
F 2 "" H 7100 4400 50  0001 C CNN
F 3 "~" H 7100 4400 50  0001 C CNN
	1    7100 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5FBB20BE
P 6600 4400
F 0 "R3" V 6500 4400 50  0000 C CNN
F 1 "10K" V 6600 4400 50  0000 C CNN
F 2 "" V 6530 4400 50  0001 C CNN
F 3 "~" H 6600 4400 50  0001 C CNN
	1    6600 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 4400 6450 4400
Connection ~ 5900 4400
Wire Wire Line
	6750 4400 7100 4400
Wire Wire Line
	7100 4400 7100 3350
Wire Wire Line
	7100 3350 6850 3350
Connection ~ 7100 4400
Wire Wire Line
	4950 3350 4950 2950
Wire Wire Line
	4950 2950 4700 2950
Wire Wire Line
	4950 2950 4950 2050
Wire Wire Line
	4950 2050 4450 2050
Wire Wire Line
	4450 2050 4450 1250
Connection ~ 4950 2950
Wire Wire Line
	4100 2950 4000 2950
Wire Wire Line
	4000 2950 4000 2050
Wire Wire Line
	4000 2050 4350 2050
Wire Wire Line
	4350 2050 4350 1250
Wire Wire Line
	7100 3350 7100 1950
Wire Wire Line
	7100 1950 4550 1950
Wire Wire Line
	4550 1950 4550 1250
Connection ~ 7100 3350
Wire Wire Line
	6000 3950 6000 4200
Wire Wire Line
	6000 4200 6450 4200
$Comp
L Device:R R2
U 1 1 5FBBB646
P 6600 4200
F 0 "R2" V 6500 4200 50  0000 C CNN
F 1 "2K2" V 6600 4200 50  0000 C CNN
F 2 "" V 6530 4200 50  0001 C CNN
F 3 "~" H 6600 4200 50  0001 C CNN
	1    6600 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5FBBD94C
P 6850 3750
F 0 "R4" H 6750 3750 50  0000 C CNN
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
Wire Wire Line
	6750 4200 6850 4200
Wire Wire Line
	6850 4200 6850 4100
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 5FBC4F8A
P 4450 1050
F 0 "J1" V 4250 1050 50  0000 C CNN
F 1 "Vout Vin Gnd" V 4400 1050 50  0000 C CNN
F 2 "" H 4450 1050 50  0001 C CNN
F 3 "~" H 4450 1050 50  0001 C CNN
	1    4450 1050
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5FBBFAF0
P 7600 4000
F 0 "J2" H 7700 4150 50  0000 C CNN
F 1 "Conn_01x02_Male" H 7708 4090 50  0001 C CNN
F 2 "" H 7600 4000 50  0001 C CNN
F 3 "~" H 7600 4000 50  0001 C CNN
F 4 "RPi Detection Line (input)" H 7050 4000 50  0000 C CNN "Input"
F 5 "RPi Shutdown Line (output)" H 7050 3900 50  0000 C CNN "Output"
	1    7600 4000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5FBC97E0
P 6600 4000
F 0 "R1" V 6500 4000 50  0000 C CNN
F 1 "1K" V 6600 4000 50  0000 C CNN
F 2 "" V 6530 4000 50  0001 C CNN
F 3 "~" H 6600 4000 50  0001 C CNN
	1    6600 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 4000 6300 4000
Wire Wire Line
	6300 4000 6300 3950
Text Notes 6050 4100 0    39   ~ 0
 USB\nD+ D-
Wire Wire Line
	7400 4100 6850 4100
Connection ~ 6850 4100
Wire Wire Line
	6850 4100 6850 3900
Wire Wire Line
	6750 4000 7400 4000
$EndSCHEMATC
