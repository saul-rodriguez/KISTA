//Verilog HDL for "KISTA_SOI_STDLIB2", "DEMUX2X1" "functional"


module DMX2X1 (X, S0, A, B);
	input X, S0;
	output A, B;

	assign A = (~S0) & X;
	assign B = S0 & X;

endmodule
