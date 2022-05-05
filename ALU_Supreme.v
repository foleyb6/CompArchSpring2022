module ALU_Supreme(DataA, DataB, OPCode, FinalOut, Status);

input [31:0] DataA, DataB;
input [2:0] OPCode;

wire [32:0] Calc;
output [31:0] FinalOut;
output [3:0] Status;
wire Clock;

ALU dut (DataA, DataB, OPCode, Calc, Clock);
Status det (DataA, DataB, Calc, Clock, FinalOut, Status);

endmodule
