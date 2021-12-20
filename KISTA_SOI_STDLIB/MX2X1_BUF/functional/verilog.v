//Verilog HDL for "KISTA_SOI_STDLIB", "MX2X1" "functional"


module MX2X1_BUF (Y, A, B, S0);
	output Y;
	input A, B, S0;

	assign Y = ((~S0) & A) + (S0 & B );

endmodule
