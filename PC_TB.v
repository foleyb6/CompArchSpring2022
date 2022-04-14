module PC_TB();

reg Clock;
reg Reset;

wire [31:0] PCO, PCI;
wire [31:0] Instr;

PC dut (Clock, PCI, PCO, Reset);
ROM dat (PCO, Instr);
Adder dit (PCI, PCO);

initial begin
	Clock <= 1'b0;
	Reset <= 1'b1;
	#10
	Reset <= 1'b0;
	#1000 $stop;
end

always begin
	#5 Clock <= ~Clock;
end

endmodule

