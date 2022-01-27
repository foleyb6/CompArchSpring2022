module CompArchLab2(clock, R,I,F);

input clock;
input R;
input I;
output reg F;

parameter 

S0 = 3'b000,
S1 = 3'b001,
S2 = 3'b010,
S3 = 3'b011,
S4 = 3'b100;

reg [2:0] CS, NS;
always @(posedge clock)
begin
	if(R == 1)
		CS <= S0;
	else 
		CS <= NS;
end
	
always @(CS,I)
begin
		case(CS)
		S0:begin
			F = 0;
			if(I == 1)
				NS <= S1;
			else
				NS <= S0;
		end
		S1:begin
			if(I == 0)
				NS <= S2;
			else 
				NS <= S0;
		end
		S2:begin
			if(I == 0)
				NS <= S3;
			else
				NS <= S0;
		end
		S3:begin
			if(I == 1)
				NS <= S4;
			else
				NS <= S0;
		end
		S4:begin
			NS <= S0;
		end
		default: NS = S0;
	endcase
	F = (CS==S4) ? 1:0;
end


endmodule
