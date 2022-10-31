//Verilog HDL for "KISTA_SOI_STDLIB2", "Buf_1_3" "functional"


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
