*
*
*
*                       LINUX           Fri Dec 17 08:46:37 2021
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
.SUBCKT BUFX2 A Y
*
*
*  caps2d version: 10
*
*
*       TRANSISTOR CARDS
*
*
MX3_M0_unmatched	Y#1	net6#7	VSS!#1	VSS!#1	nch	L=1e-06
+ W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0
+ fw=4e-06 sa=2e-06 sb=2e-06
MX2_M0_unmatched	net6#3	A#4	VSS!#2	VSS!#2	nch	L=1e-06
+ W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
MX5_M0_unmatched	Y#2	net6#5	VDD!#1	VDD!#1	pch	L=1e-06
+ W=8e-06
+ AD=2e-11	AS=0	PD=2.1e-05	PS=0
+ fw=8e-06 sa=2e-06 sb=2e-06
MX4_M0_unmatched	net6#4	A#2	VDD!#2	VDD!#2	pch	L=1e-06
+ W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0
+ fw=4e-06 sa=2e-06 sb=2e-06
*
*
*       RESISTOR AND CAP/DIODE CARDS
*
Rd4	net6#5	net6#6	  444.2584
Rd6	net6#6	net6	  370.9252
Rd5	net6	net6#3	   19.9376
Rd1	A#2	A#3	 1044.2584
Rd3	A#3	A	  525.9402
Rc7	VDD!#1	VDD!	    1.6554	$metal1_conn
Rc8	VDD!	VDD!#2	    2.7842	$metal1_conn
Rc9	VSS!#1	VSS!	    2.8429	$metal1_conn
Rc10	VSS!	VSS!#2	    5.3217	$metal1_conn
Rc6	Y	Y#2	    1.4275	$metal1_conn
Rc5	Y	Y#1	    2.7225	$metal1_conn
Rc2	net6#6	net6#7	 1044.2584
Rc4	net6	net6#4	   10.4446
Rc3	net6#4	net6#3	   10.7147
Rc1	A#3	A#4	 1044.2584
Rs1	3	VSS!	50
*
*       CAPACITOR CARDS
*
*
C1	VSS!	VDD!	6.97565e-15
C2	VDD!#1	VSS!	2.01573e-15
C3	VDD!#2	VSS!	1.58248e-15
C4	A	VSS!	2.07322e-15
C5	A#2	VSS!	1.97575e-15
C6	A#4	VSS!	1.83033e-15
C7	A#3	VSS!	3.15649e-15
C8	Y	VSS!	1.31357e-15
C9	Y#2	VSS!	1.23476e-15
C10	Y#1	VSS!	1.37661e-15
C11	net6	VSS!	1.84034e-15
C12	net6#5	VSS!	1.44955e-15
C13	net6#7	VSS!	1.96573e-15
C14	net6#4	VSS!	3.21343e-15
C15	net6#3	VSS!	9.60965e-16
C16	net6#6	VSS!	2.15027e-15
C17	3	VSS!	3.77107e-14
C18	X5_5	VSS!	1.34974e-15
C19	X4_5	VSS!	1.12619e-15
*
*
.ENDS BUFX2
*
