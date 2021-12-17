*
*
*
*                       LINUX           Fri Dec 17 10:11:48 2021
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
.GLOBAL VDD! VSS!
.SUBCKT TIEHI  Y
*
*
*  caps2d version: 10
*
*
*       TRANSISTOR CARDS
*
*
MX0_M0_unmatched	net7#2	net7#4	VSS!#1	VSS!#1	nch	L=1e-06
+ W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
MX1_M0_unmatched	Y#1	net7#3	VDD!#1	VDD!#1	pch	L=1e-06
+ W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0
+ fw=4e-06 sa=2e-06 sb=2e-06
*
*
*       RESISTOR AND CAP/DIODE CARDS
*
Rd1	net7#3	net7	 1557.2892	$poly_conn
Rd2	net7	net7#4	  357.2892	$poly_conn
Rc1	net7	net7#2	   10.1279	$metal1_conn
Rc4	VDD!	VDD!#1	    2.7927	$metal1_conn
Rc3	VSS!#1	VSS!	    5.3554	$metal1_conn
Rc2	Y	Y#1	    2.5400	$metal1_conn
Rs1	1	VSS!	50
*
*       CAPACITOR CARDS
*
*
C1	VSS!	VDD!	3.89589e-15
C2	VDD!#1	VSS!	1.55868e-15
C3	Y	VSS!	6.13594e-16
C4	Y#1	VSS!	4.31394e-16
C5	1	VSS!	1.80875e-14
C6	net7	VSS!	4.05181e-15
C7	net7#3	VSS!	2.91025e-15
C8	net7#4	VSS!	8.95178e-16
C9	net7#2	VSS!	4.12611e-16
C10	X1_5	VSS!	1.17984e-15
*
*
.ENDS TIEHI
*
