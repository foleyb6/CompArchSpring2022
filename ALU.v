module ALU(DataA, DataB, OPCode, Clock, ResultC, Status);

input Clock;
input [5:0] OPCode;
input [31:0] DataA, DataB;

output reg [3:0] Status; // (Over, Carry, Zero, Neg)
output reg [31:0] ResultC;

wire [31:0] RAdd, RAnd, ROr, RNor, RXor, RRLS, RLLS;
wire [3:0] Stat;

Arithmetic Add (RAdd, Stat[3], Stat[2], Stat[0], DataA, DataB);
LogicAnd And (RAnd, DataA, DataB);
LogicOr Or (ROr, DataA, DataB);
LogicNor Nor (RNor, DataA, DataB);
LogicXor Xor (RXor, DataA, DataB);
RLS RLS (RRLS, DataA, DataB);
LLS LLS (RLLS, DataA, DataB);


always @(posedge Clock)
begin
	case(OPCode)
	6'b010000 : begin
	ResultC <= RAdd; 
	Status[3] <= Stat[3];
	Status[2] <= Stat[2];
	Status[0] <= Stat[0];
	end
	6'b010000 : ResultC <= RAnd;
	6'b010001 : ResultC <= ROr;
	6'b010010 : ResultC <= RNor;
	6'b010011 : ResultC <= RXor;
	6'b001100 : ResultC <= RRLS;
	6'b001101 : ResultC <= RLLS;
	endcase
end

endmodule