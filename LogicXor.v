module LogicXor(ResultC, DataA, DataB);

input [31:0] DataA, DataB;
output reg [31:0] ResultC;

always
ResultC = DataA ^ DataB;

endmodule