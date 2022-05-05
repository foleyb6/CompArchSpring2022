module IMMGen(IMM, Instr, IMMSel);

input [31:0] Instr;
input [1:0] IMMSel;

output reg [31:0] IMM;

reg [31:0] IMMI, IMMS, IMMB;

always @(Instr)
begin

	IMMI[11:0] <= Instr[31:20];
	IMMI[31:12] <= {20{Instr[31]}};
	IMMS[11:0] <= {Instr[11:5],Instr[4:0]};
	IMMS[31:12] <= {20{Instr[11]}};
	IMMB[0] <= 1'b0;
	IMMB[11:1] <= {Instr[7], Instr[30:25], Instr[11:8]};
	IMMB[31:12] <= {20{Instr[7]}};
	
	
	case(IMMSel)
	2'b00: IMM <= IMMI;
	2'b01: IMM <= IMMI;
	2'b10: IMM <= IMMI;
	2'b11: IMM <= 32'b0;
	endcase
	
end

endmodule
