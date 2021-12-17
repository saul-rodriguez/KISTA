*
*
*
*                       LINUX           Fri Dec 17 07:30:30 2021
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
.SUBCKT DFFX1 Q D QN CK 
*
*
*  caps2d version: 10
*
*
*       TRANSISTOR CARDS
*
*
MX28_M0_unmatched	QN#2	net055#7	VSS!#1	VSS!#1	nch	L=1e-06
+ W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
MX27_M0_unmatched	net055#3	qbint#9	VSS!#11	VSS!#11
+ nch	L=1e-06	W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0	fw=2e-06 sa=2e-06 sb=2e-06
MX26_M0_unmatched	Q#2	qbint#10	VSS!#12	VSS!#12
+ nch	L=1e-06	W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0	fw=2e-06 sa=2e-06 sb=2e-06
MX25_M0_unmatched	n30#13	CKb#5	net028	net028	nch	L=1e-06
+ W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
MX24_M0_unmatched	net028#2	qbint#12	VSS!#13	VSS!#13
+ nch	L=1e-06	W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0	fw=2e-06 sa=2e-06 sb=2e-06
MX23_M0_unmatched	qbint#3	n30#9	VSS!#14	VSS!#14
+ nch	L=1e-06	W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0	fw=2e-06 sa=2e-06 sb=2e-06
MX22_M0_unmatched	n30#4	CKbb#9	mout#11	mout#11	nch
+ L=1e-06	W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
MX21_M0_unmatched	n20#12	CKbb#10	net017	net017	nch	L=1e-06
+ W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
MX20_M0_unmatched	net017#2	mout#4	VSS!#15	VSS!#15
+ nch	L=1e-06	W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0	fw=2e-06 sa=2e-06 sb=2e-06
MX19_M0_unmatched	mout#7	n20#8	VSS!#16	VSS!#16	nch
+ L=1e-06	W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
MX18_M0_unmatched	n20#3	CKb#13	net13	net13	nch	L=1e-06
+ W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
MX17_M0_unmatched	net13#2	D#3	VSS!#17	VSS!#17
+ nch	L=1e-06	W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0	fw=2e-06 sa=2e-06 sb=2e-06
MX16_M0_unmatched	CKbb#4	CKb#9	VSS!#18	VSS!#18	nch
+ L=1e-06	W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
MX15_M0_unmatched	CKb#3	CK#4	VSS!#10	VSS!#10	nch
+ L=1e-06	W=2e-06
+ AD=5e-12	AS=0	PD=9e-06	PS=0
+ fw=2e-06 sa=2e-06 sb=2e-06
MX41_M0_unmatched	QN#3	net055#5	VDD!#1	VDD!#1	pch	L=1e-06
+ W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0
+ fw=4e-06 sa=2e-06 sb=2e-06
MX40_M0_unmatched	net055#4	qbint#5	VDD!#11	VDD!#11
+ pch	L=1e-06	W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0	fw=4e-06 sa=2e-06 sb=2e-06
MX39_M0_unmatched	Q#3	qbint#11	VDD!#12	VDD!#12
+ pch	L=1e-06	W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0	fw=4e-06 sa=2e-06 sb=2e-06
MX38_M0_unmatched	n30#10	CKbb#5	net029	net029	pch	L=1e-06
+ W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0
+ fw=4e-06 sa=2e-06 sb=2e-06
MX37_M0_unmatched	net029#2	qbint#13	VDD!#13	VDD!#13
+ pch	L=1e-06	W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0	fw=4e-06 sa=2e-06 sb=2e-06
MX36_M0_unmatched	qbint#4	n30#7	VDD!#14	VDD!#14
+ pch	L=1e-06	W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0	fw=4e-06 sa=2e-06 sb=2e-06
MX35_M0_unmatched	n20#10	CKb#12	net018	net018	pch	L=1e-06
+ W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0
+ fw=4e-06 sa=2e-06 sb=2e-06
MX34_M0_unmatched	net018#2	mout	VDD!#15	VDD!#15
+ pch	L=1e-06	W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0	fw=4e-06 sa=2e-06 sb=2e-06
MX33_M0_unmatched	mout#8	n20#6	VDD!#16	VDD!#16	pch
+ L=1e-06	W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0
+ fw=4e-06 sa=2e-06 sb=2e-06
MX32_M0_unmatched	n20#5	CKbb#11	net14	net14	pch	L=1e-06
+ W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0
+ fw=4e-06 sa=2e-06 sb=2e-06
MX31_M0_unmatched	net14#2	D#2	VDD!#17	VDD!#17
+ pch	L=1e-06	W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0	fw=4e-06 sa=2e-06 sb=2e-06
MX30_M0_unmatched	CKbb#2	CKb#14	VDD!#18	VDD!#18	pch
+ L=1e-06	W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0
+ fw=4e-06 sa=2e-06 sb=2e-06
MX29_M0_unmatched	CKb#4	CK#2	VDD!#10	VDD!#10	pch
+ L=1e-06	W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0
+ fw=4e-06 sa=2e-06 sb=2e-06
MM14	n30#5	CKb#11	mout#9	mout#9	pch	L=1e-06	W=4e-06
+ AD=1e-11	AS=0	PD=1.3e-05	PS=0	fw=4e-06 sa=2e-06 sb=2e-06
*
*
*       RESISTOR AND CAP/DIODE CARDS
*
Rd4	D#2	D#1	  777.2892	$poly_conn
Rd5	D#1	D#3	 1347.2892	$poly_conn
Rd28	CKb#6	CKb#11	 3633.8735
Rd22	CKb#7	CKb#12	 3766.2549
Rd29	CKb#8	CKb#9	 2928.0679
Rd23	CKb#10	CKb	  370.9252
Rd30	CKb	CKb#3	   20.1588
Rd25	qbint#5	qbint#6	 1014.2584
Rd24	qbint#6	qbint#7	 1117.6837
Rd31	qbint#7	qbint#10	 1419.0477
Rd26	qbint#8	qbint#13	  997.5659
Rd27	qbint#8	qbint	   82.8419
Rd32	qbint	qbint#3	   20.2150
Rd36	CKbb#5	CKbb#6	 3453.0679
Rd38	CKbb#6	CKbb#7	 1188.5167
Rd37	CKbb#7	CKbb#8	 4188.5166
Rd33	CKbb#8	CKbb	 2001.5475
Rd40	CKbb	CKbb#4	   21.8576
Rd39	net055#5	net055#6	 1014.2584
Rd35	net055#6	net055	  445.9252
Rd34	net055	net055#3	   20.0314
Rd12	CK#2	CK#3	  864.2584
Rd14	CK#3	CK	  450.9377
Rd13	VSS!#1	VSS!#11	  151.6630
Rd15	VSS!#1	VSS!#3	    5.7608
Rd19	VSS!#3	VSS!#13	   15.9906
Rd20	VSS!#13	VSS!#5	    7.9180
Rd16	VSS!#5	VSS!#6	    0.5962
Rd21	VSS!#6	VSS!#16	    7.9180
Rd18	VSS!#6	VSS!#8	    0.6074
Rd17	VSS!#8	VSS!#17	    5.1645
Rd6	VSS!#8	VSS!#18	   10.2888
Rd8	VDD!#1	VDD!#2	    2.9060
Rd7	VDD!#2	VDD!#12	    4.2474
Rd9	VDD!#12	VDD!#4	    8.5777
Rd11	VDD!#4	VDD!#14	    3.7973
Rd10	VDD!#14	VDD!#6	   11.5401
Rd41	VDD!#6	VDD!#16	    4.2474
Rd43	VDD!#6	VDD!#8	    0.6210
Rd42	VDD!#8	VDD!#17	    2.7345
Rd1	VDD!#8	VDD!#18	    5.6388
Rd3	n30#8	n30#9	 1426.0319
Rd2	n30	n30#2	    5.0795
Rc8	D	D#1	    5.0025	$metal1_conn
Rc41	Q	Q#3	    2.7206	$metal1_conn
Rc40	Q	Q#2	    5.2606	$metal1_conn
Rc47	QN	QN#3	    2.8181	$metal1_conn
Rc46	QN	QN#2	    5.1631	$metal1_conn
Rc15	net018	net018#2	    5.0750	$metal1_conn
Rc34	net029	net029#2	    5.0750	$metal1_conn
Rc9	net14	net14#2	    5.1154	$metal1_conn
Rc35	net028	net028#2	   10.1000	$metal1_conn
Rc10	net13	net13#2	   10.1000	$metal1_conn
Rc16	net017	net017#2	   10.1000	$metal1_conn
Rc75	CKb#6	CKb#5	 4728.0679
Rc66	CKb#7	CKb#8	 2988.5168
Rc76	CKb#9	CKb#10	 1434.2584
Rc77	CKb	CKb#4	   10.3151
Rc67	CKb#4	CKb#3	   10.7673
Rc78	qbint#6	qbint#9	 1434.2584
Rc68	qbint#7	qbint#11	  999.0477
Rc79	qbint#7	qbint#8	 2362.7004
Rc69	qbint#8	qbint#12	 1417.5659
Rc80	qbint	qbint#4	   10.4399
Rc70	qbint#4	qbint#3	   10.7906
Rc81	CKbb#6	CKbb#9	 3858.8735
Rc71	CKbb#7	CKbb#10	 3991.2551
Rc82	CKbb#8	CKbb#11	  463.6361
Rc72	CKbb	CKbb#2	   10.0081
Rc74	CKbb#2	CKbb#4	   10.6105
Rc83	net055#6	net055#7	 1434.2584
Rc73	net055	net055#4	   10.3451
Rc57	net055#4	net055#3	   10.8255
Rc48	CK#3	CK#4	 1434.2584
Rc58	VSS!	VSS!#10	    5.1886
Rc59	VSS!#11	VSS!#3	    5.5497
Rc49	VSS!#3	VSS!#12	    5.1645
Rc60	VSS!#3	VSS!#5	    0.6074
Rc50	VSS!#5	VSS!#14	    5.1645
Rc61	VSS!#6	VSS!#15	    5.1645
Rc51	VSS!	VSS!#8	    0.4096
Rc62	VSS!#16	VSS!#8	   15.9906
Rc52	VSS!	VSS!#18	   10.7825
Rc63	VDD!	VDD!#10	    2.7636
Rc53	VDD!#2	VDD!#11	    2.7095
Rc64	VDD!#2	VDD!#4	    0.6210
Rc54	VDD!#4	VDD!#13	    2.7095
Rc56	VDD!#4	VDD!#6	    0.8355
Rc65	VDD!#6	VDD!#15	    2.7095
Rc55	VDD!	VDD!#8	    0.4085
Rc2	VDD!#16	VDD!#8	    8.5777
Rc4	VDD!	VDD!#18	    5.6939
Rc3	n30#7	n30#8	 1006.0318
Rc31	n30#8	n30	   80.4640
Rc33	n30#2	n30#5	    2.7181
Rc32	n30#2	n30#4	    5.1631
Rc26	n30#2	n30#10	    3.9915
Rc30	n30#2	n30#13	    7.3129
Rc29	n30#10	n30#13	   27.1489
Rc28	n20#6	n20#7	 1014.2584
Rc37	n20#7	n20#8	 1434.2584
Rc36	n20#7	n20#2	  750.9252
Rc38	n20#2	n20	    0.1745
Rc5	n20#2	n20#5	    2.7200
Rc7	n20#2	n20#3	    5.1631
Rc6	n20	n20#10	    3.7217
Rc11	n20	n20#12	    6.8186
Rc14	n20#10	n20#12	   32.8723
Rc12	mout	mout#2	 1006.0318
Rc22	mout#2	mout#4	 1426.0319
Rc21	mout#2	mout#3	   47.9640
Rc23	mout#3	mout#9	    3.6110
Rc17	mout#3	mout#11	    6.9897
Rc24	mout#9	mout#11	   32.3608
Rc25	mout#3	mout#8	    2.7181
Rc20	mout#3	mout#7	    5.2631
Rb3	CKb#6	CKb#7	 1188.5167
Rb1	CKb#8	CKb#13	  538.6361
Rb2	CKb#10	CKb#14	  864.2584
Rs1	10	VSS!	50
*
*       CAPACITOR CARDS
*
*
C1	VSS!	Q	2.98659e-15
C2	Q#3	VSS!	9.51892e-16
C3	Q#2	VSS!	1.14529e-15
C4	VSS!	D	3.4757e-16
C5	D#2	VSS!	1.63917e-15
C6	D#3	VSS!	2.17038e-15
C7	D#1	VSS!	3.55126e-15
C8	VSS!	QN	2.99091e-15
C9	QN#3	VSS!	1.77117e-15
C10	QN#2	VSS!	8.80953e-16
C11	VSS!	CK	1.94469e-15
C12	CK#2	VSS!	1.76017e-15
C13	CK#4	VSS!	2.37844e-15
C14	CK#3	VSS!	3.32019e-15
C15	VDD!	VSS!	6.68392e-17
C16	VDD!#1	VSS!	5.06526e-16
C17	VDD!#11	VSS!	4.76565e-16
C18	VDD!#12	VSS!	4.95603e-16
C19	VDD!#13	VSS!	1.11588e-15
C20	VDD!#14	VSS!	9.36943e-16
C21	VDD!#15	VSS!	7.25755e-16
C22	VDD!#16	VSS!	6.38419e-16
C23	VDD!#17	VSS!	5.68817e-16
C24	VDD!#18	VSS!	5.8567e-16
C25	VDD!#10	VSS!	7.27308e-16
C26	VDD!#6	VSS!	3.88751e-15
C27	CKb#11	VSS!	3.00704e-15
C28	CKb#12	VSS!	1.81357e-15
C29	CKb#14	VSS!	9.45241e-16
C30	CKb#5	VSS!	1.18287e-15
C31	CKb#13	VSS!	2.48461e-16
C32	CKb#9	VSS!	1.05787e-15
C33	CKb#4	VSS!	1.6233e-15
C34	CKb#6	VSS!	1.50615e-15
C35	CKb#7	VSS!	2.06769e-15
C36	CKb#8	VSS!	1.28355e-15
C37	CKb#10	VSS!	2.63047e-16
C38	CKbb#5	VSS!	1.08842e-15
C39	CKbb#11	VSS!	8.63708e-16
C40	CKbb#9	VSS!	2.51293e-15
C41	CKbb#10	VSS!	1.70374e-15
C42	CKbb#2	VSS!	2.38904e-15
C43	CKbb#6	VSS!	3.4661e-15
C44	CKbb#7	VSS!	2.22744e-15
C45	CKbb#8	VSS!	1.18828e-15
C46	n20	VSS!	7.13546e-15
C47	n20#6	VSS!	9.52957e-16
C48	n20#8	VSS!	3.52428e-16
C49	n20#7	VSS!	2.41586e-16
C50	mout	VSS!	8.51417e-16
C51	mout#4	VSS!	2.32808e-16
C52	mout#3	VSS!	8.12815e-15
C53	n30#7	VSS!	9.58937e-16
C54	n30#9	VSS!	3.51983e-16
C55	n30#2	VSS!	7.81656e-15
C56	qbint#5	VSS!	9.6256e-16
C57	qbint#11	VSS!	9.62419e-16
C58	qbint#13	VSS!	8.40916e-16
C59	qbint#9	VSS!	3.76151e-16
C60	qbint#10	VSS!	3.76011e-16
C61	qbint#12	VSS!	2.33255e-16
C62	qbint#4	VSS!	2.92544e-15
C63	qbint#6	VSS!	6.09929e-16
C64	qbint#7	VSS!	1.64582e-15
C65	net055#5	VSS!	9.21882e-16
C66	net055#7	VSS!	3.57581e-16
C67	net055#4	VSS!	1.27654e-15
C68	net055#6	VSS!	2.82077e-16
C69	10	VSS!	6.40779e-14
C70	net13	VSS!	3.8404e-16
C71	net13#2	VSS!	4.20625e-16
C72	net017	VSS!	5.8867e-16
C73	net017#2	VSS!	5.75009e-16
C74	net028	VSS!	4.02281e-16
C75	net028#2	VSS!	4.15914e-16
C76	net14	VSS!	4.75361e-16
C77	net14#2	VSS!	8.26e-16
C78	net018	VSS!	4.63421e-16
C79	net018#2	VSS!	4.56596e-16
C80	net029	VSS!	5.45499e-16
C81	net029#2	VSS!	5.60569e-16
C82	21	VSS!	1.94456e-15
C83	X41_5	VSS!	1.14629e-15
C84	X40_5	VSS!	8.79514e-16
C85	X39_5	VSS!	8.42637e-16
C86	X38_5	VSS!	8.95192e-16
C87	X37_5	VSS!	9.44088e-16
C88	X36_5	VSS!	1.49854e-15
C89	X35_5	VSS!	1.38207e-15
C90	X34_5	VSS!	9.57737e-16
C91	X33_5	VSS!	9.54539e-16
C92	X32_5	VSS!	8.73236e-16
C93	X31_5	VSS!	9.35113e-16
C94	X30_5	VSS!	1.07878e-15
C95	X29_5	VSS!	1.23814e-15
C96	VDD!#2	10	4.08588e-14
C97	10	CKb	1.70562e-15
C98	CKb#11	10	4.41876e-15
C99	CKb#12	10	4.52289e-15
C100	CKb#14	10	8.12722e-16
C101	CKb#5	10	5.88243e-15
C102	CKb#13	10	1.42424e-15
C103	CKb#9	10	4.67034e-15
C104	CKb#4	10	1.839e-15
C105	CKb#3	10	9.76506e-16
C106	CKb#6	10	9.21044e-15
C107	CKb#7	10	7.9493e-15
C108	CKb#8	10	6.34425e-15
C109	CKb#10	10	2.85121e-15
C110	10	CKbb	3.6996e-15
C111	CKbb#5	10	4.20519e-15
C112	CKbb#11	10	7.73645e-16
C113	CKbb#9	10	4.58869e-15
C114	CKbb#10	10	4.96923e-15
C115	CKbb#2	10	1.47464e-15
C116	CKbb#4	10	1.55741e-15
C117	CKbb#6	10	7.68438e-15
C118	CKbb#7	10	8.21978e-15
C119	CKbb#8	10	6.87641e-15
C120	n20#6	10	1.00511e-15
C121	n20#8	10	1.98471e-15
C122	n20#2	10	1.04793e-14
C123	n20#7	10	3.44683e-15
C124	10	mout	9.19597e-16
C125	mout#4	10	1.93316e-15
C126	mout#3	10	1.08875e-14
C127	n30#7	10	8.93338e-16
C128	n30#9	10	1.86673e-15
C129	n30#2	10	1.28619e-14
C130	10	qbint	6.82658e-15
C131	qbint#5	10	9.91231e-16
C132	qbint#11	10	9.91562e-16
C133	qbint#13	10	9.30249e-16
C134	qbint#9	10	2.01378e-15
C135	qbint#10	10	2.01378e-15
C136	qbint#12	10	1.92327e-15
C137	qbint#4	10	2.38132e-15
C138	qbint#3	10	8.70725e-16
C139	qbint#6	10	3.80757e-15
C140	qbint#7	10	6.03761e-15
C141	10	net055	1.63853e-15
C142	net055#5	10	9.7896e-16
C143	net055#7	10	1.97197e-15
C144	net055#4	10	2.15147e-15
C145	net055#3	10	8.00821e-16
C146	net055#6	10	3.10866e-15
*
*
.ENDS DFFX1
*
