*
*
*
*                       LINUX           Fri Nov 26 13:43:25 2021
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
.SUBCKT inv_soi_qrc_test2 IN VS OUT VD
*
*
*  caps2d version: 10
*
*
*       TRANSISTOR CARDS
*
*
MX0_M0_unmatched	OUT#2	IN#5	VS#1	VS#1	nch	L=1e-06
+ W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
MX1_M0_unmatched	OUT#1	IN#4	VD#1	VD#1	pch	L=1e-06
+ W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
*
*
*       RESISTOR AND CAP/DIODE CARDS
*
Re1	IN#4	IN#1	   35.7289	$poly_conn
Re2	IN#5	IN#3	   35.7289	$poly_conn
Rd3	IN#1	IN	   45.0736	$metal1_conn
Rd5	IN	IN#3	   45.0662	$metal1_conn
Rd6	OUT#1	OUT	   62.3354	$metal1_conn
Rd7	OUT	OUT#2	   75.2181	$metal1_conn
Rd1	VS#1	VS	   75.1251	$metal1_conn
Rd2	VD#1	VD	   62.1509	$metal1_conn
*
*       CAPACITOR CARDS
*
*
C1	VS	IN	2.00079e-16
C2	IN#4	VS	6.16984e-16
C3	IN#5	VS	6.01433e-16
C4	IN#1	VS	7.89406e-18
C5	IN#3	VS	8.19603e-18
C6	1	IN	7.30106e-14
C7	IN#1	1	7.77152e-16
C8	IN#3	1	7.79619e-16
C9	OUT	VS	5.77441e-17
C10	OUT#1	VS	1.03359e-15
C11	OUT#2	VS	7.86177e-16
C12	VD	VS	5.65418e-16
C13	VD#1	VS	4.31962e-16
C14	1	VS	3.56128e-15
C15	X1_5	VS	7.59992e-16
C16	1	OUT	2.48336e-13
*
*
.ENDS inv_soi_qrc_test2
*
