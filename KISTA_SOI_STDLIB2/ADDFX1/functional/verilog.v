//Verilog HDL for "KISTA_SOI_STDLIB2", "AdderFull" "functional"


module ADDFX1 ( A,B, CIN, SUM, COUT);
	input A ,B, CIN;
	output SUM, COUT;

	assign {COUT, SUM} = A + B + CIN;

endmodule
