// Verilog for library KISTA_SOI_STDLIB2_CCS_TT_del created by Liberate 17.1.2.229 on Sun Oct 30 20:16:29 CET 2022 for SDF version 2.1

// type: ADDFX1 
`timescale 1ns/10ps
`celldefine
module ADDFX1 ();
	// Timing
	specify

	endspecify
endmodule
`endcelldefine

// type: ADDHX1 
`timescale 1ns/10ps
`celldefine
module ADDHX1 ();
	// Timing
	specify

	endspecify
endmodule
`endcelldefine

// type: AND2X1 
`timescale 1ns/10ps
`celldefine
module AND2X1 ();
	// Timing
	specify

	endspecify
endmodule
`endcelldefine

// type: AND3X1 
`timescale 1ns/10ps
`celldefine
module AND3X1 ();
	// Timing
	specify

	endspecify
endmodule
`endcelldefine

// type: AND4X1 
`timescale 1ns/10ps
`celldefine
module AND4X1 ();
	// Timing
	specify

	endspecify
endmodule
`endcelldefine

// type: AO21X1 
`timescale 1ns/10ps
`celldefine
module AO21X1 ();
	// Timing
	specify

	endspecify
endmodule
`endcelldefine

// type: AOI21X1 
`timescale 1ns/10ps
`celldefine
module AOI21X1 (Y, A, B, C);
	output Y;
	input A, B, C;

	// Function
	wire A__bar, B__bar, C__bar;
	wire int_fwire_0, int_fwire_1;

	not (C__bar, C);
	not (B__bar, B);
	and (int_fwire_0, B__bar, C__bar);
	not (A__bar, A);
	and (int_fwire_1, A__bar, C__bar);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		specparam tpd_A_Y_r = 0.582219:2.539856:5.80535;
		specparam tpd_A_Y_f = 0.311712:1.445782:3.4365;
		specparam tpd_B_Y_r = 0.521922:2.481848:5.75827;
		specparam tpd_B_Y_f = 0.346797:1.527089:3.64936;
		specparam tpd_C_Y_cond0_r = 0.622091:2.488029:5.66306;
		specparam tpd_C_Y_cond0_f = 0.30482:1.117408:2.57927;
		specparam tpd_C_Y_cond1_r = 0.701174:2.572523:5.75035;
		specparam tpd_C_Y_cond1_f = 0.324201:1.144178:2.59889;
		specparam tpd_C_Y_cond2_r = 0.557664:2.077084:4.61884;
		specparam tpd_C_Y_cond2_f = 0.348179:1.179824:2.62966;
		specparam tpd_C_Y_r = 0.701174:2.572523:5.75035;
		specparam tpd_C_Y_f = 0.348179:1.179824:2.62966;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
		(B => Y) = ( tpd_B_Y_r , tpd_B_Y_f );
		if ((A & ~B))
			(C => Y) = ( tpd_C_Y_cond0_r , tpd_C_Y_cond0_f );
		if ((~A & B))
			(C => Y) = ( tpd_C_Y_cond1_r , tpd_C_Y_cond1_f );
		if ((~A & ~B))
			(C => Y) = ( tpd_C_Y_cond2_r , tpd_C_Y_cond2_f );
		ifnone (C => Y) = ( tpd_C_Y_r , tpd_C_Y_f );
	endspecify
endmodule
`endcelldefine

// type: BUFX16 
`timescale 1ns/10ps
`celldefine
module BUFX16 (Y, A);
	output Y;
	input A;

	// Function
	buf (Y, A);

	// Timing
	specify
		specparam tpd_A_Y_r = 0.757808:0.945623:1.17076;
		specparam tpd_A_Y_f = 0.80867:1.234148:1.72264;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
	endspecify
endmodule
`endcelldefine

// type: BUFX2 
`timescale 1ns/10ps
`celldefine
module BUFX2 (Y, A);
	output Y;
	input A;

	// Function
	buf (Y, A);

	// Timing
	specify
		specparam tpd_A_Y_r = 0.56107:1.133940:1.97468;
		specparam tpd_A_Y_f = 0.63987:1.380262:2.34986;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
	endspecify
endmodule
`endcelldefine

// type: BUFX27 
`timescale 1ns/10ps
`celldefine
module BUFX27 (Y, A);
	output Y;
	input A;

	// Function
	buf (Y, A);

	// Timing
	specify
		specparam tpd_A_Y_r = 0.918126:1.077611:1.26522;
		specparam tpd_A_Y_f = 0.97052:1.379712:1.84521;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
	endspecify
endmodule
`endcelldefine

// type: BUFX3 
`timescale 1ns/10ps
`celldefine
module BUFX3 (Y, A);
	output Y;
	input A;

	// Function
	buf (Y, A);

	// Timing
	specify
		specparam tpd_A_Y_r = 0.610442:1.104181:1.76354;
		specparam tpd_A_Y_f = 0.675652:1.353688:2.1898;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
	endspecify
endmodule
`endcelldefine

// type: BUFX32 
`timescale 1ns/10ps
`celldefine
module BUFX32 (Y, A);
	output Y;
	input A;

	// Function
	buf (Y, A);

	// Timing
	specify
		specparam tpd_A_Y_r = 1.68834:1.862291:2.06049;
		specparam tpd_A_Y_f = 1.56688:1.944160:2.38393;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
	endspecify
endmodule
`endcelldefine

// type: BUFX4 
`timescale 1ns/10ps
`celldefine
module BUFX4 (Y, A);
	output Y;
	input A;

	// Function
	buf (Y, A);

	// Timing
	specify
		specparam tpd_A_Y_r = 0.50759:0.874061:1.35857;
		specparam tpd_A_Y_f = 0.608276:1.190499:1.89294;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
	endspecify
endmodule
`endcelldefine

// type: BUFX8 
`timescale 1ns/10ps
`celldefine
module BUFX8 (Y, A);
	output Y;
	input A;

	// Function
	buf (Y, A);

	// Timing
	specify
		specparam tpd_A_Y_r = 0.545233:0.807627:1.12461;
		specparam tpd_A_Y_f = 0.627326:1.120607:1.6881;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
	endspecify
endmodule
`endcelldefine

// type: BUFX9 
`timescale 1ns/10ps
`celldefine
module BUFX9 (Y, A);
	output Y;
	input A;

	// Function
	buf (Y, A);

	// Timing
	specify
		specparam tpd_A_Y_r = 0.549803:0.843312:1.18255;
		specparam tpd_A_Y_f = 0.68975:1.202658:1.79091;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
	endspecify
endmodule
`endcelldefine

// type: DFFRX1 
`timescale 1ns/10ps
`celldefine
module DFFRX1 (Q, QN, CK, D, RN);
	output Q, QN;
	input CK, D, RN;
	reg notifier;
	wire delayed_CK, delayed_D;

	// Function
	wire int_fwire_IQ, int_fwire_IQN, int_fwire_r;
	wire xcr_0;

	not (int_fwire_r, RN);
	altos_dff_r_err (xcr_0, delayed_CK, delayed_D, int_fwire_r);
	altos_dff_r (int_fwire_IQ, notifier, delayed_CK, delayed_D, int_fwire_r, xcr_0);
	buf (Q, int_fwire_IQ);
	not (int_fwire_IQN, int_fwire_IQ);
	buf (QN, int_fwire_IQN);

	// Timing

	// Additional timing wires
	wire adacond0, adacond1, adacond2;
	wire adacond3, adacond4, adacond5;
	wire CK__bar, D__bar;


	// Additional timing gates
	and (adacond4, D, RN);
	not (D__bar, D);
	and (adacond5, D__bar, RN);
	and (adacond0, CK, D);
	and (adacond1, CK, D__bar);
	not (CK__bar, CK);
	and (adacond2, CK__bar, D);
	and (adacond3, CK__bar, D__bar);

	specify
		specparam tpd_CK_Q_posedge_r = 2.39584:3.521344:5.28701;
		specparam tpd_CK_Q_posedge_f = 2.58763:5.057320:9.29721;
		specparam tpd_RN_Q_cond0_negedge_r = 1.65695:3.990314:7.82807;
		specparam tpd_RN_Q_cond0_negedge_f = 1.65695:3.990314:7.82807;
		specparam tpd_RN_Q_cond1_negedge_r = 1.67478:3.991888:7.80737;
		specparam tpd_RN_Q_cond1_negedge_f = 1.67478:3.991888:7.80737;
		specparam tpd_RN_Q_cond2_negedge_r = 1.40712:4.059546:8.55735;
		specparam tpd_RN_Q_cond2_negedge_f = 1.40712:4.059546:8.55735;
		specparam tpd_RN_Q_cond3_negedge_r = 1.40313:4.058824:8.55714;
		specparam tpd_RN_Q_cond3_negedge_f = 1.40313:4.058824:8.55714;
		specparam tpd_RN_Q_negedge_r = 1.40712:4.059546:8.55735;
		specparam tpd_RN_Q_negedge_f = 1.40712:4.059546:8.55735;
		specparam tpd_CK_QN_posedge_r = 1.7158:2.753580:4.4062;
		specparam tpd_CK_QN_posedge_f = 3.34519:6.327574:11.415;
		specparam tpd_RN_QN_cond0_negedge_r = 0.531972:1.723464:3.45025;
		specparam tpd_RN_QN_cond0_negedge_f = 0.531972:1.723464:3.45025;
		specparam tpd_RN_QN_cond1_negedge_r = 0.538036:1.730205:3.44049;
		specparam tpd_RN_QN_cond1_negedge_f = 0.538036:1.730205:3.44049;
		specparam tpd_RN_QN_cond2_negedge_r = 0.538958:1.777483:3.68998;
		specparam tpd_RN_QN_cond2_negedge_f = 0.538958:1.777483:3.68998;
		specparam tpd_RN_QN_cond3_negedge_r = 0.544953:1.788439:3.70384;
		specparam tpd_RN_QN_cond3_negedge_f = 0.544953:1.788439:3.70384;
		specparam tpd_RN_QN_negedge_r = 0.544953:1.788439:3.70384;
		specparam tpd_RN_QN_negedge_f = 0.544953:1.788439:3.70384;
		specparam tpw_CK_adacond4_posedge = 2.18297:2.481153:3.00049;
		specparam tpw_CK_adacond4_negedge = 2.18297:2.481153:3.00049;
		specparam tpw_CK_adacond5_posedge = 1.59401:2.092773:3.00049;
		specparam tpw_CK_adacond5_negedge = 1.59401:2.092773:3.00049;
		specparam tsetup_D_CK_RN_posedge_RN_posedge = 1.65641:1.782782:1.94567;
		specparam thold_D_CK_RN_posedge_RN_posedge = -0.248542:-0.147319:-0.0416375;
		specparam tsetup_D_CK_RN_negedge_RN_posedge = 1.65641:1.782782:1.94567;
		specparam thold_D_CK_RN_negedge_RN_posedge = -0.248542:-0.147319:-0.0416375;
		specparam tsetup_D_CK_posedge_posedge = 1.65641:1.782782:1.94567;
		specparam thold_D_CK_posedge_posedge = -0.248542:-0.147319:-0.0416375;
		specparam tsetup_D_CK_negedge_posedge = 1.65641:1.782782:1.94567;
		specparam thold_D_CK_negedge_posedge = -0.248542:-0.147319:-0.0416375;
		specparam trecovery_RN_CK_D_posedge_D_posedge = 1.68478:1.742456:1.8221;
		specparam trecovery_RN_CK_posedge_posedge = 1.68478:1.742456:1.8221;
		specparam tremoval_RN_CK_D_posedge_D_posedge = -0.348704:-0.248080:-0.155443;
		specparam tremoval_RN_CK_posedge_posedge = -0.348704:-0.248080:-0.155443;
		specparam tpw_RN_adacond0_negedge = 1.21245:2.024530:3.00049;
		specparam tpw_RN_adacond1_negedge = 1.22588:2.035847:3.00049;
		specparam tpw_RN_adacond2_negedge = 0.998126:1.864209:3.00049;
		specparam tpw_RN_adacond3_negedge = 1.00562:1.870613:3.00049;

		(posedge CK => (Q+:D)) = ( tpd_CK_Q_posedge_r , tpd_CK_Q_posedge_f );
		if ((CK & D))
			(negedge RN => (Q+:1'b0)) = ( tpd_RN_Q_cond0_negedge_r , tpd_RN_Q_cond0_negedge_f );
		if ((CK & ~D))
			(negedge RN => (Q+:1'b0)) = ( tpd_RN_Q_cond1_negedge_r , tpd_RN_Q_cond1_negedge_f );
		if ((~CK & D))
			(negedge RN => (Q+:1'b0)) = ( tpd_RN_Q_cond2_negedge_r , tpd_RN_Q_cond2_negedge_f );
		if ((~CK & ~D))
			(negedge RN => (Q+:1'b0)) = ( tpd_RN_Q_cond3_negedge_r , tpd_RN_Q_cond3_negedge_f );
		ifnone (negedge RN => (Q+:1'b0)) = ( tpd_RN_Q_negedge_r , tpd_RN_Q_negedge_f );
		(posedge CK => (QN-:D)) = ( tpd_CK_QN_posedge_r , tpd_CK_QN_posedge_f );
		if ((CK & D))
			(negedge RN => (QN-:1'b0)) = ( tpd_RN_QN_cond0_negedge_r , tpd_RN_QN_cond0_negedge_f );
		if ((CK & ~D))
			(negedge RN => (QN-:1'b0)) = ( tpd_RN_QN_cond1_negedge_r , tpd_RN_QN_cond1_negedge_f );
		if ((~CK & D))
			(negedge RN => (QN-:1'b0)) = ( tpd_RN_QN_cond2_negedge_r , tpd_RN_QN_cond2_negedge_f );
		if ((~CK & ~D))
			(negedge RN => (QN-:1'b0)) = ( tpd_RN_QN_cond3_negedge_r , tpd_RN_QN_cond3_negedge_f );
		ifnone (negedge RN => (QN-:1'b0)) = ( tpd_RN_QN_negedge_r , tpd_RN_QN_negedge_f );
		$setuphold (posedge CK &&& RN, posedge D &&& RN, 
			 tsetup_D_CK_RN_posedge_RN_posedge, 
			 thold_D_CK_RN_posedge_RN_posedge, notifier,,, delayed_CK, delayed_D);
		$setuphold (posedge CK &&& RN, negedge D &&& RN, 
			 tsetup_D_CK_RN_negedge_RN_posedge, 
			 thold_D_CK_RN_negedge_RN_posedge, notifier,,, delayed_CK, delayed_D);
		$setuphold (posedge CK, posedge D, 
			 tsetup_D_CK_posedge_posedge, 
			 thold_D_CK_posedge_posedge, notifier,,, delayed_CK, delayed_D);
		$setuphold (posedge CK, negedge D, 
			 tsetup_D_CK_negedge_posedge, 
			 thold_D_CK_negedge_posedge, notifier,,, delayed_CK, delayed_D);
		$recovery (posedge RN &&& D, posedge CK &&& D, 
			 trecovery_RN_CK_D_posedge_D_posedge, notifier);
		$recovery (posedge RN, posedge CK, 
			 trecovery_RN_CK_posedge_posedge, notifier);
		$hold (posedge CK &&& D, posedge RN &&& D, 
			 tremoval_RN_CK_D_posedge_D_posedge, notifier);
		$hold (posedge CK, posedge RN, 
			 tremoval_RN_CK_posedge_posedge, notifier);
		$width (posedge CK &&& adacond4, tpw_CK_adacond4_posedge, 0, notifier);
		$width (negedge CK &&& adacond4, tpw_CK_adacond4_negedge, 0, notifier);
		$width (posedge CK &&& adacond5, tpw_CK_adacond5_posedge, 0, notifier);
		$width (negedge CK &&& adacond5, tpw_CK_adacond5_negedge, 0, notifier);
		$width (negedge RN &&& adacond0, tpw_RN_adacond0_negedge, 0, notifier);
		$width (negedge RN &&& adacond1, tpw_RN_adacond1_negedge, 0, notifier);
		$width (negedge RN &&& adacond2, tpw_RN_adacond2_negedge, 0, notifier);
		$width (negedge RN &&& adacond3, tpw_RN_adacond3_negedge, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type: DFFSRX1 
`timescale 1ns/10ps
`celldefine
module DFFSRX1 (Q, QN, CK, D, RN, SN);
	output Q, QN;
	input CK, D, RN, SN;
	reg notifier;
	wire delayed_CK, delayed_D, delayed_RN, delayed_SN;

	// Function
	wire int_fwire_IQ, int_fwire_IQN, int_fwire_r;
	wire int_fwire_s, xcr_0;

	not (int_fwire_s, delayed_SN);
	not (int_fwire_r, delayed_RN);
	altos_dff_sr_err (xcr_0, delayed_CK, delayed_D, int_fwire_s, int_fwire_r);
	altos_dff_sr_1 (int_fwire_IQ, notifier, delayed_CK, delayed_D, int_fwire_s, int_fwire_r, xcr_0);
	buf (Q, int_fwire_IQ);
	not (int_fwire_IQN, int_fwire_IQ);
	buf (QN, int_fwire_IQN);

	// Timing

	// Additional timing wires
	wire adacond0, adacond1, adacond2;
	wire adacond3, adacond4, adacond5;
	wire adacond6, adacond7, adacond8;
	wire adacond9, adacond10, adacond11;
	wire adacond12, adacond13, adacond14;
	wire adacond15, adacond16, CK__bar;
	wire D__bar;


	// Additional timing gates
	and (adacond15, D, RN, SN);
	not (D__bar, D);
	and (adacond16, D__bar, RN, SN);
	and (adacond0, RN, SN);
	and (adacond1, D, SN);
	and (adacond2, CK, D, SN);
	and (adacond3, CK, D__bar, SN);
	not (CK__bar, CK);
	and (adacond4, CK__bar, D, SN);
	and (adacond5, CK__bar, D__bar, SN);
	and (adacond6, D__bar, RN);
	and (adacond7, CK, D);
	and (adacond8, CK, D__bar);
	and (adacond9, CK__bar, D);
	and (adacond10, CK__bar, D__bar);
	and (adacond11, CK, D, RN);
	and (adacond12, CK, D__bar, RN);
	and (adacond13, CK__bar, D, RN);
	and (adacond14, CK__bar, D__bar, RN);

	specify
		specparam tpd_CK_Q_posedge_r = 2.74573:3.933498:5.80817;
		specparam tpd_CK_Q_posedge_f = 2.87403:5.865200:11.034;
		specparam tpd_RN_Q_cond0_negedge_r = 3.87663:6.762091:11.5657;
		specparam tpd_RN_Q_cond0_negedge_f = 3.87663:6.762091:11.5657;
		specparam tpd_RN_Q_cond1_negedge_r = 3.90265:6.747550:11.4984;
		specparam tpd_RN_Q_cond1_negedge_f = 3.90265:6.747550:11.4984;
		specparam tpd_RN_Q_cond2_negedge_r = 3.51684:6.779478:12.2107;
		specparam tpd_RN_Q_cond2_negedge_f = 3.51684:6.779478:12.2107;
		specparam tpd_RN_Q_cond3_negedge_r = 3.52331:6.773098:12.182;
		specparam tpd_RN_Q_cond3_negedge_f = 3.52331:6.773098:12.182;
		specparam tpd_RN_Q_negedge_r = 3.51684:6.779478:12.2107;
		specparam tpd_RN_Q_negedge_f = 3.51684:6.779478:12.2107;
		specparam tpd_SN_Q_cond4_posedge_r = 3.5556:6.298626:10.98;
		specparam tpd_SN_Q_cond4_posedge_f = 3.5556:6.298626:10.98;
		specparam tpd_SN_Q_cond5_posedge_r = 3.58211:6.284315:10.9118;
		specparam tpd_SN_Q_cond5_posedge_f = 3.58211:6.284315:10.9118;
		specparam tpd_SN_Q_cond6_posedge_r = 3.13611:6.291886:11.6344;
		specparam tpd_SN_Q_cond6_posedge_f = 3.13611:6.291886:11.6344;
		specparam tpd_SN_Q_cond7_posedge_r = 3.12622:6.268286:11.5888;
		specparam tpd_SN_Q_cond7_posedge_f = 3.12622:6.268286:11.5888;
		specparam tpd_SN_Q_posedge_r = 3.13611:6.291886:11.6344;
		specparam tpd_SN_Q_posedge_f = 3.13611:6.291886:11.6344;
		specparam tpd_SN_Q_cond8_negedge_r = 0.635338:1.874180:3.70989;
		specparam tpd_SN_Q_cond8_negedge_f = 0.635338:1.874180:3.70989;
		specparam tpd_SN_Q_cond4_negedge_r = 0.626936:1.872493:3.77955;
		specparam tpd_SN_Q_cond4_negedge_f = 0.626936:1.872493:3.77955;
		specparam tpd_SN_Q_cond9_negedge_r = 0.635644:1.874377:3.7104;
		specparam tpd_SN_Q_cond9_negedge_f = 0.635644:1.874377:3.7104;
		specparam tpd_SN_Q_cond5_negedge_r = 0.627167:1.872689:3.77994;
		specparam tpd_SN_Q_cond5_negedge_f = 0.627167:1.872689:3.77994;
		specparam tpd_SN_Q_cond10_negedge_r = 0.634096:1.908551:3.88786;
		specparam tpd_SN_Q_cond10_negedge_f = 0.634096:1.908551:3.88786;
		specparam tpd_SN_Q_cond6_negedge_r = 0.623928:1.896428:3.88345;
		specparam tpd_SN_Q_cond6_negedge_f = 0.623928:1.896428:3.88345;
		specparam tpd_SN_Q_cond11_negedge_r = 0.632269:1.907640:3.88895;
		specparam tpd_SN_Q_cond11_negedge_f = 0.632269:1.907640:3.88895;
		specparam tpd_SN_Q_cond7_negedge_r = 0.624459:1.893616:3.87407;
		specparam tpd_SN_Q_cond7_negedge_f = 0.624459:1.893616:3.87407;
		specparam tpd_SN_Q_negedge_r = 0.632269:1.907640:3.88895;
		specparam tpd_SN_Q_negedge_f = 0.632269:1.907640:3.88895;
		specparam tpd_CK_QN_posedge_r = 1.95198:3.043700:4.79619;
		specparam tpd_CK_QN_posedge_f = 3.61923:6.453496:11.2826;
		specparam tpd_RN_QN_cond0_negedge_r = 2.57909:3.915726:5.77924;
		specparam tpd_RN_QN_cond0_negedge_f = 2.57909:3.915726:5.77924;
		specparam tpd_RN_QN_cond1_negedge_r = 2.59643:3.910942:5.7189;
		specparam tpd_RN_QN_cond1_negedge_f = 2.59643:3.910942:5.7189;
		specparam tpd_RN_QN_cond2_negedge_r = 2.59694:3.961662:5.98707;
		specparam tpd_RN_QN_cond2_negedge_f = 2.59694:3.961662:5.98707;
		specparam tpd_RN_QN_cond3_negedge_r = 2.61468:3.969982:5.96955;
		specparam tpd_RN_QN_cond3_negedge_f = 2.61468:3.969982:5.96955;
		specparam tpd_RN_QN_negedge_r = 2.59694:3.961662:5.98707;
		specparam tpd_RN_QN_negedge_f = 2.59694:3.961662:5.98707;
		specparam tpd_SN_QN_cond8_negedge_r = 4.54059:6.434048:9.66384;
		specparam tpd_SN_QN_cond8_negedge_f = 4.54059:6.434048:9.66384;
		specparam tpd_SN_QN_cond4_negedge_r = 4.82035:6.767366:10.0697;
		specparam tpd_SN_QN_cond4_negedge_f = 4.82035:6.767366:10.0697;
		specparam tpd_SN_QN_cond9_negedge_r = 4.53582:6.434152:9.67258;
		specparam tpd_SN_QN_cond9_negedge_f = 4.53582:6.434152:9.67258;
		specparam tpd_SN_QN_cond5_negedge_r = 4.81558:6.766268:10.0738;
		specparam tpd_SN_QN_cond5_negedge_f = 4.81558:6.766268:10.0738;
		specparam tpd_SN_QN_cond10_negedge_r = 1.51496:4.417301:9.3455;
		specparam tpd_SN_QN_cond10_negedge_f = 1.51496:4.417301:9.3455;
		specparam tpd_SN_QN_cond6_negedge_r = 1.79562:4.569774:9.40039;
		specparam tpd_SN_QN_cond6_negedge_f = 1.79562:4.569774:9.40039;
		specparam tpd_SN_QN_cond11_negedge_r = 1.51199:4.417476:9.35404;
		specparam tpd_SN_QN_cond11_negedge_f = 1.51199:4.417476:9.35404;
		specparam tpd_SN_QN_cond7_negedge_r = 1.80784:4.579942:9.40927;
		specparam tpd_SN_QN_cond7_negedge_f = 1.80784:4.579942:9.40927;
		specparam tpd_SN_QN_negedge_r = 4.81558:6.766268:10.0738;
		specparam tpd_SN_QN_negedge_f = 4.81558:6.766268:10.0738;
		specparam tpd_SN_QN_cond4_posedge_r = 2.1916:3.423074:5.19997;
		specparam tpd_SN_QN_cond4_posedge_f = 2.1916:3.423074:5.19997;
		specparam tpd_SN_QN_cond5_posedge_r = 2.2089:3.417216:5.13692;
		specparam tpd_SN_QN_cond5_posedge_f = 2.2089:3.417216:5.13692;
		specparam tpd_SN_QN_cond6_posedge_r = 2.21652:3.471262:5.40368;
		specparam tpd_SN_QN_cond6_posedge_f = 2.21652:3.471262:5.40368;
		specparam tpd_SN_QN_cond7_posedge_r = 2.21722:3.462073:5.36856;
		specparam tpd_SN_QN_cond7_posedge_f = 2.21722:3.462073:5.36856;
		specparam tpd_SN_QN_posedge_r = 2.21652:3.471262:5.40368;
		specparam tpd_SN_QN_posedge_f = 2.21652:3.471262:5.40368;
		specparam tpw_CK_adacond15_posedge = 2.50236:2.697673:3.00049;
		specparam tpw_CK_adacond15_negedge = 2.50236:2.697673:3.00049;
		specparam tpw_CK_adacond16_posedge = 1.79912:2.229793:3.00049;
		specparam tpw_CK_adacond16_negedge = 1.79912:2.229793:3.00049;
		specparam tsetup_D_CK_adacond0_posedge_adacond0_posedge = 2.16415:2.306262:2.48253;
		specparam thold_D_CK_adacond0_posedge_adacond0_posedge = -0.175248:-0.103174:-0.0341778;
		specparam tsetup_D_CK_adacond0_negedge_adacond0_posedge = 2.16415:2.306262:2.48253;
		specparam thold_D_CK_adacond0_negedge_adacond0_posedge = -0.175248:-0.103174:-0.0341778;
		specparam tsetup_D_CK_posedge_posedge = 2.16415:2.306262:2.48253;
		specparam thold_D_CK_posedge_posedge = -0.175248:-0.103174:-0.0341778;
		specparam tsetup_D_CK_negedge_posedge = 2.16415:2.306262:2.48253;
		specparam thold_D_CK_negedge_posedge = -0.175248:-0.103174:-0.0341778;
		specparam trecovery_RN_CK_adacond1_posedge_adacond1_posedge = 3.45174:3.580840:3.69586;
		specparam trecovery_RN_CK_posedge_posedge = 3.45174:3.580840:3.69586;
		specparam tremoval_RN_CK_adacond1_posedge_adacond1_posedge = -1.64566:-1.548813:-1.44239;
		specparam tremoval_RN_CK_posedge_posedge = -1.64566:-1.548813:-1.44239;
		specparam tpw_RN_adacond2_negedge = 2.75244:3.012063:3.32072;
		specparam tpw_RN_adacond3_negedge = 2.71949:2.979277:3.28948;
		specparam tpw_RN_adacond4_negedge = 2.27685:2.589327:3.00049;
		specparam tpw_RN_adacond5_negedge = 2.27947:2.591177:3.00049;
		specparam trecovery_SN_CK_adacond6_posedge_adacond6_posedge = -0.506153:-0.363206:-0.211637;
		specparam trecovery_SN_CK_posedge_posedge = -0.506153:-0.363206:-0.211637;
		specparam tremoval_SN_CK_adacond6_posedge_adacond6_posedge = 0.241122:0.399729:0.557279;
		specparam tremoval_SN_CK_posedge_posedge = 0.241122:0.399729:0.557279;
		specparam tsetup_SN_RN_adacond7_posedge_adacond7_posedge = 2.28099:2.521948:2.81942;
		specparam thold_SN_RN_adacond7_posedge_adacond7_posedge = -2.39329:-2.106658:-1.86184;
		specparam tsetup_SN_RN_adacond8_posedge_adacond8_posedge = 2.24583:2.487012:2.78377;
		specparam thold_SN_RN_adacond8_posedge_adacond8_posedge = -2.41616:-2.127497:-1.88554;
		specparam tsetup_SN_RN_adacond9_posedge_adacond9_posedge = 1.81448:2.058582:2.34958;
		specparam thold_SN_RN_adacond9_posedge_adacond9_posedge = -2.10885:-1.832538:-1.59003;
		specparam tsetup_SN_RN_adacond10_posedge_adacond10_posedge = 1.80076:2.044202:2.33385;
		specparam thold_SN_RN_adacond10_posedge_adacond10_posedge = -2.0983:-1.824567:-1.58146;
		specparam tsetup_SN_RN_posedge_posedge = 2.28099:2.521948:2.81942;
		specparam thold_SN_RN_posedge_posedge = -2.0983:-1.824567:-1.58146;
		specparam tpw_SN_adacond11_negedge = 1.4154:2.067763:3.00049;
		specparam tpw_SN_adacond12_negedge = 1.4154:2.067763:3.00049;
		specparam tpw_SN_adacond13_negedge = 1.02302:1.873483:3.00049;
		specparam tpw_SN_adacond14_negedge = 1.02227:1.874210:3.00049;

		(posedge CK => (Q+:D)) = ( tpd_CK_Q_posedge_r , tpd_CK_Q_posedge_f );
		if ((CK & D & SN))
			(negedge RN => (Q+:1'b0)) = ( tpd_RN_Q_cond0_negedge_r , tpd_RN_Q_cond0_negedge_f );
		if ((CK & ~D & SN))
			(negedge RN => (Q+:1'b0)) = ( tpd_RN_Q_cond1_negedge_r , tpd_RN_Q_cond1_negedge_f );
		if ((~CK & D & SN))
			(negedge RN => (Q+:1'b0)) = ( tpd_RN_Q_cond2_negedge_r , tpd_RN_Q_cond2_negedge_f );
		if ((~CK & ~D & SN))
			(negedge RN => (Q+:1'b0)) = ( tpd_RN_Q_cond3_negedge_r , tpd_RN_Q_cond3_negedge_f );
		ifnone (negedge RN => (Q+:1'b0)) = ( tpd_RN_Q_negedge_r , tpd_RN_Q_negedge_f );
		if ((CK & D & ~RN))
			(posedge SN => (Q+:1'b0)) = ( tpd_SN_Q_cond4_posedge_r , tpd_SN_Q_cond4_posedge_f );
		if ((CK & ~D & ~RN))
			(posedge SN => (Q+:1'b0)) = ( tpd_SN_Q_cond5_posedge_r , tpd_SN_Q_cond5_posedge_f );
		if ((~CK & D & ~RN))
			(posedge SN => (Q+:1'b0)) = ( tpd_SN_Q_cond6_posedge_r , tpd_SN_Q_cond6_posedge_f );
		if ((~CK & ~D & ~RN))
			(posedge SN => (Q+:1'b0)) = ( tpd_SN_Q_cond7_posedge_r , tpd_SN_Q_cond7_posedge_f );
		ifnone (posedge SN => (Q+:1'b0)) = ( tpd_SN_Q_posedge_r , tpd_SN_Q_posedge_f );
		if ((CK & D & RN))
			(negedge SN => (Q+:1'b1)) = ( tpd_SN_Q_cond8_negedge_r , tpd_SN_Q_cond8_negedge_f );
		if ((CK & D & ~RN))
			(negedge SN => (Q+:1'b1)) = ( tpd_SN_Q_cond4_negedge_r , tpd_SN_Q_cond4_negedge_f );
		if ((CK & ~D & RN))
			(negedge SN => (Q+:1'b1)) = ( tpd_SN_Q_cond9_negedge_r , tpd_SN_Q_cond9_negedge_f );
		if ((CK & ~D & ~RN))
			(negedge SN => (Q+:1'b1)) = ( tpd_SN_Q_cond5_negedge_r , tpd_SN_Q_cond5_negedge_f );
		if ((~CK & D & RN))
			(negedge SN => (Q+:1'b1)) = ( tpd_SN_Q_cond10_negedge_r , tpd_SN_Q_cond10_negedge_f );
		if ((~CK & D & ~RN))
			(negedge SN => (Q+:1'b1)) = ( tpd_SN_Q_cond6_negedge_r , tpd_SN_Q_cond6_negedge_f );
		if ((~CK & ~D & RN))
			(negedge SN => (Q+:1'b1)) = ( tpd_SN_Q_cond11_negedge_r , tpd_SN_Q_cond11_negedge_f );
		if ((~CK & ~D & ~RN))
			(negedge SN => (Q+:1'b1)) = ( tpd_SN_Q_cond7_negedge_r , tpd_SN_Q_cond7_negedge_f );
		ifnone (negedge SN => (Q+:1'b1)) = ( tpd_SN_Q_negedge_r , tpd_SN_Q_negedge_f );
		(posedge CK => (QN-:D)) = ( tpd_CK_QN_posedge_r , tpd_CK_QN_posedge_f );
		if ((CK & D & SN))
			(negedge RN => (QN-:1'b0)) = ( tpd_RN_QN_cond0_negedge_r , tpd_RN_QN_cond0_negedge_f );
		if ((CK & ~D & SN))
			(negedge RN => (QN-:1'b0)) = ( tpd_RN_QN_cond1_negedge_r , tpd_RN_QN_cond1_negedge_f );
		if ((~CK & D & SN))
			(negedge RN => (QN-:1'b0)) = ( tpd_RN_QN_cond2_negedge_r , tpd_RN_QN_cond2_negedge_f );
		if ((~CK & ~D & SN))
			(negedge RN => (QN-:1'b0)) = ( tpd_RN_QN_cond3_negedge_r , tpd_RN_QN_cond3_negedge_f );
		ifnone (negedge RN => (QN-:1'b0)) = ( tpd_RN_QN_negedge_r , tpd_RN_QN_negedge_f );
		if ((CK & D & RN))
			(negedge SN => (QN-:1'b1)) = ( tpd_SN_QN_cond8_negedge_r , tpd_SN_QN_cond8_negedge_f );
		if ((CK & D & ~RN))
			(negedge SN => (QN-:1'b1)) = ( tpd_SN_QN_cond4_negedge_r , tpd_SN_QN_cond4_negedge_f );
		if ((CK & ~D & RN))
			(negedge SN => (QN-:1'b1)) = ( tpd_SN_QN_cond9_negedge_r , tpd_SN_QN_cond9_negedge_f );
		if ((CK & ~D & ~RN))
			(negedge SN => (QN-:1'b1)) = ( tpd_SN_QN_cond5_negedge_r , tpd_SN_QN_cond5_negedge_f );
		if ((~CK & D & RN))
			(negedge SN => (QN-:1'b1)) = ( tpd_SN_QN_cond10_negedge_r , tpd_SN_QN_cond10_negedge_f );
		if ((~CK & D & ~RN))
			(negedge SN => (QN-:1'b1)) = ( tpd_SN_QN_cond6_negedge_r , tpd_SN_QN_cond6_negedge_f );
		if ((~CK & ~D & RN))
			(negedge SN => (QN-:1'b1)) = ( tpd_SN_QN_cond11_negedge_r , tpd_SN_QN_cond11_negedge_f );
		if ((~CK & ~D & ~RN))
			(negedge SN => (QN-:1'b1)) = ( tpd_SN_QN_cond7_negedge_r , tpd_SN_QN_cond7_negedge_f );
		ifnone (negedge SN => (QN-:1'b1)) = ( tpd_SN_QN_negedge_r , tpd_SN_QN_negedge_f );
		if ((CK & D & ~RN))
			(posedge SN => (QN-:1'b0)) = ( tpd_SN_QN_cond4_posedge_r , tpd_SN_QN_cond4_posedge_f );
		if ((CK & ~D & ~RN))
			(posedge SN => (QN-:1'b0)) = ( tpd_SN_QN_cond5_posedge_r , tpd_SN_QN_cond5_posedge_f );
		if ((~CK & D & ~RN))
			(posedge SN => (QN-:1'b0)) = ( tpd_SN_QN_cond6_posedge_r , tpd_SN_QN_cond6_posedge_f );
		if ((~CK & ~D & ~RN))
			(posedge SN => (QN-:1'b0)) = ( tpd_SN_QN_cond7_posedge_r , tpd_SN_QN_cond7_posedge_f );
		ifnone (posedge SN => (QN-:1'b0)) = ( tpd_SN_QN_posedge_r , tpd_SN_QN_posedge_f );
		$setuphold (posedge CK &&& adacond0, posedge D &&& adacond0, 
			 tsetup_D_CK_adacond0_posedge_adacond0_posedge, 
			 thold_D_CK_adacond0_posedge_adacond0_posedge, notifier,,, delayed_CK, delayed_D);
		$setuphold (posedge CK &&& adacond0, negedge D &&& adacond0, 
			 tsetup_D_CK_adacond0_negedge_adacond0_posedge, 
			 thold_D_CK_adacond0_negedge_adacond0_posedge, notifier,,, delayed_CK, delayed_D);
		$setuphold (posedge CK, posedge D, 
			 tsetup_D_CK_posedge_posedge, 
			 thold_D_CK_posedge_posedge, notifier,,, delayed_CK, delayed_D);
		$setuphold (posedge CK, negedge D, 
			 tsetup_D_CK_negedge_posedge, 
			 thold_D_CK_negedge_posedge, notifier,,, delayed_CK, delayed_D);
		$setuphold (posedge RN &&& adacond7, posedge SN &&& adacond7, 
			 tsetup_SN_RN_adacond7_posedge_adacond7_posedge, 
			 thold_SN_RN_adacond7_posedge_adacond7_posedge, notifier,,, delayed_RN, delayed_SN);
		$setuphold (posedge RN &&& adacond8, posedge SN &&& adacond8, 
			 tsetup_SN_RN_adacond8_posedge_adacond8_posedge, 
			 thold_SN_RN_adacond8_posedge_adacond8_posedge, notifier,,, delayed_RN, delayed_SN);
		$setuphold (posedge RN &&& adacond9, posedge SN &&& adacond9, 
			 tsetup_SN_RN_adacond9_posedge_adacond9_posedge, 
			 thold_SN_RN_adacond9_posedge_adacond9_posedge, notifier,,, delayed_RN, delayed_SN);
		$setuphold (posedge RN &&& adacond10, posedge SN &&& adacond10, 
			 tsetup_SN_RN_adacond10_posedge_adacond10_posedge, 
			 thold_SN_RN_adacond10_posedge_adacond10_posedge, notifier,,, delayed_RN, delayed_SN);
		$setuphold (posedge RN, posedge SN, 
			 tsetup_SN_RN_posedge_posedge, 
			 thold_SN_RN_posedge_posedge, notifier,,, delayed_RN, delayed_SN);
		$recovery (posedge RN &&& adacond1, posedge CK &&& adacond1, 
			 trecovery_RN_CK_adacond1_posedge_adacond1_posedge, notifier);
		$recovery (posedge RN, posedge CK, 
			 trecovery_RN_CK_posedge_posedge, notifier);
		$hold (posedge CK &&& adacond1, posedge RN &&& adacond1, 
			 tremoval_RN_CK_adacond1_posedge_adacond1_posedge, notifier);
		$hold (posedge CK, posedge RN, 
			 tremoval_RN_CK_posedge_posedge, notifier);
		$recovery (posedge SN &&& adacond6, posedge CK &&& adacond6, 
			 trecovery_SN_CK_adacond6_posedge_adacond6_posedge, notifier);
		$recovery (posedge SN, posedge CK, 
			 trecovery_SN_CK_posedge_posedge, notifier);
		$hold (posedge CK &&& adacond6, posedge SN &&& adacond6, 
			 tremoval_SN_CK_adacond6_posedge_adacond6_posedge, notifier);
		$hold (posedge CK, posedge SN, 
			 tremoval_SN_CK_posedge_posedge, notifier);
		$width (posedge CK &&& adacond15, tpw_CK_adacond15_posedge, 0, notifier);
		$width (negedge CK &&& adacond15, tpw_CK_adacond15_negedge, 0, notifier);
		$width (posedge CK &&& adacond16, tpw_CK_adacond16_posedge, 0, notifier);
		$width (negedge CK &&& adacond16, tpw_CK_adacond16_negedge, 0, notifier);
		$width (negedge RN &&& adacond2, tpw_RN_adacond2_negedge, 0, notifier);
		$width (negedge RN &&& adacond3, tpw_RN_adacond3_negedge, 0, notifier);
		$width (negedge RN &&& adacond4, tpw_RN_adacond4_negedge, 0, notifier);
		$width (negedge RN &&& adacond5, tpw_RN_adacond5_negedge, 0, notifier);
		$width (negedge SN &&& adacond11, tpw_SN_adacond11_negedge, 0, notifier);
		$width (negedge SN &&& adacond12, tpw_SN_adacond12_negedge, 0, notifier);
		$width (negedge SN &&& adacond13, tpw_SN_adacond13_negedge, 0, notifier);
		$width (negedge SN &&& adacond14, tpw_SN_adacond14_negedge, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type: DFFSX1 
`timescale 1ns/10ps
`celldefine
module DFFSX1 (Q, QN, CK, D, SN);
	output Q, QN;
	input CK, D, SN;
	reg notifier;
	wire delayed_CK, delayed_D;

	// Function
	wire int_fwire_IQ, int_fwire_IQN, int_fwire_s;
	wire xcr_0;

	not (int_fwire_s, SN);
	altos_dff_s_err (xcr_0, delayed_CK, delayed_D, int_fwire_s);
	altos_dff_s (int_fwire_IQ, notifier, delayed_CK, delayed_D, int_fwire_s, xcr_0);
	buf (Q, int_fwire_IQ);
	not (int_fwire_IQN, int_fwire_IQ);
	buf (QN, int_fwire_IQN);

	// Timing

	// Additional timing wires
	wire adacond0, adacond1, adacond2;
	wire adacond3, adacond4, adacond5;
	wire CK__bar, D__bar;


	// Additional timing gates
	and (adacond4, D, SN);
	not (D__bar, D);
	and (adacond5, D__bar, SN);
	and (adacond0, CK, D);
	and (adacond1, CK, D__bar);
	not (CK__bar, CK);
	and (adacond2, CK__bar, D);
	and (adacond3, CK__bar, D__bar);

	specify
		specparam tpd_CK_Q_posedge_r = 2.09073:3.167837:4.89224;
		specparam tpd_CK_Q_posedge_f = 2.64493:5.571245:10.64;
		specparam tpd_SN_Q_cond0_negedge_r = 0.631401:1.812515:3.46997;
		specparam tpd_SN_Q_cond0_negedge_f = 0.631401:1.812515:3.46997;
		specparam tpd_SN_Q_cond1_negedge_r = 0.631752:1.812804:3.47038;
		specparam tpd_SN_Q_cond1_negedge_f = 0.631752:1.812804:3.47038;
		specparam tpd_SN_Q_cond2_negedge_r = 0.632413:1.890893:3.84385;
		specparam tpd_SN_Q_cond2_negedge_f = 0.632413:1.890893:3.84385;
		specparam tpd_SN_Q_cond3_negedge_r = 0.630267:1.889742:3.84551;
		specparam tpd_SN_Q_cond3_negedge_f = 0.630267:1.889742:3.84551;
		specparam tpd_SN_Q_negedge_r = 0.630267:1.889742:3.84551;
		specparam tpd_SN_Q_negedge_f = 0.630267:1.889742:3.84551;
		specparam tpd_CK_QN_posedge_r = 1.70413:2.762311:4.45866;
		specparam tpd_CK_QN_posedge_f = 2.80692:5.177996:9.22775;
		specparam tpd_SN_QN_cond0_negedge_r = 3.36942:4.947958:7.66946;
		specparam tpd_SN_QN_cond0_negedge_f = 3.36942:4.947958:7.66946;
		specparam tpd_SN_QN_cond1_negedge_r = 3.36004:4.939045:7.66979;
		specparam tpd_SN_QN_cond1_negedge_f = 3.36004:4.939045:7.66979;
		specparam tpd_SN_QN_cond2_negedge_r = 1.35158:3.892272:8.16674;
		specparam tpd_SN_QN_cond2_negedge_f = 1.35158:3.892272:8.16674;
		specparam tpd_SN_QN_cond3_negedge_r = 1.34959:3.893005:8.1745;
		specparam tpd_SN_QN_cond3_negedge_f = 1.34959:3.893005:8.1745;
		specparam tpd_SN_QN_negedge_r = 1.34959:3.893005:8.1745;
		specparam tpd_SN_QN_negedge_f = 1.34959:3.893005:8.1745;
		specparam tpw_CK_adacond4_posedge = 1.8167:2.238240:3.00049;
		specparam tpw_CK_adacond4_negedge = 1.8167:2.238240:3.00049;
		specparam tpw_CK_adacond5_posedge = 1.60866:2.111243:3.00049;
		specparam tpw_CK_adacond5_negedge = 1.60866:2.111243:3.00049;
		specparam tsetup_D_CK_SN_posedge_SN_posedge = 1.32529:1.446922:1.55816;
		specparam thold_D_CK_SN_posedge_SN_posedge = -0.0561102:0.058664:0.18765;
		specparam tsetup_D_CK_SN_negedge_SN_posedge = 1.32529:1.446922:1.55816;
		specparam thold_D_CK_SN_negedge_SN_posedge = -0.0561102:0.058664:0.18765;
		specparam tsetup_D_CK_posedge_posedge = 1.32529:1.446922:1.55816;
		specparam thold_D_CK_posedge_posedge = -0.0561102:0.058664:0.18765;
		specparam tsetup_D_CK_negedge_posedge = 1.32529:1.446922:1.55816;
		specparam thold_D_CK_negedge_posedge = -0.0561102:0.058664:0.18765;
		specparam trecovery_SN_CK_NTB_D_posedge_NTB_D_posedge = -0.256865:-0.125413:-0.0265291;
		specparam trecovery_SN_CK_posedge_posedge = -0.256865:-0.125413:-0.0265291;
		specparam tremoval_SN_CK_NTB_D_posedge_NTB_D_posedge = 0.0511246:0.151667:0.277762;
		specparam tremoval_SN_CK_posedge_posedge = 0.0511246:0.151667:0.277762;
		specparam tpw_SN_adacond0_negedge = 1.05919:1.882610:3.00049;
		specparam tpw_SN_adacond1_negedge = 1.05919:1.882610:3.00049;
		specparam tpw_SN_adacond2_negedge = 0.976217:1.850069:3.00049;
		specparam tpw_SN_adacond3_negedge = 0.978313:1.850768:3.00049;

		(posedge CK => (Q+:D)) = ( tpd_CK_Q_posedge_r , tpd_CK_Q_posedge_f );
		if ((CK & D))
			(negedge SN => (Q+:1'b1)) = ( tpd_SN_Q_cond0_negedge_r , tpd_SN_Q_cond0_negedge_f );
		if ((CK & ~D))
			(negedge SN => (Q+:1'b1)) = ( tpd_SN_Q_cond1_negedge_r , tpd_SN_Q_cond1_negedge_f );
		if ((~CK & D))
			(negedge SN => (Q+:1'b1)) = ( tpd_SN_Q_cond2_negedge_r , tpd_SN_Q_cond2_negedge_f );
		if ((~CK & ~D))
			(negedge SN => (Q+:1'b1)) = ( tpd_SN_Q_cond3_negedge_r , tpd_SN_Q_cond3_negedge_f );
		ifnone (negedge SN => (Q+:1'b1)) = ( tpd_SN_Q_negedge_r , tpd_SN_Q_negedge_f );
		(posedge CK => (QN-:D)) = ( tpd_CK_QN_posedge_r , tpd_CK_QN_posedge_f );
		if ((CK & D))
			(negedge SN => (QN-:1'b1)) = ( tpd_SN_QN_cond0_negedge_r , tpd_SN_QN_cond0_negedge_f );
		if ((CK & ~D))
			(negedge SN => (QN-:1'b1)) = ( tpd_SN_QN_cond1_negedge_r , tpd_SN_QN_cond1_negedge_f );
		if ((~CK & D))
			(negedge SN => (QN-:1'b1)) = ( tpd_SN_QN_cond2_negedge_r , tpd_SN_QN_cond2_negedge_f );
		if ((~CK & ~D))
			(negedge SN => (QN-:1'b1)) = ( tpd_SN_QN_cond3_negedge_r , tpd_SN_QN_cond3_negedge_f );
		ifnone (negedge SN => (QN-:1'b1)) = ( tpd_SN_QN_negedge_r , tpd_SN_QN_negedge_f );
		$setuphold (posedge CK &&& SN, posedge D &&& SN, 
			 tsetup_D_CK_SN_posedge_SN_posedge, 
			 thold_D_CK_SN_posedge_SN_posedge, notifier,,, delayed_CK, delayed_D);
		$setuphold (posedge CK &&& SN, negedge D &&& SN, 
			 tsetup_D_CK_SN_negedge_SN_posedge, 
			 thold_D_CK_SN_negedge_SN_posedge, notifier,,, delayed_CK, delayed_D);
		$setuphold (posedge CK, posedge D, 
			 tsetup_D_CK_posedge_posedge, 
			 thold_D_CK_posedge_posedge, notifier,,, delayed_CK, delayed_D);
		$setuphold (posedge CK, negedge D, 
			 tsetup_D_CK_negedge_posedge, 
			 thold_D_CK_negedge_posedge, notifier,,, delayed_CK, delayed_D);
		$recovery (posedge SN &&& ~D, posedge CK &&& ~D, 
			 trecovery_SN_CK_NTB_D_posedge_NTB_D_posedge, notifier);
		$recovery (posedge SN, posedge CK, 
			 trecovery_SN_CK_posedge_posedge, notifier);
		$hold (posedge CK &&& ~D, posedge SN &&& ~D, 
			 tremoval_SN_CK_NTB_D_posedge_NTB_D_posedge, notifier);
		$hold (posedge CK, posedge SN, 
			 tremoval_SN_CK_posedge_posedge, notifier);
		$width (posedge CK &&& adacond4, tpw_CK_adacond4_posedge, 0, notifier);
		$width (negedge CK &&& adacond4, tpw_CK_adacond4_negedge, 0, notifier);
		$width (posedge CK &&& adacond5, tpw_CK_adacond5_posedge, 0, notifier);
		$width (negedge CK &&& adacond5, tpw_CK_adacond5_negedge, 0, notifier);
		$width (negedge SN &&& adacond0, tpw_SN_adacond0_negedge, 0, notifier);
		$width (negedge SN &&& adacond1, tpw_SN_adacond1_negedge, 0, notifier);
		$width (negedge SN &&& adacond2, tpw_SN_adacond2_negedge, 0, notifier);
		$width (negedge SN &&& adacond3, tpw_SN_adacond3_negedge, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type: DFFX1 
`timescale 1ns/10ps
`celldefine
module DFFX1 (Q, QN, CK, D);
	output Q, QN;
	input CK, D;
	reg notifier;
	wire delayed_CK, delayed_D;

	// Function
	wire int_fwire_IQ, int_fwire_IQN, xcr_0;

	altos_dff_err (xcr_0, delayed_CK, delayed_D);
	altos_dff (int_fwire_IQ, notifier, delayed_CK, delayed_D, xcr_0);
	buf (Q, int_fwire_IQ);
	not (int_fwire_IQN, int_fwire_IQ);
	buf (QN, int_fwire_IQN);

	// Timing
	specify
		specparam tpd_CK_Q_posedge_r = 1.66384:2.723357:4.39016;
		specparam tpd_CK_Q_posedge_f = 2.36909:5.038156:9.61399;
		specparam tpd_CK_QN_posedge_r = 1.65074:2.691786:4.34213;
		specparam tpd_CK_QN_posedge_f = 2.39613:4.953873:9.32362;
		specparam tpw_CK_D_posedge = 1.50024:2.013997:3.00049;
		specparam tpw_CK_D_negedge = 1.50024:2.013997:3.00049;
		specparam tpw_CK_NTB_D_posedge = 1.50024:2.009440:3.00049;
		specparam tpw_CK_NTB_D_negedge = 1.50024:2.009440:3.00049;
		specparam tsetup_D_CK_posedge_posedge = 1.22847:1.353143:1.48583;
		specparam thold_D_CK_posedge_posedge = -0.0877405:0.034100:0.166264;
		specparam tsetup_D_CK_negedge_posedge = 1.22847:1.353143:1.48583;
		specparam thold_D_CK_negedge_posedge = -0.0877405:0.034100:0.166264;

		(posedge CK => (Q+:D)) = ( tpd_CK_Q_posedge_r , tpd_CK_Q_posedge_f );
		(posedge CK => (QN-:D)) = ( tpd_CK_QN_posedge_r , tpd_CK_QN_posedge_f );
		$setuphold (posedge CK, posedge D, 
			 tsetup_D_CK_posedge_posedge, 
			 thold_D_CK_posedge_posedge, notifier,,, delayed_CK, delayed_D);
		$setuphold (posedge CK, negedge D, 
			 tsetup_D_CK_negedge_posedge, 
			 thold_D_CK_negedge_posedge, notifier,,, delayed_CK, delayed_D);
		$width (posedge CK &&& D, tpw_CK_D_posedge, 0, notifier);
		$width (negedge CK &&& D, tpw_CK_D_negedge, 0, notifier);
		$width (posedge CK &&& ~D, tpw_CK_NTB_D_posedge, 0, notifier);
		$width (negedge CK &&& ~D, tpw_CK_NTB_D_negedge, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type: DMX2X1 
`timescale 1ns/10ps
`celldefine
module DMX2X1 ();
	// Timing
	specify

	endspecify
endmodule
`endcelldefine

// type: INVX1 
`timescale 1ns/10ps
`celldefine
module INVX1 (Y, A);
	output Y;
	input A;

	// Function
	not (Y, A);

	// Timing
	specify
		specparam tpd_A_Y_r = 0.331211:1.502041:3.41601;
		specparam tpd_A_Y_f = 0.181769:1.021413:2.51529;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
	endspecify
endmodule
`endcelldefine

// type: INVX2 
`timescale 1ns/10ps
`celldefine
module INVX2 (Y, A);
	output Y;
	input A;

	// Function
	not (Y, A);

	// Timing
	specify
		specparam tpd_A_Y_r = 0.282406:1.048412:2.29325;
		specparam tpd_A_Y_f = 0.0433796:0.624644:1.62098;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
	endspecify
endmodule
`endcelldefine

// type: INVX3 
`timescale 1ns/10ps
`celldefine
module INVX3 (Y, A);
	output Y;
	input A;

	// Function
	not (Y, A);

	// Timing
	specify
		specparam tpd_A_Y_r = 0.265617:0.893051:1.92985;
		specparam tpd_A_Y_f = -0.0110248:0.464749:1.23712;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
	endspecify
endmodule
`endcelldefine

// type: INVX4 
`timescale 1ns/10ps
`celldefine
module INVX4 (Y, A);
	output Y;
	input A;

	// Function
	not (Y, A);

	// Timing
	specify
		specparam tpd_A_Y_r = 0.260556:0.808367:1.72027;
		specparam tpd_A_Y_f = -0.013146:0.406158:1.04272;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
	endspecify
endmodule
`endcelldefine

// type: MX2X1 
`timescale 1ns/10ps
`celldefine
module MX2X1 (Y, A, B, S0);
	output Y;
	input A, B, S0;

	// Function
	wire int_fwire_0, int_fwire_1, S0__bar;

	and (int_fwire_0, B, S0);
	not (S0__bar, S0);
	and (int_fwire_1, A, S0__bar);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		specparam tpd_A_Y_r = 0.804826:1.728977:3.249;
		specparam tpd_A_Y_f = 1.04228:2.014223:3.45522;
		specparam tpd_B_Y_r = 0.810747:1.734314:3.25212;
		specparam tpd_B_Y_f = 0.989689:1.976666:3.42649;
		specparam tpd_S0_Y_cond0_r = 0.730942:1.687958:3.22387;
		specparam tpd_S0_Y_cond0_f = 0.898347:1.956107:3.47484;
		specparam tpd_S0_Y_cond1_r = 1.18557:2.378628:4.16831;
		specparam tpd_S0_Y_cond1_f = 1.11981:1.919740:3.10415;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
		(B => Y) = ( tpd_B_Y_r , tpd_B_Y_f );
		if ((~A & B))
			(S0 => Y) = ( tpd_S0_Y_cond0_r , tpd_S0_Y_cond0_f );
		if ((A & ~B))
			(S0 => Y) = ( tpd_S0_Y_cond1_r , tpd_S0_Y_cond1_f );
	endspecify
endmodule
`endcelldefine

// type: MX4X1 
`timescale 1ns/10ps
`celldefine
module MX4X1 (Y, A, B, C, D, S0, S1);
	output Y;
	input A, B, C, D, S0, S1;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, S0__bar, S1__bar;

	and (int_fwire_0, D, S0, S1);
	not (S0__bar, S0);
	and (int_fwire_1, C, S0__bar, S1);
	not (S1__bar, S1);
	and (int_fwire_2, B, S0, S1__bar);
	and (int_fwire_3, A, S0__bar, S1__bar);
	or (Y, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		specparam tpd_A_Y_cond0_r = 2.50706:3.811023:5.72069;
		specparam tpd_A_Y_cond0_f = 2.82856:4.337605:6.38584;
		specparam tpd_A_Y_cond1_r = 2.44519:3.722698:5.60099;
		specparam tpd_A_Y_cond1_f = 2.73298:4.221775:6.24506;
		specparam tpd_A_Y_cond2_r = 2.48305:3.739721:5.5942;
		specparam tpd_A_Y_cond2_f = 2.56182:4.075608:6.15427;
		specparam tpd_A_Y_cond3_r = 2.60212:3.878050:5.75527;
		specparam tpd_A_Y_cond3_f = 2.55948:4.099059:6.24592;
		specparam tpd_A_Y_cond4_r = 2.50651:3.810935:5.71931;
		specparam tpd_A_Y_cond4_f = 2.80868:4.318220:6.36913;
		specparam tpd_A_Y_cond5_r = 2.44558:3.722553:5.59963;
		specparam tpd_A_Y_cond5_f = 2.7136:4.202344:6.22811;
		specparam tpd_A_Y_cond6_r = 2.48229:3.739286:5.5922;
		specparam tpd_A_Y_cond6_f = 2.54244:4.056290:6.13726;
		specparam tpd_A_Y_cond7_r = 2.60149:3.877660:5.75365;
		specparam tpd_A_Y_cond7_f = 2.54009:4.079586:6.22865;
		specparam tpd_A_Y_r = 2.60212:3.878050:5.75527;
		specparam tpd_A_Y_f = 2.82856:4.337605:6.38584;
		specparam tpd_B_Y_cond8_r = 2.49116:3.802894:5.71695;
		specparam tpd_B_Y_cond8_f = 2.89943:4.404033:6.44789;
		specparam tpd_B_Y_cond9_r = 2.46729:3.731227:5.58724;
		specparam tpd_B_Y_cond9_f = 2.62627:4.136591:6.21262;
		specparam tpd_B_Y_cond10_r = 2.42449:3.711794:5.59557;
		specparam tpd_B_Y_cond10_f = 2.80059:4.284730:6.30387;
		specparam tpd_B_Y_cond11_r = 2.58852:3.868729:5.74389;
		specparam tpd_B_Y_cond11_f = 2.62421:4.161056:6.30603;
		specparam tpd_B_Y_cond12_r = 2.49131:3.803076:5.71603;
		specparam tpd_B_Y_cond12_f = 2.88171:4.385938:6.43211;
		specparam tpd_B_Y_cond13_r = 2.46743:3.731042:5.58549;
		specparam tpd_B_Y_cond13_f = 2.60918:4.118460:6.19626;
		specparam tpd_B_Y_cond14_r = 2.42466:3.711684:5.59434;
		specparam tpd_B_Y_cond14_f = 2.78255:4.266790:6.28868;
		specparam tpd_B_Y_cond15_r = 2.58817:3.868552:5.74256;
		specparam tpd_B_Y_cond15_f = 2.60712:4.143056:6.29005;
		specparam tpd_B_Y_r = 2.58852:3.868729:5.74389;
		specparam tpd_B_Y_f = 2.89943:4.404033:6.44789;
		specparam tpd_C_Y_cond16_r = 2.50872:3.812470:5.72151;
		specparam tpd_C_Y_cond16_f = 2.83353:4.341774:6.38867;
		specparam tpd_C_Y_cond17_r = 2.50806:3.812054:5.72014;
		specparam tpd_C_Y_cond17_f = 2.81376:4.322281:6.37198;
		specparam tpd_C_Y_cond18_r = 2.44634:3.723001:5.60091;
		specparam tpd_C_Y_cond18_f = 2.73684:4.224666:6.24602;
		specparam tpd_C_Y_cond19_r = 2.44585:3.722457:5.59926;
		specparam tpd_C_Y_cond19_f = 2.71717:4.205212:6.2292;
		specparam tpd_C_Y_cond20_r = 2.48528:3.740758:5.59336;
		specparam tpd_C_Y_cond20_f = 2.56558:4.079546:6.15707;
		specparam tpd_C_Y_cond21_r = 2.48465:3.740323:5.59181;
		specparam tpd_C_Y_cond21_f = 2.54605:4.059936:6.13996;
		specparam tpd_C_Y_cond22_r = 2.60358:3.878454:5.75454;
		specparam tpd_C_Y_cond22_f = 2.56333:4.102823:6.24781;
		specparam tpd_C_Y_cond23_r = 2.60275:3.877582:5.75274;
		specparam tpd_C_Y_cond23_f = 2.5438:4.082923:6.23054;
		specparam tpd_C_Y_r = 2.60358:3.878454:5.75454;
		specparam tpd_C_Y_f = 2.83353:4.341774:6.38867;
		specparam tpd_D_Y_cond24_r = 2.43368:3.725516:5.61528;
		specparam tpd_D_Y_cond24_f = 2.87767:4.360311:6.37241;
		specparam tpd_D_Y_cond25_r = 2.43402:3.725929:5.61401;
		specparam tpd_D_Y_cond25_f = 2.85931:4.341527:6.35534;
		specparam tpd_D_Y_cond26_r = 2.41915:3.663694:5.49747;
		specparam tpd_D_Y_cond26_f = 2.61063:4.094695:6.13667;
		specparam tpd_D_Y_cond27_r = 2.41948:3.664184:5.4967;
		specparam tpd_D_Y_cond27_f = 2.59241:4.076101:6.11945;
		specparam tpd_D_Y_cond28_r = 2.37552:3.641048:5.50058;
		specparam tpd_D_Y_cond28_f = 2.78139:4.243784:6.23125;
		specparam tpd_D_Y_cond29_r = 2.3759:3.641206:5.49947;
		specparam tpd_D_Y_cond29_f = 2.763:4.225088:6.21421;
		specparam tpd_D_Y_cond30_r = 2.53233:3.793514:5.64681;
		specparam tpd_D_Y_cond30_f = 2.60858:4.115247:6.2181;
		specparam tpd_D_Y_cond31_r = 2.53262:3.793713:5.64526;
		specparam tpd_D_Y_cond31_f = 2.59034:4.096744:6.20145;
		specparam tpd_D_Y_r = 2.53233:3.793514:5.64681;
		specparam tpd_D_Y_f = 2.87767:4.360311:6.37241;
		specparam tpd_S0_Y_cond32_r = 2.12828:3.486009:5.44366;
		specparam tpd_S0_Y_cond32_f = 2.32211:3.860916:5.95422;
		specparam tpd_S0_Y_cond33_r = 2.11638:3.426406:5.33112;
		specparam tpd_S0_Y_cond33_f = 2.21145:3.733102:5.80652;
		specparam tpd_S0_Y_cond34_r = 2.18216:3.558936:5.53973;
		specparam tpd_S0_Y_cond34_f = 2.3193:3.861353:5.95742;
		specparam tpd_S0_Y_cond35_r = 2.16132:3.490064:5.41614;
		specparam tpd_S0_Y_cond35_f = 2.20922:3.736566:5.81291;
		specparam tpd_S0_Y_cond36_r = 1.79108:3.134849:5.0694;
		specparam tpd_S0_Y_cond36_f = 1.99784:3.548177:5.6711;
		specparam tpd_S0_Y_cond37_r = 2.26519:3.617393:5.56926;
		specparam tpd_S0_Y_cond37_f = 2.03963:3.605164:5.78448;
		specparam tpd_S0_Y_cond38_r = 2.20652:3.540773:5.47162;
		specparam tpd_S0_Y_cond38_f = 2.04025:3.602449:5.77917;
		specparam tpd_S0_Y_r = 3.46423:5.037050:7.223;
		specparam tpd_S0_Y_f = 3.47609:4.921595:6.84477;
		specparam tpd_S0_Y_cond39_r = 3.38738:4.989528:7.20773;
		specparam tpd_S0_Y_cond39_f = 3.44826:4.872722:6.76447;
		specparam tpd_S0_Y_cond40_r = 3.37068:4.973863:7.19375;
		specparam tpd_S0_Y_cond40_f = 3.47609:4.921595:6.84477;
		specparam tpd_S0_Y_cond41_r = 3.07352:4.645720:6.83008;
		specparam tpd_S0_Y_cond41_f = 3.16977:4.579532:6.48273;
		specparam tpd_S0_Y_cond42_r = 3.35183:4.906492:7.06946;
		specparam tpd_S0_Y_cond42_f = 3.3809:4.809606:6.71017;
		specparam tpd_S0_Y_cond43_r = 3.44579:5.020588:7.20812;
		specparam tpd_S0_Y_cond43_f = 3.21214:4.679279:6.68975;
		specparam tpd_S0_Y_cond44_r = 3.36834:4.921865:7.08332;
		specparam tpd_S0_Y_cond44_f = 3.35447:4.762039:6.63164;
		specparam tpd_S0_Y_cond45_r = 3.46423:5.037050:7.223;
		specparam tpd_S0_Y_cond45_f = 3.19007:4.629249:6.59974;
		specparam tpd_S1_Y_cond46_r = 2.5492:3.747143:5.50884;
		specparam tpd_S1_Y_cond46_f = 3.06363:4.518852:6.49912;
		specparam tpd_S1_Y_cond47_r = 2.50766:3.681220:5.42773;
		specparam tpd_S1_Y_cond47_f = 2.96066:4.396800:6.35388;
		specparam tpd_S1_Y_cond48_r = 2.61353:3.827495:5.6124;
		specparam tpd_S1_Y_cond48_f = 2.98966:4.442822:6.4228;
		specparam tpd_S1_Y_cond49_r = 2.5723:3.761110:5.53069;
		specparam tpd_S1_Y_cond49_f = 2.88779:4.324089:6.28098;
		specparam tpd_S1_Y_cond50_r = 2.66929:3.880098:5.65696;
		specparam tpd_S1_Y_cond50_f = 3.14164:4.632500:6.64828;
		specparam tpd_S1_Y_cond51_r = 2.74105:3.969273:5.77237;
		specparam tpd_S1_Y_cond51_f = 3.07142:4.562751:6.57977;
		specparam tpd_S1_Y_cond52_r = 2.69913:3.902856:5.69017;
		specparam tpd_S1_Y_cond52_f = 2.96961:4.444046:6.43825;
		specparam tpd_S1_Y_cond53_r = 2.62728:3.813884:5.57571;
		specparam tpd_S1_Y_cond53_f = 3.03733:4.510271:6.50274;
		specparam tpd_S1_Y_r = 3.39101:4.925846:7.05435;
		specparam tpd_S1_Y_f = 3.41209:4.804336:6.66282;
		specparam tpd_S1_Y_cond54_r = 3.2535:4.769110:6.86941;
		specparam tpd_S1_Y_cond54_f = 3.34489:4.714655:6.54026;
		specparam tpd_S1_Y_cond55_r = 3.26803:4.785372:6.8926;
		specparam tpd_S1_Y_cond55_f = 3.31526:4.702088:6.5531;
		specparam tpd_S1_Y_cond56_r = 3.38073:4.910986:7.02926;
		specparam tpd_S1_Y_cond56_f = 3.44064:4.815491:6.64885;
		specparam tpd_S1_Y_cond57_r = 3.39101:4.925846:7.05435;
		specparam tpd_S1_Y_cond57_f = 3.41209:4.804336:6.66282;
		specparam tpd_S1_Y_cond58_r = 3.21126:4.724436:6.82582;
		specparam tpd_S1_Y_cond58_f = 3.21588:4.582838:6.4087;
		specparam tpd_S1_Y_cond59_r = 3.3344:4.865229:6.9877;
		specparam tpd_S1_Y_cond59_f = 3.31179:4.685166:6.51871;
		specparam tpd_S1_Y_cond60_r = 3.19867:4.709682:6.80314;
		specparam tpd_S1_Y_cond60_f = 3.2462:4.596388:6.39812;
		specparam tpd_S1_Y_cond61_r = 3.32551:4.851660:6.96377;
		specparam tpd_S1_Y_cond61_f = 3.34177:4.697487:6.5068;

		if ((B & C & D & ~S0 & ~S1))
			(A => Y) = ( tpd_A_Y_cond0_r , tpd_A_Y_cond0_f );
		if ((B & C & ~D & ~S0 & ~S1))
			(A => Y) = ( tpd_A_Y_cond1_r , tpd_A_Y_cond1_f );
		if ((B & ~C & D & ~S0 & ~S1))
			(A => Y) = ( tpd_A_Y_cond2_r , tpd_A_Y_cond2_f );
		if ((B & ~C & ~D & ~S0 & ~S1))
			(A => Y) = ( tpd_A_Y_cond3_r , tpd_A_Y_cond3_f );
		if ((~B & C & D & ~S0 & ~S1))
			(A => Y) = ( tpd_A_Y_cond4_r , tpd_A_Y_cond4_f );
		if ((~B & C & ~D & ~S0 & ~S1))
			(A => Y) = ( tpd_A_Y_cond5_r , tpd_A_Y_cond5_f );
		if ((~B & ~C & D & ~S0 & ~S1))
			(A => Y) = ( tpd_A_Y_cond6_r , tpd_A_Y_cond6_f );
		if ((~B & ~C & ~D & ~S0 & ~S1))
			(A => Y) = ( tpd_A_Y_cond7_r , tpd_A_Y_cond7_f );
		ifnone (A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
		if ((A & C & D & S0 & ~S1))
			(B => Y) = ( tpd_B_Y_cond8_r , tpd_B_Y_cond8_f );
		if ((A & C & ~D & S0 & ~S1))
			(B => Y) = ( tpd_B_Y_cond9_r , tpd_B_Y_cond9_f );
		if ((A & ~C & D & S0 & ~S1))
			(B => Y) = ( tpd_B_Y_cond10_r , tpd_B_Y_cond10_f );
		if ((A & ~C & ~D & S0 & ~S1))
			(B => Y) = ( tpd_B_Y_cond11_r , tpd_B_Y_cond11_f );
		if ((~A & C & D & S0 & ~S1))
			(B => Y) = ( tpd_B_Y_cond12_r , tpd_B_Y_cond12_f );
		if ((~A & C & ~D & S0 & ~S1))
			(B => Y) = ( tpd_B_Y_cond13_r , tpd_B_Y_cond13_f );
		if ((~A & ~C & D & S0 & ~S1))
			(B => Y) = ( tpd_B_Y_cond14_r , tpd_B_Y_cond14_f );
		if ((~A & ~C & ~D & S0 & ~S1))
			(B => Y) = ( tpd_B_Y_cond15_r , tpd_B_Y_cond15_f );
		ifnone (B => Y) = ( tpd_B_Y_r , tpd_B_Y_f );
		if ((A & B & D & ~S0 & S1))
			(C => Y) = ( tpd_C_Y_cond16_r , tpd_C_Y_cond16_f );
		if ((A & B & ~D & ~S0 & S1))
			(C => Y) = ( tpd_C_Y_cond17_r , tpd_C_Y_cond17_f );
		if ((A & ~B & D & ~S0 & S1))
			(C => Y) = ( tpd_C_Y_cond18_r , tpd_C_Y_cond18_f );
		if ((A & ~B & ~D & ~S0 & S1))
			(C => Y) = ( tpd_C_Y_cond19_r , tpd_C_Y_cond19_f );
		if ((~A & B & D & ~S0 & S1))
			(C => Y) = ( tpd_C_Y_cond20_r , tpd_C_Y_cond20_f );
		if ((~A & B & ~D & ~S0 & S1))
			(C => Y) = ( tpd_C_Y_cond21_r , tpd_C_Y_cond21_f );
		if ((~A & ~B & D & ~S0 & S1))
			(C => Y) = ( tpd_C_Y_cond22_r , tpd_C_Y_cond22_f );
		if ((~A & ~B & ~D & ~S0 & S1))
			(C => Y) = ( tpd_C_Y_cond23_r , tpd_C_Y_cond23_f );
		ifnone (C => Y) = ( tpd_C_Y_r , tpd_C_Y_f );
		if ((A & B & C & S0 & S1))
			(D => Y) = ( tpd_D_Y_cond24_r , tpd_D_Y_cond24_f );
		if ((A & B & ~C & S0 & S1))
			(D => Y) = ( tpd_D_Y_cond25_r , tpd_D_Y_cond25_f );
		if ((A & ~B & C & S0 & S1))
			(D => Y) = ( tpd_D_Y_cond26_r , tpd_D_Y_cond26_f );
		if ((A & ~B & ~C & S0 & S1))
			(D => Y) = ( tpd_D_Y_cond27_r , tpd_D_Y_cond27_f );
		if ((~A & B & C & S0 & S1))
			(D => Y) = ( tpd_D_Y_cond28_r , tpd_D_Y_cond28_f );
		if ((~A & B & ~C & S0 & S1))
			(D => Y) = ( tpd_D_Y_cond29_r , tpd_D_Y_cond29_f );
		if ((~A & ~B & C & S0 & S1))
			(D => Y) = ( tpd_D_Y_cond30_r , tpd_D_Y_cond30_f );
		if ((~A & ~B & ~C & S0 & S1))
			(D => Y) = ( tpd_D_Y_cond31_r , tpd_D_Y_cond31_f );
		ifnone (D => Y) = ( tpd_D_Y_r , tpd_D_Y_f );
		if ((A & B & ~C & D & S1))
			(S0 => Y) = ( tpd_S0_Y_cond32_r , tpd_S0_Y_cond32_f );
		if ((A & ~B & ~C & D & S1))
			(S0 => Y) = ( tpd_S0_Y_cond33_r , tpd_S0_Y_cond33_f );
		if ((~A & B & C & D & ~S1))
			(S0 => Y) = ( tpd_S0_Y_cond34_r , tpd_S0_Y_cond34_f );
		if ((~A & B & C & ~D & ~S1))
			(S0 => Y) = ( tpd_S0_Y_cond35_r , tpd_S0_Y_cond35_f );
		if ((~A & B & ~C & D))
			(S0 => Y) = ( tpd_S0_Y_cond36_r , tpd_S0_Y_cond36_f );
		if ((~A & B & ~C & ~D & ~S1))
			(S0 => Y) = ( tpd_S0_Y_cond37_r , tpd_S0_Y_cond37_f );
		if ((~A & ~B & ~C & D & S1))
			(S0 => Y) = ( tpd_S0_Y_cond38_r , tpd_S0_Y_cond38_f );
		ifnone (S0 => Y) = ( tpd_S0_Y_r , tpd_S0_Y_f );
		if ((A & B & C & ~D & S1))
			(S0 => Y) = ( tpd_S0_Y_cond39_r , tpd_S0_Y_cond39_f );
		if ((A & ~B & C & D & ~S1))
			(S0 => Y) = ( tpd_S0_Y_cond40_r , tpd_S0_Y_cond40_f );
		if ((A & ~B & C & ~D))
			(S0 => Y) = ( tpd_S0_Y_cond41_r , tpd_S0_Y_cond41_f );
		if ((A & ~B & ~C & D & ~S1))
			(S0 => Y) = ( tpd_S0_Y_cond42_r , tpd_S0_Y_cond42_f );
		if ((A & ~B & ~C & ~D & ~S1))
			(S0 => Y) = ( tpd_S0_Y_cond43_r , tpd_S0_Y_cond43_f );
		if ((~A & B & C & ~D & S1))
			(S0 => Y) = ( tpd_S0_Y_cond44_r , tpd_S0_Y_cond44_f );
		if ((~A & ~B & C & ~D & S1))
			(S0 => Y) = ( tpd_S0_Y_cond45_r , tpd_S0_Y_cond45_f );
		if ((A & ~B & C & D & S0))
			(S1 => Y) = ( tpd_S1_Y_cond46_r , tpd_S1_Y_cond46_f );
		if ((A & ~B & ~C & D & S0))
			(S1 => Y) = ( tpd_S1_Y_cond47_r , tpd_S1_Y_cond47_f );
		if ((~A & B & C & D & ~S0))
			(S1 => Y) = ( tpd_S1_Y_cond48_r , tpd_S1_Y_cond48_f );
		if ((~A & B & C & ~D & ~S0))
			(S1 => Y) = ( tpd_S1_Y_cond49_r , tpd_S1_Y_cond49_f );
		if ((~A & ~B & C & D & S0))
			(S1 => Y) = ( tpd_S1_Y_cond50_r , tpd_S1_Y_cond50_f );
		if ((~A & ~B & C & D & ~S0))
			(S1 => Y) = ( tpd_S1_Y_cond51_r , tpd_S1_Y_cond51_f );
		if ((~A & ~B & C & ~D & ~S0))
			(S1 => Y) = ( tpd_S1_Y_cond52_r , tpd_S1_Y_cond52_f );
		if ((~A & ~B & ~C & D & S0))
			(S1 => Y) = ( tpd_S1_Y_cond53_r , tpd_S1_Y_cond53_f );
		ifnone (S1 => Y) = ( tpd_S1_Y_r , tpd_S1_Y_f );
		if ((A & B & C & ~D & S0))
			(S1 => Y) = ( tpd_S1_Y_cond54_r , tpd_S1_Y_cond54_f );
		if ((A & B & ~C & D & ~S0))
			(S1 => Y) = ( tpd_S1_Y_cond55_r , tpd_S1_Y_cond55_f );
		if ((A & B & ~C & ~D & S0))
			(S1 => Y) = ( tpd_S1_Y_cond56_r , tpd_S1_Y_cond56_f );
		if ((A & B & ~C & ~D & ~S0))
			(S1 => Y) = ( tpd_S1_Y_cond57_r , tpd_S1_Y_cond57_f );
		if ((A & ~B & ~C & D & ~S0))
			(S1 => Y) = ( tpd_S1_Y_cond58_r , tpd_S1_Y_cond58_f );
		if ((A & ~B & ~C & ~D & ~S0))
			(S1 => Y) = ( tpd_S1_Y_cond59_r , tpd_S1_Y_cond59_f );
		if ((~A & B & C & ~D & S0))
			(S1 => Y) = ( tpd_S1_Y_cond60_r , tpd_S1_Y_cond60_f );
		if ((~A & B & ~C & ~D & S0))
			(S1 => Y) = ( tpd_S1_Y_cond61_r , tpd_S1_Y_cond61_f );
	endspecify
endmodule
`endcelldefine

// type: NAND2X1 
`timescale 1ns/10ps
`celldefine
module NAND2X1 (Y, A, B);
	output Y;
	input A, B;

	// Function
	wire A__bar, B__bar;

	not (B__bar, B);
	not (A__bar, A);
	or (Y, A__bar, B__bar);

	// Timing
	specify
		specparam tpd_A_Y_r = 0.415641:1.594012:3.4988;
		specparam tpd_A_Y_f = 0.273708:1.396193:3.38339;
		specparam tpd_B_Y_r = 0.376537:1.550998:3.46754;
		specparam tpd_B_Y_f = 0.312857:1.491339:3.61616;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
		(B => Y) = ( tpd_B_Y_r , tpd_B_Y_f );
	endspecify
endmodule
`endcelldefine

// type: NAND2X2 
`timescale 1ns/10ps
`celldefine
module NAND2X2 (Y, A, B);
	output Y;
	input A, B;

	// Function
	wire A__bar, B__bar;

	not (B__bar, B);
	not (A__bar, A);
	or (Y, A__bar, B__bar);

	// Timing
	specify
		specparam tpd_A_Y_r = 0.338673:1.109642:2.33488;
		specparam tpd_A_Y_f = 0.133866:0.815067:1.94156;
		specparam tpd_B_Y_r = 0.317314:1.082533:2.3292;
		specparam tpd_B_Y_f = 0.18893:0.882599:2.1543;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
		(B => Y) = ( tpd_B_Y_r , tpd_B_Y_f );
	endspecify
endmodule
`endcelldefine

// type: NAND2X3 
`timescale 1ns/10ps
`celldefine
module NAND2X3 (Y, A, B);
	output Y;
	input A, B;

	// Function
	wire A__bar, B__bar;

	not (B__bar, B);
	not (A__bar, A);
	or (Y, A__bar, B__bar);

	// Timing
	specify
		specparam tpd_A_Y_r = 0.375623:1.015637:2.02786;
		specparam tpd_A_Y_f = 0.130088:0.622708:1.43834;
		specparam tpd_B_Y_r = 0.312321:0.936688:1.96668;
		specparam tpd_B_Y_f = 0.162455:0.689739:1.67106;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
		(B => Y) = ( tpd_B_Y_r , tpd_B_Y_f );
	endspecify
endmodule
`endcelldefine

// type: NAND3X1 
`timescale 1ns/10ps
`celldefine
module NAND3X1 (Y, A, B, C);
	output Y;
	input A, B, C;

	// Function
	wire A__bar, B__bar, C__bar;

	not (C__bar, C);
	not (B__bar, B);
	not (A__bar, A);
	or (Y, A__bar, B__bar, C__bar);

	// Timing
	specify
		specparam tpd_A_Y_r = 0.429597:1.620932:3.51824;
		specparam tpd_A_Y_f = 0.415578:1.920395:4.53161;
		specparam tpd_B_Y_r = 0.437575:1.616710:3.51799;
		specparam tpd_B_Y_f = 0.444102:1.955683:4.65987;
		specparam tpd_C_Y_r = 0.406801:1.581133:3.49256;
		specparam tpd_C_Y_f = 0.410883:1.999519:4.80623;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
		(B => Y) = ( tpd_B_Y_r , tpd_B_Y_f );
		(C => Y) = ( tpd_C_Y_r , tpd_C_Y_f );
	endspecify
endmodule
`endcelldefine

// type: NAND4X1 
`timescale 1ns/10ps
`celldefine
module NAND4X1 (Y, A, B, C, D);
	output Y;
	input A, B, C, D;

	// Function
	wire A__bar, B__bar, C__bar;
	wire D__bar;

	not (D__bar, D);
	not (C__bar, C);
	not (B__bar, B);
	not (A__bar, A);
	or (Y, A__bar, B__bar, C__bar, D__bar);

	// Timing
	specify
		specparam tpd_A_Y_r = 0.450438:1.657575:3.55734;
		specparam tpd_A_Y_f = 0.582735:2.503867:5.82111;
		specparam tpd_B_Y_r = 0.46947:1.660589:3.5582;
		specparam tpd_B_Y_f = 0.626785:2.507946:5.86629;
		specparam tpd_C_Y_r = 0.445506:1.625726:3.52559;
		specparam tpd_C_Y_f = 0.578395:2.507799:5.94226;
		specparam tpd_D_Y_r = 0.427892:1.601880:3.51148;
		specparam tpd_D_Y_f = 0.509439:2.509641:6.02646;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
		(B => Y) = ( tpd_B_Y_r , tpd_B_Y_f );
		(C => Y) = ( tpd_C_Y_r , tpd_C_Y_f );
		(D => Y) = ( tpd_D_Y_r , tpd_D_Y_f );
	endspecify
endmodule
`endcelldefine

// type: NOR2X1 
`timescale 1ns/10ps
`celldefine
module NOR2X1 (Y, A, B);
	output Y;
	input A, B;

	// Function
	wire A__bar, B__bar;

	not (B__bar, B);
	not (A__bar, A);
	and (Y, A__bar, B__bar);

	// Timing
	specify
		specparam tpd_A_Y_r = 0.568734:2.430802:5.60834;
		specparam tpd_A_Y_f = 0.28758:1.091875:2.55793;
		specparam tpd_B_Y_r = 0.482102:2.443568:5.71389;
		specparam tpd_B_Y_f = 0.21999:1.048732:2.53459;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
		(B => Y) = ( tpd_B_Y_r , tpd_B_Y_f );
	endspecify
endmodule
`endcelldefine

// type: NOR2X2 
`timescale 1ns/10ps
`celldefine
module NOR2X2 (Y, A, B);
	output Y;
	input A, B;

	// Function
	wire A__bar, B__bar;

	not (B__bar, B);
	not (A__bar, A);
	and (Y, A__bar, B__bar);

	// Timing
	specify
		specparam tpd_A_Y_r = 0.439359:1.508571:3.27747;
		specparam tpd_A_Y_f = 0.240593:0.716587:1.68249;
		specparam tpd_B_Y_r = 0.358128:1.515923:3.38064;
		specparam tpd_B_Y_f = 0.0596164:0.657715:1.65402;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
		(B => Y) = ( tpd_B_Y_r , tpd_B_Y_f );
	endspecify
endmodule
`endcelldefine

// type: NOR2X3 
`timescale 1ns/10ps
`celldefine
module NOR2X3 (Y, A, B);
	output Y;
	input A, B;

	// Function
	wire A__bar, B__bar;

	not (B__bar, B);
	not (A__bar, A);
	and (Y, A__bar, B__bar);

	// Timing
	specify
		specparam tpd_A_Y_r = 0.449236:1.254966:2.56658;
		specparam tpd_A_Y_f = 0.228893:0.589672:1.33653;
		specparam tpd_B_Y_r = 0.322564:1.205918:2.61373;
		specparam tpd_B_Y_f = 0.000269852:0.507056:1.28684;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
		(B => Y) = ( tpd_B_Y_r , tpd_B_Y_f );
	endspecify
endmodule
`endcelldefine

// type: NOR3X1 
`timescale 1ns/10ps
`celldefine
module NOR3X1 (Y, A, B, C);
	output Y;
	input A, B, C;

	// Function
	wire A__bar, B__bar, C__bar;

	not (C__bar, C);
	not (B__bar, B);
	not (A__bar, A);
	and (Y, A__bar, B__bar, C__bar);

	// Timing
	specify
		specparam tpd_A_Y_r = 0.873268:3.491604:8.03552;
		specparam tpd_A_Y_f = 0.323447:1.154222:2.61408;
		specparam tpd_B_Y_r = 0.777992:3.440782:8.03932;
		specparam tpd_B_Y_f = 0.331939:1.136535:2.59841;
		specparam tpd_C_Y_r = 0.62459:3.371440:8.03306;
		specparam tpd_C_Y_f = 0.26645:1.080293:2.5604;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
		(B => Y) = ( tpd_B_Y_r , tpd_B_Y_f );
		(C => Y) = ( tpd_C_Y_r , tpd_C_Y_f );
	endspecify
endmodule
`endcelldefine

// type: NOR4X1 
`timescale 1ns/10ps
`celldefine
module NOR4X1 (Y, A, B, C, D);
	output Y;
	input A, B, C, D;

	// Function
	wire A__bar, B__bar, C__bar;
	wire D__bar;

	not (D__bar, D);
	not (C__bar, C);
	not (B__bar, B);
	not (A__bar, A);
	and (Y, A__bar, B__bar, C__bar, D__bar);

	// Timing
	specify
		specparam tpd_A_Y_r = 1.26986:4.663543:10.6137;
		specparam tpd_A_Y_f = 0.338794:1.196375:2.66162;
		specparam tpd_B_Y_r = 1.18322:4.599720:10.5798;
		specparam tpd_B_Y_f = 0.35431:1.189586:2.64572;
		specparam tpd_C_Y_r = 1.01812:4.469102:10.4899;
		specparam tpd_C_Y_f = 0.342041:1.150714:2.6051;
		specparam tpd_D_Y_r = 0.767176:4.299773:10.3627;
		specparam tpd_D_Y_f = 0.31074:1.101141:2.5748;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
		(B => Y) = ( tpd_B_Y_r , tpd_B_Y_f );
		(C => Y) = ( tpd_C_Y_r , tpd_C_Y_f );
		(D => Y) = ( tpd_D_Y_r , tpd_D_Y_f );
	endspecify
endmodule
`endcelldefine

// type: OA21X1 
`timescale 1ns/10ps
`celldefine
module OA21X1 ();
	// Timing
	specify

	endspecify
endmodule
`endcelldefine

// type: OAI21X1 
`timescale 1ns/10ps
`celldefine
module OAI21X1 (Y, A, B, C);
	output Y;
	input A, B, C;

	// Function
	wire A__bar, B__bar, C__bar;
	wire int_fwire_0;

	not (C__bar, C);
	not (B__bar, B);
	not (A__bar, A);
	and (int_fwire_0, A__bar, B__bar);
	or (Y, int_fwire_0, C__bar);

	// Timing
	specify
		specparam tpd_A_Y_r = 0.561744:2.424045:5.60722;
		specparam tpd_A_Y_f = 0.370636:1.573466:3.6834;
		specparam tpd_B_Y_r = 0.495133:2.455212:5.73528;
		specparam tpd_B_Y_f = 0.322489:1.498780:3.62643;
		specparam tpd_C_Y_cond0_r = 0.441836:1.631670:3.5268;
		specparam tpd_C_Y_cond0_f = 0.322747:1.223893:2.87004;
		specparam tpd_C_Y_cond1_r = 0.410735:1.600206:3.50565;
		specparam tpd_C_Y_cond1_f = 0.418851:1.536333:3.52089;
		specparam tpd_C_Y_cond2_r = 0.406643:1.589502:3.49065;
		specparam tpd_C_Y_cond2_f = 0.30668:1.434949:3.42492;
		specparam tpd_C_Y_r = 0.441836:1.631670:3.5268;
		specparam tpd_C_Y_f = 0.418851:1.536333:3.52089;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
		(B => Y) = ( tpd_B_Y_r , tpd_B_Y_f );
		if ((A & B))
			(C => Y) = ( tpd_C_Y_cond0_r , tpd_C_Y_cond0_f );
		if ((A & ~B))
			(C => Y) = ( tpd_C_Y_cond1_r , tpd_C_Y_cond1_f );
		if ((~A & B))
			(C => Y) = ( tpd_C_Y_cond2_r , tpd_C_Y_cond2_f );
		ifnone (C => Y) = ( tpd_C_Y_r , tpd_C_Y_f );
	endspecify
endmodule
`endcelldefine

// type: OR2X1 
`timescale 1ns/10ps
`celldefine
module OR2X1 ();
	// Timing
	specify

	endspecify
endmodule
`endcelldefine

// type: OR3X1 
`timescale 1ns/10ps
`celldefine
module OR3X1 ();
	// Timing
	specify

	endspecify
endmodule
`endcelldefine

// type: OR4X1 
`timescale 1ns/10ps
`celldefine
module OR4X1 ();
	// Timing
	specify

	endspecify
endmodule
`endcelldefine

// type: TFFRX1 
`timescale 1ns/10ps
`celldefine
module TFFRX1 ();
	// Timing
	specify

	endspecify
endmodule
`endcelldefine

// type: TIEHI 
`timescale 1ns/10ps
`celldefine
module TIEHI (Y);
	output Y;

	// Function
	buf (Y, 1'b1);

	// Timing
	specify

	endspecify
endmodule
`endcelldefine

// type: TIELO 
`timescale 1ns/10ps
`celldefine
module TIELO (Y);
	output Y;

	// Function
	buf (Y, 1'b0);

	// Timing
	specify

	endspecify
endmodule
`endcelldefine

// type: XNOR2X1 
`timescale 1ns/10ps
`celldefine
module XNOR2X1 (Y, A, B);
	output Y;
	input A, B;

	// Function
	wire A__bar, B__bar, int_fwire_0;
	wire int_fwire_1;

	not (B__bar, B);
	not (A__bar, A);
	and (int_fwire_0, A__bar, B__bar);
	and (int_fwire_1, A, B);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		specparam tpd_A_Y_B_r = 0.833019:1.748683:3.2547;
		specparam tpd_A_Y_B_f = 0.731848:2.129866:4.3201;
		specparam tpd_A_Y_NTB_B_r = 0.897937:2.775881:5.95403;
		specparam tpd_A_Y_NTB_B_f = 0.603785:1.736050:3.71582;
		specparam tpd_B_Y_A_r = 0.741397:1.722362:3.28727;
		specparam tpd_B_Y_A_f = 0.85974:2.189413:4.32452;
		specparam tpd_B_Y_NTB_A_r = 0.793812:2.746146:6.00375;
		specparam tpd_B_Y_NTB_A_f = 0.589515:1.717693:3.70586;

		if (B)
			(A => Y) = ( tpd_A_Y_B_r , tpd_A_Y_B_f );
		if (~B)
			(A => Y) = ( tpd_A_Y_NTB_B_r , tpd_A_Y_NTB_B_f );
		if (A)
			(B => Y) = ( tpd_B_Y_A_r , tpd_B_Y_A_f );
		if (~A)
			(B => Y) = ( tpd_B_Y_NTB_A_r , tpd_B_Y_NTB_A_f );
	endspecify
endmodule
`endcelldefine

// type: XOR2X1 
`timescale 1ns/10ps
`celldefine
module XOR2X1 (Y, A, B);
	output Y;
	input A, B;

	// Function
	wire A__bar, B__bar, int_fwire_0;
	wire int_fwire_1;

	not (A__bar, A);
	and (int_fwire_0, A__bar, B);
	not (B__bar, B);
	and (int_fwire_1, A, B__bar);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		specparam tpd_A_Y_NTB_B_r = 0.731447:2.474902:5.44125;
		specparam tpd_A_Y_NTB_B_f = 1.04348:2.010461:3.44711;
		specparam tpd_A_Y_B_r = 0.85541:2.740372:5.92083;
		specparam tpd_A_Y_B_f = 0.642468:1.770833:3.74835;
		specparam tpd_B_Y_NTB_A_r = 0.815015:2.478150:5.37361;
		specparam tpd_B_Y_NTB_A_f = 0.873001:1.948188:3.4876;
		specparam tpd_B_Y_A_r = 0.818808:2.708173:5.90119;
		specparam tpd_B_Y_A_f = 0.597165:1.807119:3.90225;

		if (~B)
			(A => Y) = ( tpd_A_Y_NTB_B_r , tpd_A_Y_NTB_B_f );
		if (B)
			(A => Y) = ( tpd_A_Y_B_r , tpd_A_Y_B_f );
		if (~A)
			(B => Y) = ( tpd_B_Y_NTB_A_r , tpd_B_Y_NTB_A_f );
		if (A)
			(B => Y) = ( tpd_B_Y_A_r , tpd_B_Y_A_f );
	endspecify
endmodule
`endcelldefine


`ifdef _udp_def_altos_latch_
`else
`define _udp_def_altos_latch_
primitive altos_latch (q, v, clk, d);
	output q;
	reg q;
	input v, clk, d;

	table
		* ? ? : ? : x;
		? 1 0 : ? : 0;
		? 1 1 : ? : 1;
		? x 0 : 0 : -;
		? x 1 : 1 : -;
		? 0 ? : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_err_
`else
`define _udp_def_altos_dff_err_
primitive altos_dff_err (q, clk, d);
	output q;
	reg q;
	input clk, d;

	table
		(0x) ? : ? : 0;
		(1x) ? : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_
`else
`define _udp_def_altos_dff_
primitive altos_dff (q, v, clk, d, xcr);
	output q;
	reg q;
	input v, clk, d, xcr;

	table
		*  ?   ? ? : ? : x;
		? (x1) 0 0 : ? : 0;
		? (x1) 1 0 : ? : 1;
		? (x1) 0 1 : 0 : 0;
		? (x1) 1 1 : 1 : 1;
		? (x1) ? x : ? : -;
		? (bx) 0 ? : 0 : -;
		? (bx) 1 ? : 1 : -;
		? (x0) b ? : ? : -;
		? (x0) ? x : ? : -;
		? (01) 0 ? : ? : 0;
		? (01) 1 ? : ? : 1;
		? (10) ? ? : ? : -;
		?  b   * ? : ? : -;
		?  ?   ? * : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_r_err_
`else
`define _udp_def_altos_dff_r_err_
primitive altos_dff_r_err (q, clk, d, r);
	output q;
	reg q;
	input clk, d, r;

	table
		 ?   0 (0x) : ? : -;
		 ?   0 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 0  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 0  x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_r_
`else
`define _udp_def_altos_dff_r_
primitive altos_dff_r (q, v, clk, d, r, xcr);
	output q;
	reg q;
	input v, clk, d, r, xcr;

	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 0;
		?  b   ? (1?) ? : 0 : -;
		?  x   0 (1?) ? : 0 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 0 : -;
		? (x1) 0  ?   0 : ? : 0;
		? (x1) 1  0   0 : ? : 1;
		? (x1) 0  ?   1 : 0 : 0;
		? (x1) 1  0   1 : 1 : 1;
		? (x1) ?  ?   x : ? : -;
		? (bx) 0  ?   ? : 0 : -;
		? (bx) 1  0   ? : 1 : -;
		? (x0) 0  ?   ? : ? : -;
		? (x0) 1  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 0  ?   ? : ? : 0;
		? (01) 1  0   ? : ? : 1;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_s_err_
`else
`define _udp_def_altos_dff_s_err_
primitive altos_dff_s_err (q, clk, d, s);
	output q;
	reg q;
	input clk, d, s;

	table
		 ?   1 (0x) : ? : -;
		 ?   1 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 1  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 1  x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_s_
`else
`define _udp_def_altos_dff_s_
primitive altos_dff_s (q, v, clk, d, s, xcr);
	output q;
	reg q;
	input v, clk, d, s, xcr;

	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 1;
		?  b   ? (1?) ? : 1 : -;
		?  x   1 (1?) ? : 1 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 1 : -;
		? (x1) 0  0   0 : ? : 0;
		? (x1) 1  ?   0 : ? : 1;
		? (x1) 1  ?   1 : 1 : 1;
		? (x1) 0  0   1 : 0 : 0;
		? (x1) ?  ?   x : ? : -;
		? (bx) 1  ?   ? : 1 : -;
		? (bx) 0  0   ? : 0 : -;
		? (x0) 1  ?   ? : ? : -;
		? (x0) 0  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 1  ?   ? : ? : 1;
		? (01) 0  0   ? : ? : 0;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_sr_err_
`else
`define _udp_def_altos_dff_sr_err_
primitive altos_dff_sr_err (q, clk, d, s, r);
	output q;
	reg q;
	input clk, d, s, r;

	table
		 ?   1 (0x)  ?   : ? : -;
		 ?   0  ?   (0x) : ? : -;
		 ?   0  ?   (x0) : ? : -;
		(0x) ?  0    0   : ? : 0;
		(0x) 1  x    0   : ? : 0;
		(0x) 0  0    x   : ? : 0;
		(1x) ?  0    0   : ? : 1;
		(1x) 1  x    0   : ? : 1;
		(1x) 0  0    x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_sr_0
`else
`define _udp_def_altos_dff_sr_0
primitive altos_dff_sr_0 (q, v, clk, d, s, r, xcr);
	output q;
	reg q;
	input v, clk, d, s, r, xcr;

	table
	//	v,  clk, d, s, r : q' : q;

		*  ?   ?   ?   ?   ? : ? : x;
		?  ?   ?   ?   1   ? : ? : 0;
		?  ?   ?   1   0   ? : ? : 1;
		?  b   ? (1?)  0   ? : 1 : -;
		?  x   1 (1?)  0   ? : 1 : -;
		?  ?   ? (10)  0   ? : ? : -;
		?  ?   ? (x0)  0   ? : ? : -;
		?  ?   ? (0x)  0   ? : 1 : -;
		?  b   ?  0   (1?) ? : 0 : -;
		?  x   0  0   (1?) ? : 0 : -;
		?  ?   ?  0   (10) ? : ? : -;
		?  ?   ?  0   (x0) ? : ? : -;
		?  ?   ?  0   (0x) ? : 0 : -;
		? (x1) 0  0    ?   0 : ? : 0;
		? (x1) 1  ?    0   0 : ? : 1;
		? (x1) 0  0    ?   1 : 0 : 0;
		? (x1) 1  ?    0   1 : 1 : 1;
		? (x1) ?  ?    0   x : ? : -;
		? (x1) ?  0    ?   x : ? : -;
		? (1x) 0  0    ?   ? : 0 : -;
		? (1x) 1  ?    0   ? : 1 : -;
		? (x0) 0  0    ?   ? : ? : -;
		? (x0) 1  ?    0   ? : ? : -;
		? (x0) ?  0    0   x : ? : -;
		? (0x) 0  0    ?   ? : 0 : -;
		? (0x) 1  ?    0   ? : 1 : -;
		? (01) 0  0    ?   ? : ? : 0;
		? (01) 1  ?    0   ? : ? : 1;
		? (10) ?  0    ?   ? : ? : -;
		? (10) ?  ?    0   ? : ? : -;
		?  b   *  0    ?   ? : ? : -;
		?  b   *  ?    0   ? : ? : -;
		?  ?   ?  ?    ?   * : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_sr_1
`else
`define _udp_def_altos_dff_sr_1
primitive altos_dff_sr_1 (q, v, clk, d, s, r, xcr);
	output q;
	reg q;
	input v, clk, d, s, r, xcr;

	table
	//	v,  clk, d, s, r : q' : q;

		*  ?   ?   ?   ?   ? : ? : x;
		?  ?   ?   0   1   ? : ? : 0;
		?  ?   ?   1   ?   ? : ? : 1;
		?  b   ? (1?)  0   ? : 1 : -;
		?  x   1 (1?)  0   ? : 1 : -;
		?  ?   ? (10)  0   ? : ? : -;
		?  ?   ? (x0)  0   ? : ? : -;
		?  ?   ? (0x)  0   ? : 1 : -;
		?  b   ?  0   (1?) ? : 0 : -;
		?  x   0  0   (1?) ? : 0 : -;
		?  ?   ?  0   (10) ? : ? : -;
		?  ?   ?  0   (x0) ? : ? : -;
		?  ?   ?  0   (0x) ? : 0 : -;
		? (x1) 0  0    ?   0 : ? : 0;
		? (x1) 1  ?    0   0 : ? : 1;
		? (x1) 0  0    ?   1 : 0 : 0;
		? (x1) 1  ?    0   1 : 1 : 1;
		? (x1) ?  ?    0   x : ? : -;
		? (x1) ?  0    ?   x : ? : -;
		? (1x) 0  0    ?   ? : 0 : -;
		? (1x) 1  ?    0   ? : 1 : -;
		? (x0) 0  0    ?   ? : ? : -;
		? (x0) 1  ?    0   ? : ? : -;
		? (x0) ?  0    0   x : ? : -;
		? (0x) 0  0    ?   ? : 0 : -;
		? (0x) 1  ?    0   ? : 1 : -;
		? (01) 0  0    ?   ? : ? : 0;
		? (01) 1  ?    0   ? : ? : 1;
		? (10) ?  0    ?   ? : ? : -;
		? (10) ?  ?    0   ? : ? : -;
		?  b   *  0    ?   ? : ? : -;
		?  b   *  ?    0   ? : ? : -;
		?  ?   ?  ?    ?   * : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_r_
`else
`define _udp_def_altos_latch_r_
primitive altos_latch_r (q, v, clk, d, r);
	output q;
	reg q;
	input v, clk, d, r;

	table
		* ? ? ? : ? : x;
		? ? ? 1 : ? : 0;
		? 0 ? 0 : ? : -;
		? 0 ? x : 0 : -;
		? 1 0 0 : ? : 0;
		? 1 0 x : ? : 0;
		? 1 1 0 : ? : 1;
		? x 0 0 : 0 : -;
		? x 0 x : 0 : -;
		? x 1 0 : 1 : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_s_
`else
`define _udp_def_altos_latch_s_
primitive altos_latch_s (q, v, clk, d, s);
	output q;
	reg q;
	input v, clk, d, s;

	table
		* ? ? ? : ? : x;
		? ? ? 1 : ? : 1;
		? 0 ? 0 : ? : -;
		? 0 ? x : 1 : -;
		? 1 1 0 : ? : 1;
		? 1 1 x : ? : 1;
		? 1 0 0 : ? : 0;
		? x 1 0 : 1 : -;
		? x 1 x : 1 : -;
		? x 0 0 : 0 : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_sr_0
`else
`define _udp_def_altos_latch_sr_0
primitive altos_latch_sr_0 (q, v, clk, d, s, r);
	output q;
	reg q;
	input v, clk, d, s, r;

	table
		* ? ? ? ? : ? : x;
		? 1 1 ? 0 : ? : 1;
		? 1 0 0 ? : ? : 0;
		? ? ? 1 0 : ? : 1;
		? ? ? ? 1 : ? : 0;
		? 0 * ? ? : ? : -;
		? 0 ? * 0 : 1 : 1;
		? 0 ? 0 * : 0 : 0;
		? * 1 ? 0 : 1 : 1;
		? * 0 0 ? : 0 : 0;
		? ? 1 * 0 : 1 : 1;
		? ? 0 0 * : 0 : 0;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_sr_1
`else
`define _udp_def_altos_latch_sr_1
primitive altos_latch_sr_1 (q, v, clk, d, s, r);
	output q;
	reg q;
	input v, clk, d, s, r;

	table
		* ? ? ? ? : ? : x;
		? 1 1 ? 0 : ? : 1;
		? 1 0 0 ? : ? : 0;
		? ? ? 1 ? : ? : 1;
		? ? ? 0 1 : ? : 0;
		? 0 * ? ? : ? : -;
		? 0 ? * 0 : 1 : 1;
		? 0 ? 0 * : 0 : 0;
		? * 1 ? 0 : 1 : 1;
		? * 0 0 ? : 0 : 0;
		? ? 1 * 0 : 1 : 1;
		? ? 0 0 * : 0 : 0;
	endtable
endprimitive
`endif
