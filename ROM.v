module ROM(PC, Clock, Instr);

input [7:0] PC;
input Clock;

output reg [31:0] Instr;

always @(posedge Clock)
begin
	case(PC)
	8'h00: Instr <= 32'h00450693;
	8'h04: Instr <= 32'h00100713;
	8'h08: Instr <= 32'h00b76463;
	8'h0c: Instr <= 32'h00008067;
	8'h10: Instr <= 32'h0006a803;
	8'h14: Instr <= 32'h00068613;
	8'h18: Instr <= 32'h00070793;
	8'h1c: Instr <= 32'hffc62883;
	8'h20: Instr <= 32'h01185a63;
	8'h24: Instr <= 32'h01162023;
	8'h28: Instr <= 32'hfff78793;
	8'h2c: Instr <= 32'hffc60613;
	8'h30: Instr <= 32'hfe0796e3;
	8'h34: Instr <= 32'h00279793;
	8'h38: Instr <= 32'h00f507b3;
	8'h3c: Instr <= 32'h0107a023;
	8'h40: Instr <= 32'h00170713;
	8'h44: Instr <= 32'h00468693;
	8'h48: Instr <= 32'hfc1ff06f;
	endcase
end
endmodule
