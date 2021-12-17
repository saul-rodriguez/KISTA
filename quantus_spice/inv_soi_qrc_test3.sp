*
*
*
*                       LINUX           Fri Dec 17 09:41:29 2021
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
.SUBCKT inv_soi_qrc_test3 IN VS OUT VD
*
*
*  caps2d version: 10
*
*
*       TRANSISTOR CARDS
*
*
MX7_M0_unmatched	OUT#3	IN#5	VS#1	VS#1	nch	L=1e-06
+ W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
MX8_M0_unmatched	OUT#4	IN#4	VD#1	VD#1	pch	L=1e-06
+ W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
*
*
*       RESISTOR AND CAP/DIODE CARDS
*
Rd1	IN#4	IN#1	  357.2892	$poly_conn
Rd2	IN#5	IN#3	  357.2892	$poly_conn
Rd3	OUT	OUT#8	    1.4478
Rc2	IN#1	IN	    5.0500	$metal1_conn
Rc4	IN	IN#3	    5.0450	$metal1_conn
Rc1	VS#1	VS	    5.0850	$metal1_conn
Rc8	VD	VD#1	    5.0779	$metal1_conn
Rc10	OUT#8	OUT#4	 8998.4150
Rb2	OUT#8	OUT#3	 8835.7744
Ra1	OUT#4	OUT#3	   10.4231
*
*       CAPACITOR CARDS
*
*
C1	VS	IN	3.35109e-16
C2	IN#4	VS	9.84934e-16
C3	IN#5	VS	9.58761e-16
C4	IN#1	VS	1.52526e-15
C5	IN#3	VS	1.06141e-17
C6	3	IN	2.567e-13
C7	IN#3	3	1.5124e-15
C8	OUT#8	VS	8.48266e-15
C9	VD	VS	1.42496e-15
C10	3	VS	1.24235e-14
C11	X8_5	VS	1.25805e-15
C12	OUT#8	3	8.9862e-13
C13	VD#1	3	7.97363e-13
*
*
.ENDS inv_soi_qrc_test3
*
