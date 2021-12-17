*
*
*
*                       LINUX           Fri Dec 17 07:02:52 2021
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
.SUBCKT MX2X1 Y A S0 B
*
*
*  caps2d version: 10
*
*
*       TRANSISTOR CARDS
*
*
MX9_M0_unmatched	Y#1	yb#7	VSS!#1	VSS!#1	nch	L=1e-06
+ W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
MX8_M0_unmatched	yb#3	ybb#9	VSS!#4	VSS!#4	nch	L=1e-06
+ W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
MX7_M0_unmatched	ybb#2	S0#2	B#2	B#2	nch	L=1e-06
+ W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
MX6_M0_unmatched	ybb#6	SB	A#2	A#2	nch	L=1e-06
+ W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
MX5_M0_unmatched	SB#6	S0#6	VSS!#3	VSS!#3	nch	L=1e-06
+ W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
MX14_M0_unmatched	Y#2	yb#5	VDD!#1	VDD!#1	pch	L=1e-06
+ W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0
+ fw=4e-06 sa=2e-06 sb=2e-06
MX13_M0_unmatched	yb#4	ybb#8	VDD!#4	VDD!#4	pch	L=1e-06
+ W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0
+ fw=4e-06 sa=2e-06 sb=2e-06
MX12_M0_unmatched	ybb#4	SB#8	B#3	B#3	pch	L=1e-06
+ W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0
+ fw=4e-06 sa=2e-06 sb=2e-06
MX11_M0_unmatched	ybb#7	S0#5	A#3	A#3	pch	L=1e-06
+ W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0
+ fw=4e-06 sa=2e-06 sb=2e-06
MX10_M0_unmatched	SB#4	S0#7	VDD!#3	VDD!#3	pch	L=1e-06
+ W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0
+ fw=4e-06 sa=2e-06 sb=2e-06
*
*
*       RESISTOR AND CAP/DIODE CARDS
*
Rd9	S0#3	S0#5	  988.6361
Rd10	S0#3	S0#4	 1173.3060
Rd5	S0#4	S0#6	 1329.0477
Rd2	yb#5	yb#6	 1036.0317
Rd7	yb#6	yb	   87.9640
Rd6	yb	yb#3	   20.4026
Rd4	VSS!	VSS!#3	    5.2032
Rd3	VSS!#1	VSS!#4	   46.8636
Rd8	VDD!	VDD!#3	    2.7282
Rd1	VDD!#1	VDD!#4	   15.5983
Rd11	ybb#8	ybb#9	 2400.0000
Rd13	ybb	ybb#3	    5.2929
Rd12	ybb#3	ybb#6	    5.1000
Rc23	Y	Y#2	    2.7250	$metal1_conn
Rc22	Y	Y#1	    5.2500	$metal1_conn
Rc4	A	A#3	    2.8231	$metal1_conn
Rc3	A	A#2	    5.1481	$metal1_conn
Rc12	B	B#3	    2.6231	$metal1_conn
Rc11	B	B#2	    5.3481	$metal1_conn
Rc13	S0#3	S0#2	 2478.0679
Rc17	S0#4	S0#7	 1029.0477
Rc15	S0#4	S0	  476.3418
Rc18	yb#6	yb#7	 1336.0317
Rc16	yb	yb#4	   10.5864
Rc14	yb#4	yb#3	   10.7316
Rc1	VSS!	VSS!#1	    6.7912
Rc5	VSS!	VSS!#4	    6.6670
Rc8	VDD!	VDD!#1	    4.3290
Rc7	VDD!	VDD!#4	    4.1799
Rc9	ybb#9	ybb	  816.0984
Rc6	ybb#3	ybb#2	    5.0000
Rc19	ybb#3	ybb#4	    3.4339
Rc21	ybb#3	ybb#7	    3.5541
Rc20	ybb#4	ybb#7	   18.7059
Rc30	SB#8	SB#3	  357.2892
Rc29	SB	SB#2	  362.2892
Rc28	SB#3	SB#4	   36.6526
Rc31	SB#2	SB#7	    0.2304
Rc26	SB#4	SB#7	    3.1928
Rc25	SB#3	SB#7	    6.9640
Rc24	SB#7	SB#6	    5.0000
Rs1		VSS!	5		50.0
*
*       CAPACITOR CARDS
*
*
C1	Y	VSS!	2.41519e-15
C2	Y#2	VSS!	1.5704e-15
C3	Y#1	VSS!	1.70564e-15
C4	VDD!	VSS!	4.78805e-16
C5	VDD!#1	VSS!	4.51572e-16
C6	VDD!#4	VSS!	4.83924e-16
C7	VDD!#3	VSS!	7.23986e-16
C8	A	VSS!	3.00982e-15
C9	A#3	VSS!	1.56722e-15
C10	A#2	VSS!	6.96696e-16
C11	S0	VSS!	3.19376e-17
C12	S0#5	VSS!	9.77608e-16
C13	S0#7	VSS!	9.69979e-16
C14	S0#2	VSS!	7.50522e-16
C15	S0#6	VSS!	3.80412e-16
C16	S0#3	VSS!	1.41349e-15
C17	S0#4	VSS!	8.15291e-16
C18	B	VSS!	3.01284e-15
C19	B#3	VSS!	5.06636e-16
C20	B#2	VSS!	1.80146e-15
C21	SB	VSS!	2.68869e-16
C22	SB#8	VSS!	9.30806e-16
C23	SB#3	VSS!	4.28085e-16
C24	SB#2	VSS!	2.33167e-16
C25	SB#4	VSS!	2.54672e-15
C26	ybb	VSS!	3.63656e-16
C27	ybb#8	VSS!	1.53209e-15
C28	ybb#9	VSS!	4.99092e-16
C29	ybb#4	VSS!	2.96047e-15
C30	yb	VSS!	3.75804e-16
C31	yb#5	VSS!	9.23212e-16
C32	yb#7	VSS!	3.39275e-16
C33	yb#4	VSS!	1.41614e-15
C34	yb#3	VSS!	3.55138e-16
C35	5	VSS!	2.56558e-14
C36	VSS!#1	5	1.05208e-15
C37	VSS!#4	5	6.55909e-16
C38	VSS!#3	5	9.06235e-16
C39	X14_5	VSS!	1.16265e-15
C40	X13_5	VSS!	9.06249e-16
C41	X12_5	VSS!	1.0306e-15
C42	X11_5	VSS!	8.43575e-16
C43	X10_5	VSS!	1.27024e-15
C44	5	VDD!	1.41241e-14
C45	VDD!#1	5	8.73178e-16
C46	VDD!#4	5	5.2372e-16
C47	VDD!#3	5	5.90761e-16
C48	5	S0	1.89462e-15
C49	S0#5	5	1.01853e-15
C50	S0#7	5	1.0369e-15
C51	S0#2	5	2.84849e-15
C52	S0#6	5	1.88502e-15
C53	S0#3	5	5.0993e-15
C54	S0#4	5	4.08055e-15
C55	5	SB	1.08219e-15
C56	SB#8	5	5.42196e-16
C57	SB#3	5	3.18606e-15
C58	SB#2	5	2.3575e-15
C59	SB#4	5	5.91034e-15
C60	5	ybb	3.36129e-15
C61	ybb#8	5	2.51586e-15
C62	ybb#9	5	3.25342e-15
C63	ybb#2	5	4.63576e-15
C64	5	yb	5.0799e-15
C65	yb#5	5	9.60897e-16
C66	yb#7	5	1.80055e-15
C67	yb#4	5	2.82026e-15
C68	yb#3	5	9.57148e-16
*
*
.ENDS MX2X1
*
