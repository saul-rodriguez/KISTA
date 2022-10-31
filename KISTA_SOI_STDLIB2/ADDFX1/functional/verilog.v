//Verilog HDL for "KISTA_SOI_STDLIB2", "AdderFull" "functional"


module ADDFX1 ( a, b, cin, sum, cout);
	input a, b, cin;
	output sum, cout;

	assign {cout, sum} = a + b + cin;

endmodule
