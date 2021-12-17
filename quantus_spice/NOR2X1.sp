*
*
*
*                       LINUX           Fri Dec 17 11:05:32 2021
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
.SUBCKT NOR2X1  A Y B
*
*
*  caps2d version: 10
*
*
*       TRANSISTOR CARDS
*
*
MX3_M0_unmatched	Y#5	B#3	VSS!#1	VSS!#1	nch	L=1e-06
+ W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
MX2_M0_unmatched	Y#4	A#6	VSS!#2	VSS!#2	nch	L=1e-06
+ W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
MX5_M0_unmatched	Y#1	B#1	net9	net9	pch	L=1e-06
+ W=8e-06
+ AD=2e-11	AS=0	PD=2.1e-05	PS=0
+ fw=8e-06 sa=2e-06 sb=2e-06
MX4_M0_unmatched	net9#2	A#4	VDD!#1	VDD!#1	pch	L=1e-06
+ W=8e-06
+ AD=2e-11	AS=0	PD=2.1e-05	PS=0
+ fw=8e-06 sa=2e-06 sb=2e-06
*
*
*       RESISTOR AND CAP/DIODE CARDS
*
Rd1	A#4	A#5	  657.2891
Rd2	A#5	A	    5.0700
Rd3	B#2	B#3	 1044.2584
Rd4	VSS!	VSS!#1	    5.9341
Rd5	VSS!	VSS!#2	    5.8178
Rd6	Y	Y#3	    0.4143
Rc14	VDD!#1	VDD!	    1.4545	$metal1_conn
Rc4	net9	net9#2	    2.7059	$metal1_conn
Rc1	A#5	A#6	  957.2891
Rc2	B#1	B#2	  744.2584
Rc3	B#2	B	  750.9302
Rc5	VSS!#1	VSS!#2	   71.8528
Rc9	Y	Y#1	    1.6030
Rc8	Y#1	Y#3	    7.1435
Rc7	Y#3	Y#5	    5.0981
Rc6	Y#3	Y#4	    5.3575
Rs1	3	VSS!	50
*
*       CAPACITOR CARDS
*
*
C1	VSS!	VDD!	6.28194e-18
C2	VDD!#1	A	2.21511e-17
C3	VDD!#1	A#4	3.03441e-16
C4	Y	VDD!	2.6333e-17
C5	B#1	VDD!	2.21274e-17
C6	3	VDD!	6.82798e-15
C7	VDD!#1	3	3.2218e-16
C8	net9	VDD!	2.67824e-17
C9	net9#2	VDD!	3.03639e-17
C10	VDD!#1	net9#2	1.46624e-16
C11	X5_5	VDD!	4.50485e-17
C12	VDD!#1	X4_5	6.36131e-16
C13	A	VSS!	1.02837e-17
C14	VSS!#2	A#6	1.3044e-16
C15	A#5	VSS!	1.39239e-19
C16	Y	VSS!	1.28683e-18
C17	VSS!#2	Y#4	1.02564e-16
C18	Y#3	VSS!#1	1.341e-16
C19	B	VSS!	3.93913e-18
C20	B#1	VSS!	3.08722e-18
C21	VSS!#1	B#3	9.55396e-17
C22	B#2	VSS!	5.01933e-18
C23	3	VSS!	6.66291e-15
C24	VSS!#1	3	2.4965e-16
C25	VSS!#2	3	2.10042e-15
C26	net9#2	VSS!	5.29192e-19
C27	A#4	Y	3.48881e-18
C28	Y#4	A	3.74885e-16
C29	Y#4	A#6	3.96962e-16
C30	A#5	Y#4	4.70031e-18
C31	3	A	3.38372e-15
C32	A#4	3	6.43213e-16
C33	A#6	3	1.35929e-15
C34	A#5	3	4.01876e-17
C35	net9#2	A#4	2.48735e-16
C36	A#4	X4_5	5.03459e-16
C37	B#1	Y	3.07556e-16
C38	Y#3	B	1.85018e-16
C39	Y#3	B#3	4.4924e-16
C40	B#2	Y#3	7.27441e-16
C41	Y#3	3	5.38241e-15
C42	net9	Y	1.52931e-16
C43	Y#4	net9#2	4.81054e-18
C44	X5_5	Y	6.36131e-16
C45	3	B	2.21732e-15
C46	B#1	3	7.02269e-16
C47	B#3	3	1.42555e-15
C48	B#2	3	2.55904e-15
C49	B#1	net9	2.47812e-16
C50	B#1	X5_5	5.26868e-16
C51	net9#2	3	1.03803e-16
C52	X5_5	net9	1.86459e-16
C53	net9#2	X4_5	2.09118e-16
*
*
.ENDS NOR2X1
*
