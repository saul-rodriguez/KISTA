//Verilog HDL for "KISTA_SOI_STDLIB2", "AND3X1" "functional"


module AND3X1 (A, B, C, Y, YN );
	input A, B, C;
	output Y, YN;

	assign Y = A & B & C;
	assign YN = ~(A & B & C);

endmodule
