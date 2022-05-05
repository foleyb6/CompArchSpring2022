module ROM(PC, Instr, Clock);

input [31:0] PC;
input Clock;

output reg [31:0] Instr;

always @(posedge Clock)
begin
	case(PC)
	32'h00: Instr <= 32'h006681B3; //R-Type
	32'h04: Instr <= 32'h10078093; //I-Type
	32'h08: Instr <= 32'h00380023; //S-Type
	32'h0c: Instr <= 32'h00080283; //I-Type
	32'h10: Instr <= 32'h00C58363; //B-Type
	endcase
end
endmodule
