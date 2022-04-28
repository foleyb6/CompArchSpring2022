module ALU(DataA, DataB, Func3, Clock, ResultC, Status);

input Clock;
input [2:0] Func3;
input [31:0] DataA, DataB;

output reg [3:0] Status; // (Over, Carry, Zero, Neg)
output reg [31:0] ResultC;

wire [31:0] RAdd, RSub, RAnd, ROr, RNor, RXor, RRLS, RLLS;
reg [31:0] NB;
wire [3:0] Stat, Stats;
wire [7:0] RAddB;
wire [15:0] RAddHW;

always begin
NB <= ~DataB;
end

Arithmetic Add (RAdd, Stat[3], Stat[2], Stat[1], Stat[0], DataA, DataB, 0);
Arithmetic Sub (RSub, Stats[3], Stats[2], Stats[1], Stats[0], DataA, NB, 1); 
LogicAnd And (RAnd, DataA, DataB);
LogicOr Or (ROr, DataA, DataB);
LogicNor Nor (RNor, DataA, DataB);
LogicXor Xor (RXor, DataA, DataB);
RLS RLS (RRLS, DataA, DataB);
LLS LLS (RLLS, DataA, DataB);


always @(posedge Clock)
begin
case(Func3)
	3'b000 : begin
	ResultC <= RAdd; 
	Status[3] <= Stat[3];
	Status[2] <= Stat[2];
	Status[1] <= Stat[1];
	Status[0] <= Stat[0];
				end
	3'b001 : begin
	ResultC <= RAdd; 
	Status[3] <= Stats[3];
	Status[2] <= Stats[2];
	Status[1] <= Stats[1];
	Status[0] <= Stats[0];
				end
	3'b010 : ResultC <= RAnd;
	3'b011 : ResultC <= ROr;
	3'b100 : ResultC <= RNor;
	3'b101 : ResultC <= RXor;
	3'b110 : ResultC <= RRLS;
	3'b111 : ResultC <= RLLS;
	
endcase
end

endmodule
