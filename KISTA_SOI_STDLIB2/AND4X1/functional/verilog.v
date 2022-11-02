//Verilog HDL for "KISTA_SOI_STDLIB2", "AND4X1" "functional"


module AND4X1 (A, B, C, D, Y );
	input A, B, C, D;
	output Y;

	assign Y = A & B & C & D;

endmodule
