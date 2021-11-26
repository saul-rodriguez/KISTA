*
*
*
*                       LINUX           Mon Nov 15 16:17:40 2021
*
*
*
*  PROGRAM  advgen
*
*  Name           : advgen - Quantus - (64-bit)
*  Version        : 19.1.3-s062
*  Build Date     : Tue Jul 23 02:42:20 PDT 2019
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
Rc1	IN#4	IN#1	   35.7289	$poly_conn
Rc2	IN#5	IN#3	   35.7289	$poly_conn
Rb1	VS#1	VS	   75.1251	$metal1_conn
Rb2	VD#1	VD	   62.1509	$metal1_conn
Rb3	IN#1	IN	   45.0736	$metal1_conn
Rb5	IN	IN#3	   45.0662	$metal1_conn
Rb6	OUT#1	OUT	   62.3354	$metal1_conn
Rb7	OUT	OUT#2	   75.2181	$metal1_conn
*
*       CAPACITOR CARDS
*
*
C1	OUT	1	2.47115e-13
C2	VD	1	5.14855e-16
C3	IN#4	1	1.95207e-16
C4	IN#5	1	4.59746e-16
C5	IN#4	X1_5	2.78851e-16
C6	IN#1	1	7.77113e-16
C7	IN#3	1	7.79341e-16
C8	OUT#1	1	6.99763e-16
C9	OUT#2	1	6.68096e-16
C10	VD#1	1	1.21375e-16
C11	OUT#1	X1_5	2.00946e-16
C12	VS#1	1	2.64427e-16
C13	VD#1	X1_5	2.00046e-16
C14	IN	X1_5	4.60725e-17
C15	IN	1	7.02348e-14
C16	IN	VS	8.25593e-17
C17	OUT	VS	3.72733e-17
C18	VD	VS	2.02058e-17
C19	1	VS	5.20578e-16
C20	IN#4	VS	1.23681e-16
C21	IN#5	VS	1.22982e-16
C22	IN#1	VS	4.88453e-18
C23	IN#3	VS	5.2699e-18
C24	OUT#1	VS	7.95214e-17
C25	OUT#2	VS	7.44667e-17
C26	VD#1	VS	7.95672e-17
*
*
.ENDS inv_soi_qrc_test2
*
