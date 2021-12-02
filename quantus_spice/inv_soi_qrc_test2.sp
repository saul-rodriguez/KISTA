*
*
*
*                       LINUX           Wed Dec  1 15:03:05 2021
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
Rd3	OUT#6	OUT#1	 4435.8530	$poly_conn
Rc2	VD#3	VD	    0.1025	$metal1_conn
Rc3	VD#2	VD#3	    5.0000	$metal1_conn
Rc4	VS#1	VS	    5.0850	$metal1_conn
Rc5	IN#2	IN	    5.0500	$metal1_conn
Rc7	IN	IN#3	    5.0450	$metal1_conn
Rc8	OUT#1	OUT#2	    5.2195	$metal1_conn
Rc9	OUT#2	OUT#3	    5.1610	$metal1_conn
Rc10	OUT#2	OUT#4	    5.2560	$metal1_conn
Rc11	OUT#5	OUT#6	    6.6500	$metal1_conn
Rc12	OUT	OUT#8	    1.4478	$metal1_conn
Rb2	OUT#7	OUT#5	    6.9500	$metal2_conn
Rb3	OUT#8	OUT#9	    0.1500	$metal2_conn
Ra1	OUT#7	OUT#9	    0.7500	$metal3_conn
*
*       CAPACITOR CARDS
*
*
C1	OUT	4	4.4249e-13
C2	OUT#6	4	2.94733e-14
C3	OUT#1	4	1.86705e-14
C4	OUT#7	4	1.95869e-14
C5	OUT#8	4	3.62944e-13
C6	OUT#5	4	2.5455e-14
C7	IN	4	2.56716e-13
C8	VD#3	4	1.55758e-13
C9	IN#3	4	1.5124e-15
C10	IN	VS	3.47276e-16
C11	VD	VS	8.75497e-16
C12	4	VS	1.29081e-14
C13	X10_5	VS	1.27876e-15
C14	IN#4	VS	9.86117e-16
C15	IN#5	VS	9.58761e-16
C16	IN#2	VS	1.5229e-15
C17	IN#3	VS	1.06141e-17
C18	OUT#9	VS	2.79255e-15
C19	OUT#4	VS	1.76272e-15
C20	OUT#3	VS	1.26831e-15
C21	VD#2	VS	1.02023e-15
C22	VD#3	VS	6.47008e-18
C23	OUT#2	VS	2.65908e-15
*
*
.ENDS inv_soi_qrc_test2
*
