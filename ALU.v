module ALU(DataA, DataB, OPCode, Calc, Clock);

input [31:0] DataA, DataB;
input [2:0] OPCode;

output reg [32:0] Calc;
output reg Clock;

initial begin
	Clock <= 0;
end

always @(OPCode) begin
	case(OPCode)
	3'b000 : Calc <= DataA + DataB;
	3'b001 : Calc <= DataA - DataB;
	3'b010 : Calc <= DataA & DataB;
	3'b011 : Calc <= DataA | DataB;
	3'b100 : Calc <= ~(DataA | DataB);
	3'b101 : Calc <= DataA ^ DataB;
	3'b110 : Calc <= DataA << DataB;
	3'b111 : Calc <= DataA >> DataB;
	endcase
	Clock <= ~Clock;
end

endmodule

