module Status(DataA, DataB, Calc, Clock, FinalOut, Status);

input [31:0] DataA, DataB;
input [32:0] Calc;
input Clock;

output [31:0] FinalOut;
output reg [3:0] Status; //Over, Zero, Neg, Carry

assign FinalOut = Calc[31:0];

always @(Clock) begin
	Status [0] <= Calc [32];
	Status [1] <= Calc [31];
	
	if(DataA[31] == DataB[31] && DataA[31] != Calc[31]) begin
		Status[3] <= 1'b1;
	end else begin
		Status[3] <= 1'b0;
	end
	if(Calc ==0) begin
		Status [2] <= 1'b1;
	end else begin
		Status [2] <= 1'b0;
	end
end

endmodule
