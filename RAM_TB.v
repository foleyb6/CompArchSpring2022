module RAM_TB();

reg [7:0] InSel, OutSel;
reg Clock;
reg [31:0] Input;

wire [31:0] Output;

RAM dut (InSel, Clock, Input, OutSel, Output);

initial begin
	InSel <= 8'b00000000;
	OutSel <= 8'b00000000;
	Input <= 32'b0;
	Clock <= 0;
	#2000 $stop;
end
	
always begin
	#5 Clock <= ~Clock;
end
	
always begin
	#10 InSel <= InSel + 8'd8;
		 Input <= Input + 32'd2048;
end

always begin
	#20 OutSel <= InSel;
end

endmodule
