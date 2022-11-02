//Verilog HDL for "KISTA_SOI_STDLIB2", "OR2X1" "functional"


module OR2X1 (A, B, Y );
	input A, B;
	output Y;

	assign Y = A | B;

endmodule
