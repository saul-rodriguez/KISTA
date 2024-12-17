//Verilog HDL for "KISTA_SOI_STDLIB2", "XOR2X1" "functional"


`timescale 1ns/10ps
`celldefine
module XOR2X1 (Y, A, B);
	output Y;
	input A, B;

	assign	Y = A ^ B;

endmodule
`endcelldefine
