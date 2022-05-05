module CPU_Complete_TB();

reg Clock,Reset;

wire [31:0] Instr, FinalOut;
wire [3:0] Status;

CPU_Complete dut (Clock,Reset,FinalOut,Instr,Status);

initial begin
	Clock <= 0;
	Reset <= 1;
	#10 Reset <= 0;
	#1000 $stop;
end

always begin
	#5 Clock <= ~Clock;
end

endmodule
