//Verilog HDL for "KISTA_SOI_STDLIB", "NOR2X1" "functional"

// type:  
`timescale 1ns/10ps
`celldefine
module NOR2X1 (Y, A, B);
	output Y;
	input A, B;

	// Function
	wire int_fwire_0;

	or (int_fwire_0, A, B);
	not (Y, int_fwire_0);

	// Timing
	specify
		(A => Y) = 0;
		(B => Y) = 0;
	endspecify
endmodule
`endcelldefine

