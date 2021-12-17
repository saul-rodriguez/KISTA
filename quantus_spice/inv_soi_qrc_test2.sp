*
*
*
*                       LINUX           Fri Dec 17 09:03:04 2021
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
.SUBCKT inv_soi_qrc_test2 OUT IN VD VS
*
*
*  caps2d version: 10
*
*
*       TRANSISTOR CARDS
*
*
MX9_M0_unmatched	OUT#3	IN#5	VS#1	VS#1	nch	L=1e-06
+ W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
MX10_M0_unmatched	OUT#4	IN#4	VD#2	VD#2	pch	L=1e-06
+ W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
*
*
*       RESISTOR AND CAP/DIODE CARDS
*
Rd1	IN#4	IN#2	  357.2892	$poly_conn
Rd2	IN#5	IN#3	  357.2892	$poly_conn
Rd3	VD	VD#2	    5.1025
Rc5	IN#2	IN	    5.0500	$metal1_conn
Rc7	IN	IN#3	    5.0450	$metal1_conn
Rc4	VS#1	VS	    5.0850	$metal1_conn
Rc12	OUT	OUT#8	    1.4478
Rc11	OUT#4	OUT#3	   10.4231
Rb3	OUT#8	OUT#4	 8998.4150
Ra1	OUT#8	OUT#3	 8835.7744
*
*       CAPACITOR CARDS
*
*
C1	OUT#8	VS	8.48266e-15
C2	OUT#8	4	8.9862e-13
C3	VS	IN	3.47276e-16
C4	IN#4	VS	9.86117e-16
C5	IN#5	VS	9.58761e-16
C6	IN#2	VS	1.5229e-15
C7	IN#3	VS	1.06141e-17
C8	4	IN	2.56716e-13
C9	IN#3	4	1.5124e-15
C10	VD#2	VS	1.90219e-15
C11	4	VD	1.55758e-13
C12	4	VS	1.29081e-14
C13	X10_5	VS	1.27876e-15
*
*
.ENDS inv_soi_qrc_test2
*
