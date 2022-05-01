module Control_TB();

reg [6:0] OPCode;
reg Zero;

wire PCsrc, EnW, ALUsrc, RAMW, WB, RAMR;
wire [1:0] IMMSel;

Control dut (PCsrc, EnW, IMMSel, ALUsrc, RAMW, WB, RAMR, Zero, OPCode);

initial begin
	OPCode <= 7'b0;
	Zero <= 0;
	#50 OPCode <= 7'b0110011;
	#50 OPCode <= 7'b0010011;
	#50 OPCode <= 7'b0100011;
	#50 OPCode <= 7'b1100011;
	Zero <= 0;
	#50 OPCode <= 7'b0000011;
	#50 OPCode <= 7'b1100011;
	Zero <= 1;
	#1000 $stop;
end

endmodule
