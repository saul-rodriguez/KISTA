// Verilog for library KISTA_SOI_STDLIB2_ECSM_TT created by Liberate 17.1.2.229 on Mon Oct 31 22:28:40 CET 2022 for SDF version 2.1

// type: ADDFX1 
`timescale 1ns/10ps
`celldefine
module ADDFX1 (COUT, SUM, A, B, CIN);
	output COUT, SUM;
	input A, B, CIN;

	// Function
	wire A__bar, B__bar, CIN__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6;

	and (int_fwire_0, B, CIN);
	and (int_fwire_1, A, CIN);
	and (int_fwire_2, A, B);
	or (COUT, int_fwire_2, int_fwire_1, int_fwire_0);
	not (B__bar, B);
	not (A__bar, A);
	and (int_fwire_3, A__bar, B__bar, CIN);
	not (CIN__bar, CIN);
	and (int_fwire_4, A__bar, B, CIN__bar);
	and (int_fwire_5, A, B__bar, CIN__bar);
	and (int_fwire_6, A, B, CIN);
	or (SUM, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3);

	// Timing
	specify
		if ((B & ~CIN))
			(A => COUT) = 0;
		if ((~B & CIN))
			(A => COUT) = 0;
		ifnone (A => COUT) = 0;
		if ((A & ~CIN))
			(B => COUT) = 0;
		if ((~A & CIN))
			(B => COUT) = 0;
		ifnone (B => COUT) = 0;
		if ((A & ~B))
			(CIN => COUT) = 0;
		if ((~A & B))
			(CIN => COUT) = 0;
		ifnone (CIN => COUT) = 0;
		if ((B & CIN))
			(A => SUM) = 0;
		if ((~B & ~CIN))
			(A => SUM) = 0;
		ifnone (A => SUM) = 0;
		if ((B & ~CIN))
			(A => SUM) = 0;
		if ((~B & CIN))
			(A => SUM) = 0;
		if ((A & CIN))
			(B => SUM) = 0;
		if ((~A & ~CIN))
			(B => SUM) = 0;
		ifnone (B => SUM) = 0;
		if ((A & ~CIN))
			(B => SUM) = 0;
		if ((~A & CIN))
			(B => SUM) = 0;
		if ((A & B))
			(CIN => SUM) = 0;
		if ((~A & ~B))
			(CIN => SUM) = 0;
		ifnone (CIN => SUM) = 0;
		if ((A & ~B))
			(CIN => SUM) = 0;
		if ((~A & B))
			(CIN => SUM) = 0;
	endspecify
endmodule
`endcelldefine

// type: ADDHX1 
`timescale 1ns/10ps
`celldefine
module ADDHX1 (COUT, SUM, A, B);
	output COUT, SUM;
	input A, B;

	// Function
	wire A__bar, B__bar, int_fwire_0;
	wire int_fwire_1;

	and (COUT, A, B);
	not (A__bar, A);
	and (int_fwire_0, A__bar, B);
	not (B__bar, B);
	and (int_fwire_1, A, B__bar);
	or (SUM, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(A => COUT) = 0;
		(B => COUT) = 0;
		if (~B)
			(A => SUM) = 0;
		if (B)
			(A => SUM) = 0;
		if (~A)
			(B => SUM) = 0;
		if (A)
			(B => SUM) = 0;
	endspecify
endmodule
`endcelldefine

// type: AND2X1 
`timescale 1ns/10ps
`celldefine
module AND2X1 (Y, A, B);
	output Y;
	input A, B;

	// Function
	and (Y, A, B);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type: AND3X1 
`timescale 1ns/10ps
`celldefine
module AND3X1 (Y, A, B, C);
	output Y;
	input A, B, C;

	// Function
	and (Y, A, B, C);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type: AND4X1 
`timescale 1ns/10ps
`celldefine
module AND4X1 (Y, A, B, C, D);
	output Y;
	input A, B, C, D;

	// Function
	and (Y, A, B, C, D);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
		(D => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type: AO21X1 
`timescale 1ns/10ps
`celldefine
module AO21X1 (Y, A, B, C);
	output Y;
	input A, B, C;

	// Function
	wire int_fwire_0;

	and (int_fwire_0, A, B);
	or (Y, int_fwire_0, C);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		if ((A & ~B))
			(C => Y) = 0;
		if ((~A & B))
			(C => Y) = 0;
		if ((~A & ~B))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
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
		(A => Y) = 0;
		(B => Y) = 0;
		if ((A & ~B))
			(C => Y) = 0;
		if ((~A & B))
			(C => Y) = 0;
		if ((~A & ~B))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
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
		(A => Y) = 0;
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
		(A => Y) = 0;
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
		(A => Y) = 0;
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
		(A => Y) = 0;
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
		(A => Y) = 0;
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
		(A => Y) = 0;
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
		(A => Y) = 0;
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
		(A => Y) = 0;
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
		(posedge CK => (Q+:D)) = 0;
		if ((CK & D))
			(negedge RN => (Q+:1'b0)) = 0;
		if ((CK & ~D))
			(negedge RN => (Q+:1'b0)) = 0;
		if ((~CK & D))
			(negedge RN => (Q+:1'b0)) = 0;
		if ((~CK & ~D))
			(negedge RN => (Q+:1'b0)) = 0;
		ifnone (negedge RN => (Q+:1'b0)) = 0;
		(posedge CK => (QN-:D)) = 0;
		if ((CK & D))
			(negedge RN => (QN-:1'b0)) = 0;
		if ((CK & ~D))
			(negedge RN => (QN-:1'b0)) = 0;
		if ((~CK & D))
			(negedge RN => (QN-:1'b0)) = 0;
		if ((~CK & ~D))
			(negedge RN => (QN-:1'b0)) = 0;
		ifnone (negedge RN => (QN-:1'b0)) = 0;
		$setuphold (posedge CK &&& RN, posedge D &&& RN, 0, 0, notifier,,, delayed_CK, delayed_D);
		$setuphold (posedge CK &&& RN, negedge D &&& RN, 0, 0, notifier,,, delayed_CK, delayed_D);
		$setuphold (posedge CK, posedge D, 0, 0, notifier,,, delayed_CK, delayed_D);
		$setuphold (posedge CK, negedge D, 0, 0, notifier,,, delayed_CK, delayed_D);
		$recovery (posedge RN &&& D, posedge CK &&& D, 0, notifier);
		$recovery (posedge RN, posedge CK, 0, notifier);
		$hold (posedge CK &&& D, posedge RN &&& D, 0, notifier);
		$hold (posedge CK, posedge RN, 0, notifier);
		$width (posedge CK &&& adacond4, 0, 0, notifier);
		$width (negedge CK &&& adacond4, 0, 0, notifier);
		$width (posedge CK &&& adacond5, 0, 0, notifier);
		$width (negedge CK &&& adacond5, 0, 0, notifier);
		$width (negedge RN &&& adacond0, 0, 0, notifier);
		$width (negedge RN &&& adacond1, 0, 0, notifier);
		$width (negedge RN &&& adacond2, 0, 0, notifier);
		$width (negedge RN &&& adacond3, 0, 0, notifier);
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
		(posedge CK => (Q+:D)) = 0;
		if ((CK & D & SN))
			(negedge RN => (Q+:1'b0)) = 0;
		if ((CK & ~D & SN))
			(negedge RN => (Q+:1'b0)) = 0;
		if ((~CK & D & SN))
			(negedge RN => (Q+:1'b0)) = 0;
		if ((~CK & ~D & SN))
			(negedge RN => (Q+:1'b0)) = 0;
		ifnone (negedge RN => (Q+:1'b0)) = 0;
		if ((CK & D & ~RN))
			(posedge SN => (Q+:1'b0)) = 0;
		if ((CK & ~D & ~RN))
			(posedge SN => (Q+:1'b0)) = 0;
		if ((~CK & D & ~RN))
			(posedge SN => (Q+:1'b0)) = 0;
		if ((~CK & ~D & ~RN))
			(posedge SN => (Q+:1'b0)) = 0;
		ifnone (posedge SN => (Q+:1'b0)) = 0;
		if ((CK & D & RN))
			(negedge SN => (Q+:1'b1)) = 0;
		if ((CK & D & ~RN))
			(negedge SN => (Q+:1'b1)) = 0;
		if ((CK & ~D & RN))
			(negedge SN => (Q+:1'b1)) = 0;
		if ((CK & ~D & ~RN))
			(negedge SN => (Q+:1'b1)) = 0;
		if ((~CK & D & RN))
			(negedge SN => (Q+:1'b1)) = 0;
		if ((~CK & D & ~RN))
			(negedge SN => (Q+:1'b1)) = 0;
		if ((~CK & ~D & RN))
			(negedge SN => (Q+:1'b1)) = 0;
		if ((~CK & ~D & ~RN))
			(negedge SN => (Q+:1'b1)) = 0;
		ifnone (negedge SN => (Q+:1'b1)) = 0;
		(posedge CK => (QN-:D)) = 0;
		if ((CK & D & SN))
			(negedge RN => (QN-:1'b0)) = 0;
		if ((CK & ~D & SN))
			(negedge RN => (QN-:1'b0)) = 0;
		if ((~CK & D & SN))
			(negedge RN => (QN-:1'b0)) = 0;
		if ((~CK & ~D & SN))
			(negedge RN => (QN-:1'b0)) = 0;
		ifnone (negedge RN => (QN-:1'b0)) = 0;
		if ((CK & D & RN))
			(negedge SN => (QN-:1'b1)) = 0;
		if ((CK & D & ~RN))
			(negedge SN => (QN-:1'b1)) = 0;
		if ((CK & ~D & RN))
			(negedge SN => (QN-:1'b1)) = 0;
		if ((CK & ~D & ~RN))
			(negedge SN => (QN-:1'b1)) = 0;
		if ((~CK & D & RN))
			(negedge SN => (QN-:1'b1)) = 0;
		if ((~CK & D & ~RN))
			(negedge SN => (QN-:1'b1)) = 0;
		if ((~CK & ~D & RN))
			(negedge SN => (QN-:1'b1)) = 0;
		if ((~CK & ~D & ~RN))
			(negedge SN => (QN-:1'b1)) = 0;
		ifnone (negedge SN => (QN-:1'b1)) = 0;
		if ((CK & D & ~RN))
			(posedge SN => (QN-:1'b0)) = 0;
		if ((CK & ~D & ~RN))
			(posedge SN => (QN-:1'b0)) = 0;
		if ((~CK & D & ~RN))
			(posedge SN => (QN-:1'b0)) = 0;
		if ((~CK & ~D & ~RN))
			(posedge SN => (QN-:1'b0)) = 0;
		ifnone (posedge SN => (QN-:1'b0)) = 0;
		$setuphold (posedge CK &&& adacond0, posedge D &&& adacond0, 0, 0, notifier,,, delayed_CK, delayed_D);
		$setuphold (posedge CK &&& adacond0, negedge D &&& adacond0, 0, 0, notifier,,, delayed_CK, delayed_D);
		$setuphold (posedge CK, posedge D, 0, 0, notifier,,, delayed_CK, delayed_D);
		$setuphold (posedge CK, negedge D, 0, 0, notifier,,, delayed_CK, delayed_D);
		$setuphold (posedge RN &&& adacond7, posedge SN &&& adacond7, 0, 0, notifier,,, delayed_RN, delayed_SN);
		$setuphold (posedge RN &&& adacond8, posedge SN &&& adacond8, 0, 0, notifier,,, delayed_RN, delayed_SN);
		$setuphold (posedge RN &&& adacond9, posedge SN &&& adacond9, 0, 0, notifier,,, delayed_RN, delayed_SN);
		$setuphold (posedge RN &&& adacond10, posedge SN &&& adacond10, 0, 0, notifier,,, delayed_RN, delayed_SN);
		$setuphold (posedge RN, posedge SN, 0, 0, notifier,,, delayed_RN, delayed_SN);
		$recovery (posedge RN &&& adacond1, posedge CK &&& adacond1, 0, notifier);
		$recovery (posedge RN, posedge CK, 0, notifier);
		$hold (posedge CK &&& adacond1, posedge RN &&& adacond1, 0, notifier);
		$hold (posedge CK, posedge RN, 0, notifier);
		$recovery (posedge SN &&& adacond6, posedge CK &&& adacond6, 0, notifier);
		$recovery (posedge SN, posedge CK, 0, notifier);
		$hold (posedge CK &&& adacond6, posedge SN &&& adacond6, 0, notifier);
		$hold (posedge CK, posedge SN, 0, notifier);
		$width (posedge CK &&& adacond15, 0, 0, notifier);
		$width (negedge CK &&& adacond15, 0, 0, notifier);
		$width (posedge CK &&& adacond16, 0, 0, notifier);
		$width (negedge CK &&& adacond16, 0, 0, notifier);
		$width (negedge RN &&& adacond2, 0, 0, notifier);
		$width (negedge RN &&& adacond3, 0, 0, notifier);
		$width (negedge RN &&& adacond4, 0, 0, notifier);
		$width (negedge RN &&& adacond5, 0, 0, notifier);
		$width (negedge SN &&& adacond11, 0, 0, notifier);
		$width (negedge SN &&& adacond12, 0, 0, notifier);
		$width (negedge SN &&& adacond13, 0, 0, notifier);
		$width (negedge SN &&& adacond14, 0, 0, notifier);
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
		(posedge CK => (Q+:D)) = 0;
		if ((CK & D))
			(negedge SN => (Q+:1'b1)) = 0;
		if ((CK & ~D))
			(negedge SN => (Q+:1'b1)) = 0;
		if ((~CK & D))
			(negedge SN => (Q+:1'b1)) = 0;
		if ((~CK & ~D))
			(negedge SN => (Q+:1'b1)) = 0;
		ifnone (negedge SN => (Q+:1'b1)) = 0;
		(posedge CK => (QN-:D)) = 0;
		if ((CK & D))
			(negedge SN => (QN-:1'b1)) = 0;
		if ((CK & ~D))
			(negedge SN => (QN-:1'b1)) = 0;
		if ((~CK & D))
			(negedge SN => (QN-:1'b1)) = 0;
		if ((~CK & ~D))
			(negedge SN => (QN-:1'b1)) = 0;
		ifnone (negedge SN => (QN-:1'b1)) = 0;
		$setuphold (posedge CK &&& SN, posedge D &&& SN, 0, 0, notifier,,, delayed_CK, delayed_D);
		$setuphold (posedge CK &&& SN, negedge D &&& SN, 0, 0, notifier,,, delayed_CK, delayed_D);
		$setuphold (posedge CK, posedge D, 0, 0, notifier,,, delayed_CK, delayed_D);
		$setuphold (posedge CK, negedge D, 0, 0, notifier,,, delayed_CK, delayed_D);
		$recovery (posedge SN &&& ~D, posedge CK &&& ~D, 0, notifier);
		$recovery (posedge SN, posedge CK, 0, notifier);
		$hold (posedge CK &&& ~D, posedge SN &&& ~D, 0, notifier);
		$hold (posedge CK, posedge SN, 0, notifier);
		$width (posedge CK &&& adacond4, 0, 0, notifier);
		$width (negedge CK &&& adacond4, 0, 0, notifier);
		$width (posedge CK &&& adacond5, 0, 0, notifier);
		$width (negedge CK &&& adacond5, 0, 0, notifier);
		$width (negedge SN &&& adacond0, 0, 0, notifier);
		$width (negedge SN &&& adacond1, 0, 0, notifier);
		$width (negedge SN &&& adacond2, 0, 0, notifier);
		$width (negedge SN &&& adacond3, 0, 0, notifier);
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
		(posedge CK => (Q+:D)) = 0;
		(posedge CK => (QN-:D)) = 0;
		$setuphold (posedge CK, posedge D, 0, 0, notifier,,, delayed_CK, delayed_D);
		$setuphold (posedge CK, negedge D, 0, 0, notifier,,, delayed_CK, delayed_D);
		$width (posedge CK &&& D, 0, 0, notifier);
		$width (negedge CK &&& D, 0, 0, notifier);
		$width (posedge CK &&& ~D, 0, 0, notifier);
		$width (negedge CK &&& ~D, 0, 0, notifier);
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
		(A => Y) = 0;
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
		(A => Y) = 0;
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
		(A => Y) = 0;
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
		(A => Y) = 0;
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
		(A => Y) = 0;
		(B => Y) = 0;
		if ((~A & B))
			(S0 => Y) = 0;
		if ((A & ~B))
			(S0 => Y) = 0;
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
		if ((B & C & D & ~S0 & ~S1))
			(A => Y) = 0;
		if ((B & C & ~D & ~S0 & ~S1))
			(A => Y) = 0;
		if ((B & ~C & D & ~S0 & ~S1))
			(A => Y) = 0;
		if ((B & ~C & ~D & ~S0 & ~S1))
			(A => Y) = 0;
		if ((~B & C & D & ~S0 & ~S1))
			(A => Y) = 0;
		if ((~B & C & ~D & ~S0 & ~S1))
			(A => Y) = 0;
		if ((~B & ~C & D & ~S0 & ~S1))
			(A => Y) = 0;
		if ((~B & ~C & ~D & ~S0 & ~S1))
			(A => Y) = 0;
		ifnone (A => Y) = 0;
		if ((A & C & D & S0 & ~S1))
			(B => Y) = 0;
		if ((A & C & ~D & S0 & ~S1))
			(B => Y) = 0;
		if ((A & ~C & D & S0 & ~S1))
			(B => Y) = 0;
		if ((A & ~C & ~D & S0 & ~S1))
			(B => Y) = 0;
		if ((~A & C & D & S0 & ~S1))
			(B => Y) = 0;
		if ((~A & C & ~D & S0 & ~S1))
			(B => Y) = 0;
		if ((~A & ~C & D & S0 & ~S1))
			(B => Y) = 0;
		if ((~A & ~C & ~D & S0 & ~S1))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
		if ((A & B & D & ~S0 & S1))
			(C => Y) = 0;
		if ((A & B & ~D & ~S0 & S1))
			(C => Y) = 0;
		if ((A & ~B & D & ~S0 & S1))
			(C => Y) = 0;
		if ((A & ~B & ~D & ~S0 & S1))
			(C => Y) = 0;
		if ((~A & B & D & ~S0 & S1))
			(C => Y) = 0;
		if ((~A & B & ~D & ~S0 & S1))
			(C => Y) = 0;
		if ((~A & ~B & D & ~S0 & S1))
			(C => Y) = 0;
		if ((~A & ~B & ~D & ~S0 & S1))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
		if ((A & B & C & S0 & S1))
			(D => Y) = 0;
		if ((A & B & ~C & S0 & S1))
			(D => Y) = 0;
		if ((A & ~B & C & S0 & S1))
			(D => Y) = 0;
		if ((A & ~B & ~C & S0 & S1))
			(D => Y) = 0;
		if ((~A & B & C & S0 & S1))
			(D => Y) = 0;
		if ((~A & B & ~C & S0 & S1))
			(D => Y) = 0;
		if ((~A & ~B & C & S0 & S1))
			(D => Y) = 0;
		if ((~A & ~B & ~C & S0 & S1))
			(D => Y) = 0;
		ifnone (D => Y) = 0;
		if ((A & B & ~C & D & S1))
			(S0 => Y) = 0;
		if ((A & ~B & ~C & D & S1))
			(S0 => Y) = 0;
		if ((~A & B & C & D & ~S1))
			(S0 => Y) = 0;
		if ((~A & B & C & ~D & ~S1))
			(S0 => Y) = 0;
		if ((~A & B & ~C & D))
			(S0 => Y) = 0;
		if ((~A & B & ~C & ~D & ~S1))
			(S0 => Y) = 0;
		if ((~A & ~B & ~C & D & S1))
			(S0 => Y) = 0;
		ifnone (S0 => Y) = 0;
		if ((A & B & C & ~D & S1))
			(S0 => Y) = 0;
		if ((A & ~B & C & D & ~S1))
			(S0 => Y) = 0;
		if ((A & ~B & C & ~D))
			(S0 => Y) = 0;
		if ((A & ~B & ~C & D & ~S1))
			(S0 => Y) = 0;
		if ((A & ~B & ~C & ~D & ~S1))
			(S0 => Y) = 0;
		if ((~A & B & C & ~D & S1))
			(S0 => Y) = 0;
		if ((~A & ~B & C & ~D & S1))
			(S0 => Y) = 0;
		if ((A & ~B & C & D & S0))
			(S1 => Y) = 0;
		if ((A & ~B & ~C & D & S0))
			(S1 => Y) = 0;
		if ((~A & B & C & D & ~S0))
			(S1 => Y) = 0;
		if ((~A & B & C & ~D & ~S0))
			(S1 => Y) = 0;
		if ((~A & ~B & C & D & S0))
			(S1 => Y) = 0;
		if ((~A & ~B & C & D & ~S0))
			(S1 => Y) = 0;
		if ((~A & ~B & C & ~D & ~S0))
			(S1 => Y) = 0;
		if ((~A & ~B & ~C & D & S0))
			(S1 => Y) = 0;
		ifnone (S1 => Y) = 0;
		if ((A & B & C & ~D & S0))
			(S1 => Y) = 0;
		if ((A & B & ~C & D & ~S0))
			(S1 => Y) = 0;
		if ((A & B & ~C & ~D & S0))
			(S1 => Y) = 0;
		if ((A & B & ~C & ~D & ~S0))
			(S1 => Y) = 0;
		if ((A & ~B & ~C & D & ~S0))
			(S1 => Y) = 0;
		if ((A & ~B & ~C & ~D & ~S0))
			(S1 => Y) = 0;
		if ((~A & B & C & ~D & S0))
			(S1 => Y) = 0;
		if ((~A & B & ~C & ~D & S0))
			(S1 => Y) = 0;
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
		(A => Y) = 0;
		(B => Y) = 0;
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
		(A => Y) = 0;
		(B => Y) = 0;
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
		(A => Y) = 0;
		(B => Y) = 0;
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
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
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
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
		(D => Y) = 0;
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
		(A => Y) = 0;
		(B => Y) = 0;
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
		(A => Y) = 0;
		(B => Y) = 0;
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
		(A => Y) = 0;
		(B => Y) = 0;
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
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
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
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
		(D => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type: OA21X1 
`timescale 1ns/10ps
`celldefine
module OA21X1 (Y, A, B, C);
	output Y;
	input A, B, C;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, B, C);
	and (int_fwire_1, A, C);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		if ((A & B))
			(C => Y) = 0;
		if ((A & ~B))
			(C => Y) = 0;
		if ((~A & B))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
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
		(A => Y) = 0;
		(B => Y) = 0;
		if ((A & B))
			(C => Y) = 0;
		if ((A & ~B))
			(C => Y) = 0;
		if ((~A & B))
			(C => Y) = 0;
		ifnone (C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type: OR2X1 
`timescale 1ns/10ps
`celldefine
module OR2X1 (Y, A, B);
	output Y;
	input A, B;

	// Function
	or (Y, A, B);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type: OR3X1 
`timescale 1ns/10ps
`celldefine
module OR3X1 (Y, A, B, C);
	output Y;
	input A, B, C;

	// Function
	or (Y, A, B, C);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
	endspecify
endmodule
`endcelldefine

// type: OR4X1 
`timescale 1ns/10ps
`celldefine
module OR4X1 (Y, A, B, C, D);
	output Y;
	input A, B, C, D;

	// Function
	or (Y, A, B, C, D);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
		(C => Y) = 0;
		(D => Y) = 0;
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
		if (B)
			(A => Y) = 0;
		if (~B)
			(A => Y) = 0;
		if (A)
			(B => Y) = 0;
		if (~A)
			(B => Y) = 0;
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
		if (~B)
			(A => Y) = 0;
		if (B)
			(A => Y) = 0;
		if (~A)
			(B => Y) = 0;
		if (A)
			(B => Y) = 0;
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
