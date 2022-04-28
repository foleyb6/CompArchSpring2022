module ROM(PC, Instr);

input [31:0] PC;
//input Clock;

output reg [31:0] Instr;

always @(PC)
begin
	case(PC)
	32'h00: Instr <= 32'h00450693;
	32'h04: Instr <= 32'h00100713;
	32'h08: Instr <= 32'h00b76463;
	32'h0c: Instr <= 32'h00008067;
	32'h10: Instr <= 32'h0006a803;
	32'h14: Instr <= 32'h00068613;
	32'h18: Instr <= 32'h00070793;
	32'h1c: Instr <= 32'hffc62883;
	32'h20: Instr <= 32'h01185a63;
	32'h24: Instr <= 32'h01162023;
	32'h28: Instr <= 32'hfff78793;
	32'h2c: Instr <= 32'hffc60613;
	32'h30: Instr <= 32'hfe0796e3;
	32'h34: Instr <= 32'h00279793;
	32'h38: Instr <= 32'h00f507b3;
	32'h3c: Instr <= 32'h0107a023;
	32'h40: Instr <= 32'h00170713;
	32'h44: Instr <= 32'h00468693;
	32'h48: Instr <= 32'hfc1ff06f;
	endcase
end
endmodule
