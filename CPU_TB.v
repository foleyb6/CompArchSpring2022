module CPU_TB();

reg Reset, Clock, PCSel, EnWri, ALUsrc, WB, MRW;
reg [1:0] IMMXSel;
wire [31:0] FinalOut, Instr;
wire [3:0] Status;

CPU dut (Reset, Clock, PCSel, EnWri, ALUsrc, WB, MRW, IMMXSel, FinalOut, Instr, Status);

initial begin
	Clock <= 1'b0;
	Reset <= 1'b1;
	PCSel <= 1'b0;
	EnWri <= 1'b0;
	ALUsrc <= 1'b0;
	WB <= 1'b1;
	MRW <= 1'b0;
	IMMXSel <= 2'b0;
	#10 Reset <= 1'b0;
	#1000 $stop;
	
end

always
begin
#5 Clock <= ~Clock;
end
endmodule
