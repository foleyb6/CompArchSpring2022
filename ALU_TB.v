module ALU_TB();
	
reg [31:0] DataA, DataB;
reg [2:0] OPCode;

wire [32:0] Calc;
wire [31:0] FinalOut;
wire [3:0] Status;
wire Clock;

ALU dut (DataA, DataB, OPCode, Calc, Clock);
Status det (DataA, DataB, Calc, Clock, FinalOut, Status);

initial begin
	OPCode <= 3'b000;
	DataA <= 32'd10;
	DataB <= 32'd15;
	#50 OPCode <= 3'b001;
	#50 OPCode <= 3'b010;
	#50 OPCode <= 3'b011;
	#50 OPCode <= 3'b100;
	#50 OPCode <= 3'b101;
	#50 OPCode <= 3'b110;
	#50 OPCode <= 3'b111;
	#50 $stop;
end



endmodule
