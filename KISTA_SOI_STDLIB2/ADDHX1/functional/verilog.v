//Verilog HDL for "KISTA_SOI_STDLIB2", "AdderHalf" "functional"


module ADDHX1 (a, b, cout, sum );
	input a, b;
	output sum, cout;

	assign {cout, sum} = a + b;
endmodule
