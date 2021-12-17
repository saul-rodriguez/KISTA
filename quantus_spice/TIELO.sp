*
*
*
*                       LINUX           Fri Dec 17 10:19:56 2021
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
.SUBCKT TIELO Y 
*
*
*  caps2d version: 10
*
*
*       TRANSISTOR CARDS
*
*
MX0_M0_unmatched	Y#1	net25#4	VSS!#1	VSS!#1	nch	L=1e-06
+ W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
MX1_M0_unmatched	net25	net25#3	VDD!#1	VDD!#1	pch	L=1e-06
+ W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0
+ fw=4e-06 sa=2e-06 sb=2e-06
*
*
*       RESISTOR AND CAP/DIODE CARDS
*
Rd1	net25#3	net25#2	  357.2892	$poly_conn
Rd2	net25#2	net25#4	 1827.2892	$poly_conn
Rc1	net25	net25#2	    7.6529	$metal1_conn
Rc5	Y#1	Y	    5.0000	$metal1_conn
Rc7	VSS!	VSS!#1	    5.3102	$metal1_conn
Rc6	VDD!#1	VDD!	    2.7054	$metal1_conn
Rs1	1	VSS!	50
*
*       CAPACITOR CARDS
*
*
C1	VSS!	Y	8.9828e-16
C2	VDD!	VSS!	3.84372e-15
C3	VDD!#1	VSS!	1.13107e-15
C4	1	VSS!	1.78343e-14
C5	net25	VSS!	5.62423e-16
C6	net25#3	VSS!	9.85513e-16
C7	net25#4	VSS!	2.57283e-15
C8	net25#2	VSS!	4.44284e-15
C9	X1_4	VSS!	1.3251e-15
*
*
.ENDS TIELO
*
