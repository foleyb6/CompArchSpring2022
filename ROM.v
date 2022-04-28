module ROM(PC, Instr);

input [31:0] PC;
//input Clock;

output reg [31:0] Instr;

always @(PC)
begin
	case(PC)
	32'h00: Instr <= 32'h; //R-Type
	32'h04: Instr <= 32'h; //I-Type
	32'h08: Instr <= 32'h; //S-Type
	32'h0c: Instr <= 32'h; //B-Type
	endcase
end
endmodule
