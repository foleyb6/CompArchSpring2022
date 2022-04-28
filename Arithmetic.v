module Arithmetic(ResultC, OverFlow, CarryOut, Zero, Negative, DataA, DataB, CarryIn);

input CarryIn;
input[31:0] DataA, DataB;
output  reg OverFlow, Zero;
output CarryOut, Negative;
output [31:0] ResultC;


Adder32 ADD32(DataA, DataB, CarryOut, ResultC, CarryIn);

assign Negative = ResultC[31];

always
begin
if(DataA[31] == 1 && DataB[31] == 1 && ResultC[31] == 0)
	 OverFlow <= 1;
else if (DataA[31] == 0 && DataB[31] == 0 && ResultC[31] == 1)
	 OverFlow <= 1;

else
	 OverFlow <= 0;
end

always
begin
if(DataA == DataB)
	Zero <= 1;
else
	Zero <= 0;
end

endmodule
