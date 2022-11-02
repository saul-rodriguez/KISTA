//Verilog HDL for "KISTA_SOI_STDLIB2", "OR4X1" "functional"


module OR4X1 (A, B, C, D, Y );
	input A, B, C, D;
	output Y;

	assign Y = A | B | C | D;

endmodule
