//Verilog HDL for "KISTA_SOI_STDLIB2", "MUX2X1" "functional"


module MX2X1 (Y, A, B, S0);
	output Y;
	input A, B, S0;

	assign Y = ((~S0) & A) | (S0 & B );

endmodule
