//Verilog HDL for "KISTA_SOI_STDLIB", "NAND3X1" "functional"


module NAND3X1 (Y, A, B, C);
	output Y;
	input A, B, C;

	assign Y = ~( A & B & C );

endmodule
