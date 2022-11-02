//Verilog HDL for "KISTA_SOI_STDLIB2", "AdderHalf" "functional"


module ADDHX1 (A, B, COUT, SUM );
	input A, B;
	output SUM, COUT;

	assign {COUT, SUM} = A + B;
endmodule
