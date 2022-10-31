//Verilog HDL for "KISTA_SOI_STDLIB2", "DFFRX1" "functional"


module DFFRX1 (Q, QN, D, RN, CK );
	output reg Q, QN;
	input D, RN, CK;

	always @(posedge CK or negedge RN) begin
		if (!RN) begin
			Q <= 0;
			QN <= 1;
		end else begin
			Q <= D;
			QN <= ~D;
		end
	end

endmodule
