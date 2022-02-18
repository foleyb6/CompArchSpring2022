module Register_TB();

reg Clock, Reset, EnWri;
reg [31:0] DataI;
reg [4:0] WriAdd, ReadA, ReadB;

wire [31:0] DataA, DataB;

Register dut (Clock, Reset, EnWri, WriAdd, DataI, ReadA, ReadB, DataA, DataB);

initial begin
	Reset <= 1'b1;
	Clock <= 1'b1;
	EnWri <= 1'b1;
	WriAdd <= 5'b00000;
	ReadA <= 5'b00000;
	ReadB <= 5'b00000;
	DataI <= 32'b101;
	#5 Reset <= 1'b0;
	#1000 EnWri <= 1'b0;
	#2000 $stop;
end

always
	#5 Clock <= ~Clock;

always begin
	#5 WriAdd <= WriAdd + 5'b1;
	#10 ReadA <= ReadA + 5'b1;
	#10 ReadB <= ReadB + 5'b1;
	#1 DataI <= DataI + 32'b101;
	
end

endmodule
