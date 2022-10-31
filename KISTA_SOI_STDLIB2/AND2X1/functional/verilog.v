//Verilog HDL for "KISTA_SOI_STDLIB2", "AND2X1" "functional"


module AND2X1 (A, B, Y, YN );
	input A, B;
	output Y, YN;

	assign Y = A & B;
	assign YN = ~(A & B);

endmodule
