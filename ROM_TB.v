module ROM_TB();

reg Clock;
reg [7:0] PC;

wire [31:0] Instr;

ROM dut (PC, Clock, Instr);

initial begin
	Clock <= 0;
	PC <= 0;
	#380 $stop;
end

always begin
	#5 Clock <= ~Clock;
end

always begin
	#10 PC <= PC + 8'd4;
end

endmodule
