//Verilog HDL for "KISTA_SOI_STDLIB2", "DFFSX1" "functional"


module DFFSX1 (Q, QN, D, SN, CK );
	output reg Q, QN;
	input D, SN, CK;

	always @(posedge CK or negedge SN) begin
		if (!SN) begin
			Q <= 1;
			QN <= 0;
		end else begin
			Q <= D;
			QN <= ~D;
		end
	end

endmodule
