//Verilog HDL for "KISTA_SOI_STDLIB2", "AOI" "functional"


module AOI21X1 (A, B, C, Y );
	input A, B, C;
	output Y;

	assign Y = ~((A & B) | C);

endmodule
