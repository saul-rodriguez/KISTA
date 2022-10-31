//Verilog HDL for "KISTA_SOI_STDLIB2", "OAI" "functional"


module OAI21X1 (A, B, C, Y);
	input A, B, C;
	output Y;

	assign Y = ~((A | B) & C);

endmodule
