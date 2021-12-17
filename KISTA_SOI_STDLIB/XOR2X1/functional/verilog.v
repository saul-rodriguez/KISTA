//Verilog HDL for "KISTA_SOI_STDLIB", "XOR2X1" "functional"

module XOR2X1 (Y, A, B);
	output Y;
	input A, B;

	assign	Y = A ^ B;

endmodule
