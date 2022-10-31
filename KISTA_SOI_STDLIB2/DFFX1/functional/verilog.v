//Verilog HDL for "KISTA_SOI_STDLIB2", "DFFX1" "functional"


module DFFX1 (Q, QN, D, CK );
	output reg Q, QN;
	input D, CK;

	always @(posedge CK) begin
		Q <= D;
		QN <= ~D;
	end

endmodule
