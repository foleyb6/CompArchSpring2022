module Decoder_TB();

reg [4:0] Input;
reg Enable, Clock;

wire [31:0] Output;

Decoder dut (Output, Input, Enable, Clock);

initial begin
	Clock <= 1'b1;
	Enable <= 1'b0;
	Input <= 5'b00000;
	#5 Enable <= 1'b1;
	#1000 $stop;
end

always
	#5 Clock <= ~Clock;
	
always begin
	#5 Input <= Input + 5'b1;
	#5;
end

endmodule

