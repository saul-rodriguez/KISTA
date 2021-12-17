*
*
*
*                       LINUX           Fri Dec 17 09:24:11 2021
*
*
*
*  PROGRAM  advgen
*
*  Name           : advgen - Quantus - (64-bit)
*  Version        : 20.1.2-p025
*  Build Date     : Thu Sep 3 13:54:09 PDT 2020
*
*  HSPICE LIBRARY
*
*
*

*
.GLOBAL VSS! VDD!
.SUBCKT INVX1 Y A 
*
*
*  caps2d version: 10
*
*
*       TRANSISTOR CARDS
*
*
MX0_M0_unmatched	Y#3	A#4	VSS!#1	VSS!#1	nch	L=1e-06
+ W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
MX1_M0_unmatched	Y#1	A#2	VDD!#1	VDD!#1	pch	L=1e-06
+ W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0
+ fw=4e-06 sa=2e-06 sb=2e-06
*
*
*       RESISTOR AND CAP/DIODE CARDS
*
Rd2	A#3	A	  450.9252	$poly_conn
Rd1	A#2	A#3	  459.2584	$poly_conn
Rd3	A#3	A#4	  459.2584	$poly_conn
Rc4	Y#1	Y	    2.5000	$metal1_conn
Rc3	Y	Y#3	    5.2300	$metal1_conn
Rc6	VSS!	VSS!#1	    5.3718	$metal1_conn
Rc5	VDD!	VDD!#1	    2.8463	$metal1_conn
Rs	1	VSS!	50
*
*       CAPACITOR CARDS
*
*
C1	Y#1	VSS!	1.86121e-15
C2	Y#3	VSS!	1.06371e-15
C3	VSS!	A	1.99163e-15
C4	A#2	VSS!	1.20051e-15
C5	A#4	VSS!	1.0839e-15
C6	A#3	VSS!	1.54228e-15
C7	VDD!	VSS!	4.80699e-15
C8	VDD!#1	VSS!	1.95119e-15
C9	1	VSS!	1.89849e-14
C10	X1_5	VSS!	1.60447e-15
*
*
.ENDS INVX1
*
