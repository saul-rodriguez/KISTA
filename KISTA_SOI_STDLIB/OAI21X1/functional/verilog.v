//Verilog HDL for "KISTA_SOI_STDLIB", "OAI21X1" "functional"


module OAI21X1 (Y, A0, A1, B0);
	output Y;
	input A0, A1, B0;

	assign Y = ~((A0 | A1) & B0);
endmodule
