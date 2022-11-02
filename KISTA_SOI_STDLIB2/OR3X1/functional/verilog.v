//Verilog HDL for "KISTA_SOI_STDLIB2", "OR3X1" "functional"


module OR3X1 (A, B, C, Y );
	input A, B, C;
	output Y;

	assign Y = A | B | C;

endmodule
