*
*
*
*                       LINUX           Mon Dec 20 07:12:42 2021
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
.SUBCKT MX2X1 Y S0 B A
*
*
*  caps2d version: 10
*
*
*       TRANSISTOR CARDS
*
*
MX5_M0_unmatched	Y#4	S0#2	B#1	B#1	nch	L=1e-06
+ W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
MX4_M0_unmatched	Y#6	SB	A#2	A#2	nch	L=1e-06
+ W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
MX3_M0_unmatched	SB#6	S0#6	VSS!#1	VSS!#1	nch	L=1e-06
+ W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
MX8_M0_unmatched	Y#2	SB#8	B#2	B#2	pch	L=1e-06
+ W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0
+ fw=4e-06 sa=2e-06 sb=2e-06
MX7_M0_unmatched	Y#1	S0#5	A#3	A#3	pch	L=1e-06
+ W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0
+ fw=4e-06 sa=2e-06 sb=2e-06
MX6_M0_unmatched	SB#4	S0#7	VDD!#1	VDD!#1	pch	L=1e-06
+ W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0
+ fw=4e-06 sa=2e-06 sb=2e-06
*
*
*       RESISTOR AND CAP/DIODE CARDS
*
Rd5	S0#3	S0#5	  988.6361
Rd2	S0#3	S0#4	 1177.9113
Rd7	S0#4	S0#6	 1327.5659
Rd6	Y	Y#2	    3.3160
Rd4	Y	Y#1	    3.4320
Rd3	Y#4	Y#6	  435.1000
Rd8	A	A#3	    2.8727
Rd1	A	A#2	    5.2386
Rc17	B	B#2	    2.6250	$metal1_conn
Rc16	B	B#1	    5.3500	$metal1_conn
Rc19	VSS!#1	VSS!	    5.1799	$metal1_conn
Rc18	VDD!#1	VDD!	    2.7049	$metal1_conn
Rc1	S0#3	S0#2	 2478.0679
Rc11	S0#4	S0#7	 1027.5659
Rc14	S0#4	S0	  125.3469
Rc13	Y#2	Y#1	   20.6749
Rc15	Y	Y#4	    5.1188
Rc12	Y	Y#6	    5.2212
Rc6	A#3	A#2	  461.4998
Rc9	SB#8	SB#3	  357.2892
Rc5	SB	SB#2	  362.2892
Rc7	SB#3	SB#4	   36.6526
Rc10	SB#2	SB#7	    0.2304
Rc8	SB#4	SB#7	    3.1928
Rc2	SB#3	SB#7	    6.9640
Rc4	SB#7	SB#6	    5.0000
Rs1	3	VSS!	50

*
*       CAPACITOR CARDS
*
*
C1	Y#4	VSS!	3.72183e-17
C2	S0#2	Y	3.16203e-16
C3	Y#1	S0#5	1.46339e-16
C4	S0#3	Y	6.03317e-16
C5	B#1	Y	1.93638e-16
C6	Y#2	B	1.93079e-16
C7	A	Y	3.57626e-17
C8	Y#1	A#3	9.85409e-17
C9	Y#6	A#2	5.26563e-17
C10	Y#2	SB#8	2.02925e-16
C11	Y#2	SB#3	1.47658e-16
C12	Y#6	SB	8.89633e-17
C13	Y#6	SB#2	2.50525e-17
C14	3	Y	1.48352e-15
C15	Y#2	3	1.19897e-15
C16	Y#4	3	3.44133e-16
C17	Y#1	3	1.32998e-16
C18	Y#6	3	2.71776e-16
C19	Y#2	X8_5	3.041e-16
C20	Y#1	X7_5	1.55064e-16
C21	S0	VSS!	3.04742e-18
C22	S0#5	VSS!	6.78987e-18
C23	S0#7	VSS!	1.45245e-18
C24	S0#2	VSS!	1.03825e-17
C25	VSS!#1	S0	6.73101e-18
C26	VSS!#1	S0#6	1.29774e-16
C27	S0#3	VSS!	1.29544e-17
C28	B#1	VSS!	2.05151e-17
C29	VDD!	VSS!	5.26279e-18
C30	A	VSS!	1.1173e-17
C31	SB	VSS!	2.7597e-18
C32	SB#8	VSS!	1.00888e-17
C33	SB#3	VSS!	2.19393e-18
C34	SB#2	VSS!	1.27201e-16
C35	SB#6	VSS!	9.28991e-17
C36	VSS!#1	SB#6	9.95506e-17
C37	3	VSS!	7.01265e-15
C38	VSS!#1	3	9.03485e-16
C39	B#1	S0#2	3.15634e-16
C40	S0#3	B	8.56715e-17
C41	VDD!#1	S0	1.21866e-17
C42	VDD!#1	S0#7	1.81371e-16
C43	S0#4	VDD!#1	1.54616e-19
C44	A	S0	3.96272e-18
C45	S0#2	A	7.15588e-18
C46	A#3	S0#5	2.30062e-16
C47	A#3	S0#7	4.67684e-18
C48	A#2	S0#6	2.8299e-18
C49	S0#3	A	6.9829e-16
C50	S0#4	A	1.64809e-19
C51	SB#3	S0#5	3.00242e-17
C52	SB#4	S0	8.22403e-16
C53	SB#4	S0#5	3.89624e-17
C54	SB#4	S0#7	2.58299e-16
C55	SB#6	S0#6	2.39053e-16
C56	S0#4	SB#4	3.25346e-17
C57	3	S0	5.29576e-15
C58	S0#5	3	1.01779e-15
C59	S0#7	3	9.53891e-16
C60	S0#2	3	2.90358e-15
C61	S0#6	3	1.802e-15
C62	S0#3	3	5.09998e-15
C63	S0#4	3	2.08148e-16
C64	S0#5	X7_5	5.25352e-16
C65	S0#7	X6_5	5.15374e-16
C66	B#2	VDD!	1.39618e-17
C67	B#2	SB#8	2.01528e-16
C68	3	B	1.93074e-15
C69	B#2	3	1.62568e-16
C70	B#1	3	1.63293e-15
C71	B#2	X8_5	4.05588e-16
C72	SB#3	VDD!	1.9864e-16
C73	SB#4	VDD!	1.65746e-16
C74	VDD!#1	SB#4	1.34303e-16
C75	3	VDD!	6.98798e-15
C76	VDD!#1	3	5.87376e-16
C77	VDD!#1	X6_5	4.05588e-16
C78	A#2	SB	1.75359e-16
C79	A#2	SB#2	6.02108e-17
C80	SB#4	A#3	1.9851e-16
C81	SB#6	A	1.30847e-16
C82	3	A	2.1403e-15
C83	A#3	3	8.57375e-16
C84	A#2	3	4.02322e-16
C85	A#3	X7_5	1.63189e-16
C86	3	SB	1.09967e-15
C87	SB#8	3	5.42044e-16
C88	SB#3	3	3.30954e-15
C89	SB#2	3	2.37779e-15
C90	SB#4	3	5.97486e-15
C91	SB#8	X8_5	5.10353e-16
C92	SB#3	X8_5	4.42344e-17
C93	SB#4	X6_5	3.4929e-16
*
*
.ENDS MX2X1
*