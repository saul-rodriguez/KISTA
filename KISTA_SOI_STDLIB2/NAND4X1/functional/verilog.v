//Verilog HDL for "KISTA_SOI_STDLIB2", "NAND4X1" "functional"


module NAND4X1 (A, B, C, D, Y);
	input A, B, C, D;
	output Y;

	assign Y = ~(A & B & C & D);

endmodule