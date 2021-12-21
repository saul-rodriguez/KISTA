// Verilog for library KISTA_SOI_STDLIB_ECSM_TT_del created by Liberate 17.1.2.229 on Tue Dec 21 21:39:50 CET 2021 for SDF version 2.1

// type: AOI21X1 
`timescale 1ns/10ps
`celldefine
module AOI21X1 (Y, A0, A1, B0);
	output Y;
	input A0, A1, B0;

	// Function
	wire A0__bar, A1__bar, B0__bar;
	wire int_fwire_0, int_fwire_1;

	not (B0__bar, B0);
	not (A1__bar, A1);
	and (int_fwire_0, A1__bar, B0__bar);
	not (A0__bar, A0);
	and (int_fwire_1, A0__bar, B0__bar);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		specparam tpd_A0_Y_r = 0.398297:1.557565:3.42912;
		specparam tpd_A0_Y_f = 0.203721:0.909264:2.17854;
		specparam tpd_A1_Y_r = 0.44973:1.615156:3.47099;
		specparam tpd_A1_Y_f = 0.142471:0.835139:1.9605;
		specparam tpd_B0_Y_cond0_r = 0.530461:1.595025:3.3505;
		specparam tpd_B0_Y_cond0_f = 0.431865:1.281951:2.71592;
		specparam tpd_B0_Y_cond1_r = 0.462188:1.513206:3.27854;
		specparam tpd_B0_Y_cond1_f = 0.382967:1.232301:2.67819;
		specparam tpd_B0_Y_cond2_r = 0.426321:1.326310:2.80986;
		specparam tpd_B0_Y_cond2_f = 0.480997:1.347705:2.77804;
		specparam tpd_B0_Y_r = 0.530461:1.595025:3.3505;
		specparam tpd_B0_Y_f = 0.480997:1.347705:2.77804;

		(A0 => Y) = ( tpd_A0_Y_r , tpd_A0_Y_f );
		(A1 => Y) = ( tpd_A1_Y_r , tpd_A1_Y_f );
		if ((A0 & ~A1))
			(B0 => Y) = ( tpd_B0_Y_cond0_r , tpd_B0_Y_cond0_f );
		if ((~A0 & A1))
			(B0 => Y) = ( tpd_B0_Y_cond1_r , tpd_B0_Y_cond1_f );
		if ((~A0 & ~A1))
			(B0 => Y) = ( tpd_B0_Y_cond2_r , tpd_B0_Y_cond2_f );
		ifnone (B0 => Y) = ( tpd_B0_Y_r , tpd_B0_Y_f );
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
		specparam tpd_A_Y_r = 0.511347:1.064223:1.88831;
		specparam tpd_A_Y_f = 0.61746:1.345088:2.3014;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
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
	wire CK__bar, D__bar;


	// Additional timing gates
	and (adacond7, D, RN, SN);
	not (D__bar, D);
	and (adacond8, D__bar, RN, SN);
	and (adacond0, RN, SN);
	and (adacond1, D, SN);
	and (adacond2, CK, SN);
	not (CK__bar, CK);
	and (adacond3, CK__bar, SN);
	and (adacond4, D__bar, RN);
	and (adacond5, CK, RN);
	and (adacond6, CK__bar, RN);

	specify
		specparam tpd_CK_Q_posedge_r = 2.94126:4.005537:5.63108;
		specparam tpd_CK_Q_posedge_f = 3.05452:3.969960:5.27764;
		specparam tpd_RN_Q_cond0_negedge_r = 2.91912:4.062928:5.65197;
		specparam tpd_RN_Q_cond0_negedge_f = 2.91912:4.062928:5.65197;
		specparam tpd_RN_Q_cond1_negedge_r = 2.67272:3.781774:5.33107;
		specparam tpd_RN_Q_cond1_negedge_f = 2.67272:3.781774:5.33107;
		specparam tpd_RN_Q_cond2_negedge_r = 2.68748:3.797636:5.34898;
		specparam tpd_RN_Q_cond2_negedge_f = 2.68748:3.797636:5.34898;
		specparam tpd_RN_Q_negedge_r = 2.91912:4.062928:5.65197;
		specparam tpd_RN_Q_negedge_f = 2.91912:4.062928:5.65197;
		specparam tpd_SN_Q_cond3_posedge_r = 2.32104:3.179704:4.47292;
		specparam tpd_SN_Q_cond3_posedge_f = 2.32104:3.179704:4.47292;
		specparam tpd_SN_Q_cond4_posedge_r = 2.1674:2.913024:4.08091;
		specparam tpd_SN_Q_cond4_posedge_f = 2.1674:2.913024:4.08091;
		specparam tpd_SN_Q_cond5_posedge_r = 2.17029:2.915452:4.08273;
		specparam tpd_SN_Q_cond5_posedge_f = 2.17029:2.915452:4.08273;
		specparam tpd_SN_Q_posedge_r = 2.32104:3.179704:4.47292;
		specparam tpd_SN_Q_posedge_f = 2.32104:3.179704:4.47292;
		specparam tpd_SN_Q_cond6_negedge_r = 1.85692:3.160291:5.08113;
		specparam tpd_SN_Q_cond6_negedge_f = 1.85692:3.160291:5.08113;
		specparam tpd_SN_Q_cond3_negedge_r = 1.91151:3.226009:5.15791;
		specparam tpd_SN_Q_cond3_negedge_f = 1.91151:3.226009:5.15791;
		specparam tpd_SN_Q_cond7_negedge_r = 2.09992:3.221368:4.95858;
		specparam tpd_SN_Q_cond7_negedge_f = 2.09992:3.221368:4.95858;
		specparam tpd_SN_Q_cond4_negedge_r = 2.17269:3.304063:5.04891;
		specparam tpd_SN_Q_cond4_negedge_f = 2.17269:3.304063:5.04891;
		specparam tpd_SN_Q_cond8_negedge_r = 2.09187:3.211227:4.94569;
		specparam tpd_SN_Q_cond8_negedge_f = 2.09187:3.211227:4.94569;
		specparam tpd_SN_Q_cond5_negedge_r = 2.17387:3.305061:5.05002;
		specparam tpd_SN_Q_cond5_negedge_f = 2.17387:3.305061:5.05002;
		specparam tpd_SN_Q_negedge_r = 1.91151:3.226009:5.15791;
		specparam tpd_SN_Q_negedge_f = 1.91151:3.226009:5.15791;
		specparam tpd_CK_QN_posedge_r = 3.41138:4.396878:5.97741;
		specparam tpd_CK_QN_posedge_f = 3.26684:4.058146:5.2895;
		specparam tpd_RN_QN_cond0_negedge_r = 3.27632:4.478424:6.32437;
		specparam tpd_RN_QN_cond0_negedge_f = 3.27632:4.478424:6.32437;
		specparam tpd_RN_QN_cond1_negedge_r = 3.02132:4.212782:6.04151;
		specparam tpd_RN_QN_cond1_negedge_f = 3.02132:4.212782:6.04151;
		specparam tpd_RN_QN_cond2_negedge_r = 3.03588:4.228927:6.06009;
		specparam tpd_RN_QN_cond2_negedge_f = 3.03588:4.228927:6.06009;
		specparam tpd_RN_QN_negedge_r = 3.27632:4.478424:6.32437;
		specparam tpd_RN_QN_negedge_f = 3.27632:4.478424:6.32437;
		specparam tpd_SN_QN_cond6_negedge_r = 2.17998:3.218696:4.75042;
		specparam tpd_SN_QN_cond6_negedge_f = 2.17998:3.218696:4.75042;
		specparam tpd_SN_QN_cond3_negedge_r = 2.23743:3.279894:4.81816;
		specparam tpd_SN_QN_cond3_negedge_f = 2.23743:3.279894:4.81816;
		specparam tpd_SN_QN_cond7_negedge_r = 2.41994:3.284754:4.63701;
		specparam tpd_SN_QN_cond7_negedge_f = 2.41994:3.284754:4.63701;
		specparam tpd_SN_QN_cond4_negedge_r = 2.49685:3.359504:4.71104;
		specparam tpd_SN_QN_cond4_negedge_f = 2.49685:3.359504:4.71104;
		specparam tpd_SN_QN_cond8_negedge_r = 2.41218:3.273900:4.6236;
		specparam tpd_SN_QN_cond8_negedge_f = 2.41218:3.273900:4.6236;
		specparam tpd_SN_QN_cond5_negedge_r = 2.49804:3.360395:4.71139;
		specparam tpd_SN_QN_cond5_negedge_f = 2.49804:3.360395:4.71139;
		specparam tpd_SN_QN_negedge_r = 2.23743:3.279894:4.81816;
		specparam tpd_SN_QN_negedge_f = 2.23743:3.279894:4.81816;
		specparam tpd_SN_QN_cond3_posedge_r = 2.67865:3.595887:5.14706;
		specparam tpd_SN_QN_cond3_posedge_f = 2.67865:3.595887:5.14706;
		specparam tpd_SN_QN_cond4_posedge_r = 2.51604:3.345688:4.79339;
		specparam tpd_SN_QN_cond4_posedge_f = 2.51604:3.345688:4.79339;
		specparam tpd_SN_QN_cond5_posedge_r = 2.51896:3.347972:4.79562;
		specparam tpd_SN_QN_cond5_posedge_f = 2.51896:3.347972:4.79562;
		specparam tpd_SN_QN_posedge_r = 2.67865:3.595887:5.14706;
		specparam tpd_SN_QN_posedge_f = 2.67865:3.595887:5.14706;
		specparam tpw_CK_adacond7_posedge = 1.65554:2.109300:3.00049;
		specparam tpw_CK_adacond7_negedge = 1.65554:2.109300:3.00049;
		specparam tpw_CK_adacond8_posedge = 1.47681:1.992513:3.00049;
		specparam tpw_CK_adacond8_negedge = 1.47681:1.992513:3.00049;
		specparam tsetup_D_CK_adacond0_posedge_adacond0_posedge = 0.191404:0.293915:0.44062;
		specparam thold_D_CK_adacond0_posedge_adacond0_posedge = -0.275984:-0.174206:-0.107794;
		specparam tsetup_D_CK_adacond0_negedge_adacond0_posedge = 0.191404:0.293915:0.44062;
		specparam thold_D_CK_adacond0_negedge_adacond0_posedge = -0.275984:-0.174206:-0.107794;
		specparam tsetup_D_CK_posedge_posedge = 0.191404:0.293915:0.44062;
		specparam thold_D_CK_posedge_posedge = -0.275984:-0.174206:-0.107794;
		specparam tsetup_D_CK_negedge_posedge = 0.191404:0.293915:0.44062;
		specparam thold_D_CK_negedge_posedge = -0.275984:-0.174206:-0.107794;
		specparam trecovery_RN_CK_adacond1_posedge_adacond1_posedge = -0.0984918:0.200909:0.492194;
		specparam trecovery_RN_CK_posedge_posedge = -0.0984918:0.200909:0.492194;
		specparam tremoval_RN_CK_adacond1_posedge_adacond1_posedge = -0.425864:-0.138848:0.158378;
		specparam tremoval_RN_CK_posedge_posedge = -0.425864:-0.138848:0.158378;
		specparam tpw_RN_adacond2_negedge = 1.63567:2.192953:3.00049;
		specparam tpw_RN_adacond3_negedge = 1.52045:2.114500:3.00049;
		specparam trecovery_SN_CK_adacond4_posedge_adacond4_posedge = -1.0038:-0.787003:-0.563761;
		specparam trecovery_SN_CK_posedge_posedge = -1.0038:-0.787003:-0.563761;
		specparam tremoval_SN_CK_adacond4_posedge_adacond4_posedge = 0.672867:0.860160:1.06191;
		specparam tremoval_SN_CK_posedge_posedge = 0.672867:0.860160:1.06191;
		specparam tsetup_SN_RN_CK_posedge_CK_posedge = 0.995554:1.145258:1.27952;
		specparam thold_SN_RN_CK_posedge_CK_posedge = -1.12646:-0.971173:-0.829177;
		specparam tsetup_SN_RN_NTB_CK_posedge_NTB_CK_posedge = 0.936341:0.996022:1.05938;
		specparam thold_SN_RN_NTB_CK_posedge_NTB_CK_posedge = -0.996112:-0.928975:-0.871172;
		specparam tsetup_SN_RN_posedge_posedge = 0.995554:1.145258:1.27952;
		specparam thold_SN_RN_posedge_posedge = -0.996112:-0.915736:-0.829177;
		specparam tpw_SN_adacond5_negedge = 1.18521:2.020337:3.00049;
		specparam tpw_SN_adacond6_negedge = 1.47334:2.119310:3.00049;

		(posedge CK => (Q+:D)) = ( tpd_CK_Q_posedge_r , tpd_CK_Q_posedge_f );
		if ((CK & SN))
			(negedge RN => (Q+:1'b0)) = ( tpd_RN_Q_cond0_negedge_r , tpd_RN_Q_cond0_negedge_f );
		if ((~CK & D & SN))
			(negedge RN => (Q+:1'b0)) = ( tpd_RN_Q_cond1_negedge_r , tpd_RN_Q_cond1_negedge_f );
		if ((~CK & ~D & SN))
			(negedge RN => (Q+:1'b0)) = ( tpd_RN_Q_cond2_negedge_r , tpd_RN_Q_cond2_negedge_f );
		ifnone (negedge RN => (Q+:1'b0)) = ( tpd_RN_Q_negedge_r , tpd_RN_Q_negedge_f );
		if ((CK & ~RN))
			(posedge SN => (Q+:1'b0)) = ( tpd_SN_Q_cond3_posedge_r , tpd_SN_Q_cond3_posedge_f );
		if ((~CK & D & ~RN))
			(posedge SN => (Q+:1'b0)) = ( tpd_SN_Q_cond4_posedge_r , tpd_SN_Q_cond4_posedge_f );
		if ((~CK & ~D & ~RN))
			(posedge SN => (Q+:1'b0)) = ( tpd_SN_Q_cond5_posedge_r , tpd_SN_Q_cond5_posedge_f );
		ifnone (posedge SN => (Q+:1'b0)) = ( tpd_SN_Q_posedge_r , tpd_SN_Q_posedge_f );
		if ((CK & RN))
			(negedge SN => (Q+:1'b1)) = ( tpd_SN_Q_cond6_negedge_r , tpd_SN_Q_cond6_negedge_f );
		if ((CK & ~RN))
			(negedge SN => (Q+:1'b1)) = ( tpd_SN_Q_cond3_negedge_r , tpd_SN_Q_cond3_negedge_f );
		if ((~CK & D & RN))
			(negedge SN => (Q+:1'b1)) = ( tpd_SN_Q_cond7_negedge_r , tpd_SN_Q_cond7_negedge_f );
		if ((~CK & D & ~RN))
			(negedge SN => (Q+:1'b1)) = ( tpd_SN_Q_cond4_negedge_r , tpd_SN_Q_cond4_negedge_f );
		if ((~CK & ~D & RN))
			(negedge SN => (Q+:1'b1)) = ( tpd_SN_Q_cond8_negedge_r , tpd_SN_Q_cond8_negedge_f );
		if ((~CK & ~D & ~RN))
			(negedge SN => (Q+:1'b1)) = ( tpd_SN_Q_cond5_negedge_r , tpd_SN_Q_cond5_negedge_f );
		ifnone (negedge SN => (Q+:1'b1)) = ( tpd_SN_Q_negedge_r , tpd_SN_Q_negedge_f );
		(posedge CK => (QN-:D)) = ( tpd_CK_QN_posedge_r , tpd_CK_QN_posedge_f );
		if ((CK & SN))
			(negedge RN => (QN-:1'b0)) = ( tpd_RN_QN_cond0_negedge_r , tpd_RN_QN_cond0_negedge_f );
		if ((~CK & D & SN))
			(negedge RN => (QN-:1'b0)) = ( tpd_RN_QN_cond1_negedge_r , tpd_RN_QN_cond1_negedge_f );
		if ((~CK & ~D & SN))
			(negedge RN => (QN-:1'b0)) = ( tpd_RN_QN_cond2_negedge_r , tpd_RN_QN_cond2_negedge_f );
		ifnone (negedge RN => (QN-:1'b0)) = ( tpd_RN_QN_negedge_r , tpd_RN_QN_negedge_f );
		if ((CK & RN))
			(negedge SN => (QN-:1'b1)) = ( tpd_SN_QN_cond6_negedge_r , tpd_SN_QN_cond6_negedge_f );
		if ((CK & ~RN))
			(negedge SN => (QN-:1'b1)) = ( tpd_SN_QN_cond3_negedge_r , tpd_SN_QN_cond3_negedge_f );
		if ((~CK & D & RN))
			(negedge SN => (QN-:1'b1)) = ( tpd_SN_QN_cond7_negedge_r , tpd_SN_QN_cond7_negedge_f );
		if ((~CK & D & ~RN))
			(negedge SN => (QN-:1'b1)) = ( tpd_SN_QN_cond4_negedge_r , tpd_SN_QN_cond4_negedge_f );
		if ((~CK & ~D & RN))
			(negedge SN => (QN-:1'b1)) = ( tpd_SN_QN_cond8_negedge_r , tpd_SN_QN_cond8_negedge_f );
		if ((~CK & ~D & ~RN))
			(negedge SN => (QN-:1'b1)) = ( tpd_SN_QN_cond5_negedge_r , tpd_SN_QN_cond5_negedge_f );
		ifnone (negedge SN => (QN-:1'b1)) = ( tpd_SN_QN_negedge_r , tpd_SN_QN_negedge_f );
		if ((CK & ~RN))
			(posedge SN => (QN-:1'b0)) = ( tpd_SN_QN_cond3_posedge_r , tpd_SN_QN_cond3_posedge_f );
		if ((~CK & D & ~RN))
			(posedge SN => (QN-:1'b0)) = ( tpd_SN_QN_cond4_posedge_r , tpd_SN_QN_cond4_posedge_f );
		if ((~CK & ~D & ~RN))
			(posedge SN => (QN-:1'b0)) = ( tpd_SN_QN_cond5_posedge_r , tpd_SN_QN_cond5_posedge_f );
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
		$setuphold (posedge RN &&& CK, posedge SN &&& CK, 
			 tsetup_SN_RN_CK_posedge_CK_posedge, 
			 thold_SN_RN_CK_posedge_CK_posedge, notifier,,, delayed_RN, delayed_SN);
		$setuphold (posedge RN &&& ~CK, posedge SN &&& ~CK, 
			 tsetup_SN_RN_NTB_CK_posedge_NTB_CK_posedge, 
			 thold_SN_RN_NTB_CK_posedge_NTB_CK_posedge, notifier,,, delayed_RN, delayed_SN);
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
		$recovery (posedge SN &&& adacond4, posedge CK &&& adacond4, 
			 trecovery_SN_CK_adacond4_posedge_adacond4_posedge, notifier);
		$recovery (posedge SN, posedge CK, 
			 trecovery_SN_CK_posedge_posedge, notifier);
		$hold (posedge CK &&& adacond4, posedge SN &&& adacond4, 
			 tremoval_SN_CK_adacond4_posedge_adacond4_posedge, notifier);
		$hold (posedge CK, posedge SN, 
			 tremoval_SN_CK_posedge_posedge, notifier);
		$width (posedge CK &&& adacond7, tpw_CK_adacond7_posedge, 0, notifier);
		$width (negedge CK &&& adacond7, tpw_CK_adacond7_negedge, 0, notifier);
		$width (posedge CK &&& adacond8, tpw_CK_adacond8_posedge, 0, notifier);
		$width (negedge CK &&& adacond8, tpw_CK_adacond8_negedge, 0, notifier);
		$width (negedge RN &&& adacond2, tpw_RN_adacond2_negedge, 0, notifier);
		$width (negedge RN &&& adacond3, tpw_RN_adacond3_negedge, 0, notifier);
		$width (negedge SN &&& adacond5, tpw_SN_adacond5_negedge, 0, notifier);
		$width (negedge SN &&& adacond6, tpw_SN_adacond6_negedge, 0, notifier);
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
		specparam tpd_CK_Q_posedge_r = 2.74814:3.835205:5.48022;
		specparam tpd_CK_Q_posedge_f = 2.83931:3.753917:5.06303;
		specparam tpd_CK_QN_posedge_r = 3.21141:4.194801:5.7694;
		specparam tpd_CK_QN_posedge_f = 3.09435:3.890124:5.12493;
		specparam tpw_CK_D_posedge = 1.42995:1.976893:3.00049;
		specparam tpw_CK_D_negedge = 1.42995:1.976893:3.00049;
		specparam tpw_CK_NTB_D_posedge = 1.26593:1.922220:3.00049;
		specparam tpw_CK_NTB_D_negedge = 1.26593:1.922220:3.00049;
		specparam tsetup_D_CK_posedge_posedge = 0.133006:0.195828:0.295749;
		specparam thold_D_CK_posedge_posedge = -0.217757:-0.141601:-0.0912666;
		specparam tsetup_D_CK_negedge_posedge = 0.133006:0.195828:0.295749;
		specparam thold_D_CK_negedge_posedge = -0.217757:-0.141601:-0.0912666;

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
		specparam tpd_A_Y_r = 0.299674:1.467395:3.38499;
		specparam tpd_A_Y_f = 0.118318:0.981820:2.48207;

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
		specparam tpd_A_Y_r = 0.0876324:0.574917:1.52773;
		specparam tpd_A_Y_f = 0.0987792:0.595036:1.57831;
		specparam tpd_B_Y_r = 0.0845742:0.571079:1.52267;
		specparam tpd_B_Y_f = 0.10158:0.597755:1.58223;
		specparam tpd_S0_Y_cond0_r = 0.378184:0.962022:1.96965;
		specparam tpd_S0_Y_cond0_f = 0.489234:1.284755:2.4414;
		specparam tpd_S0_Y_cond1_r = 0.365312:1.178157:2.38362;
		specparam tpd_S0_Y_cond1_f = 0.22939:0.869933:1.95971;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
		(B => Y) = ( tpd_B_Y_r , tpd_B_Y_f );
		if ((~A & B))
			(S0 => Y) = ( tpd_S0_Y_cond0_r , tpd_S0_Y_cond0_f );
		if ((A & ~B))
			(S0 => Y) = ( tpd_S0_Y_cond1_r , tpd_S0_Y_cond1_f );
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
		specparam tpd_A_Y_r = 0.41462:1.619043:3.51559;
		specparam tpd_A_Y_f = 0.0114863:0.763794:1.89927;
		specparam tpd_B_Y_r = 0.386368:1.580115:3.48978;
		specparam tpd_B_Y_f = 0.0764922:0.858791:2.14569;

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
		specparam tpd_A_Y_r = 0.404631:1.598569:3.50967;
		specparam tpd_A_Y_f = 0.181965:1.097187:2.68793;
		specparam tpd_B_Y_r = 0.460044:1.660802:3.5559;
		specparam tpd_B_Y_f = 0.181334:1.078599:2.55288;
		specparam tpd_C_Y_r = 0.493943:1.710816:3.60237;
		specparam tpd_C_Y_f = 0.16541:1.059819:2.42879;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
		(B => Y) = ( tpd_B_Y_r , tpd_B_Y_f );
		(C => Y) = ( tpd_C_Y_r , tpd_C_Y_f );
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
		specparam tpd_A_Y_r = 0.407382:1.455857:3.22709;
		specparam tpd_A_Y_f = 0.33632:1.176375:2.62903;
		specparam tpd_B_Y_r = 0.362606:1.500547:3.37671;
		specparam tpd_B_Y_f = 0.301506:1.104573:2.58178;

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
		specparam tpd_A_Y_r = 0.60613:1.624614:3.3232;
		specparam tpd_A_Y_f = 0.515416:1.418440:2.85488;
		specparam tpd_B_Y_r = 0.492062:1.542840:3.31779;
		specparam tpd_B_Y_f = 0.464933:1.319065:2.75195;
		specparam tpd_C_Y_r = 0.341042:1.445679:3.28306;
		specparam tpd_C_Y_f = 0.326733:1.149692:2.62581;

		(A => Y) = ( tpd_A_Y_r , tpd_A_Y_f );
		(B => Y) = ( tpd_B_Y_r , tpd_B_Y_f );
		(C => Y) = ( tpd_C_Y_r , tpd_C_Y_f );
	endspecify
endmodule
`endcelldefine

// type: OAI21X1 
`timescale 1ns/10ps
`celldefine
module OAI21X1 (Y, A0, A1, B0);
	output Y;
	input A0, A1, B0;

	// Function
	wire A0__bar, A1__bar, B0__bar;
	wire int_fwire_0;

	not (B0__bar, B0);
	not (A1__bar, A1);
	not (A0__bar, A0);
	and (int_fwire_0, A0__bar, A1__bar);
	or (Y, int_fwire_0, B0__bar);

	// Timing
	specify
		specparam tpd_A0_Y_r = 0.508959:1.585520:3.34095;
		specparam tpd_A0_Y_f = 0.330548:0.954970:2.06508;
		specparam tpd_A1_Y_r = 0.451249:1.621181:3.47916;
		specparam tpd_A1_Y_f = 0.143133:0.855752:1.98623;
		specparam tpd_B0_Y_cond0_r = 0.305132:1.070595:2.31477;
		specparam tpd_B0_Y_cond0_f = 0.128653:0.754192:1.8815;
		specparam tpd_B0_Y_cond1_r = 0.312984:1.083018:2.32856;
		specparam tpd_B0_Y_cond1_f = 0.313671:0.997105:2.24607;
		specparam tpd_B0_Y_cond2_r = 0.307864:1.071568:2.31757;
		specparam tpd_B0_Y_cond2_f = 0.179486:0.879884:2.15404;
		specparam tpd_B0_Y_r = 0.312984:1.083018:2.32856;
		specparam tpd_B0_Y_f = 0.313671:0.997105:2.24607;

		(A0 => Y) = ( tpd_A0_Y_r , tpd_A0_Y_f );
		(A1 => Y) = ( tpd_A1_Y_r , tpd_A1_Y_f );
		if ((A0 & A1))
			(B0 => Y) = ( tpd_B0_Y_cond0_r , tpd_B0_Y_cond0_f );
		if ((A0 & ~A1))
			(B0 => Y) = ( tpd_B0_Y_cond1_r , tpd_B0_Y_cond1_f );
		if ((~A0 & A1))
			(B0 => Y) = ( tpd_B0_Y_cond2_r , tpd_B0_Y_cond2_f );
		ifnone (B0 => Y) = ( tpd_B0_Y_r , tpd_B0_Y_f );
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
		specparam tpd_A_Y_NTB_B_r = 0.404114:1.454073:3.25523;
		specparam tpd_A_Y_NTB_B_f = 0.486104:1.271369:2.42522;
		specparam tpd_A_Y_B_r = 0.380264:1.178115:2.37467;
		specparam tpd_A_Y_B_f = 0.325234:1.222863:2.77838;
		specparam tpd_B_Y_NTB_A_r = 0.0882756:0.588445:1.5355;
		specparam tpd_B_Y_NTB_A_f = 0.0988436:0.597537:1.58151;
		specparam tpd_B_Y_A_r = 0.557482:1.928399:4.14901;
		specparam tpd_B_Y_A_f = 0.457649:1.436953:3.18049;

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
