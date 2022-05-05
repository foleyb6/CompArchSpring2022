module Control(PCsrc, EnW, IMMSel, ALUsrc, RAMW, WB, RAMR, Zero, OPCode);

output reg [1:0] IMMSel;
output reg PCsrc, EnW, ALUsrc, RAMW, WB, RAMR;

input Zero;
input [6:0] OPCode;

always @(OPCode)
begin
	case(OPCode)
	7'b0110011 : begin
		PCsrc <= 0;
		EnW <= 1;
		IMMSel <= 2'b00;
		ALUsrc <= 0;
		RAMW <= 0;
		RAMR <= 0;
		WB <= 1;
		end
	7'b0010011 : begin
		PCsrc <= 0;
		EnW <= 1;
		IMMSel <= 2'b00;
		ALUsrc <= 1;
		RAMW <= 0;
		RAMR <= 0;
		WB <= 1;
		end
	7'b0100011 : begin
		PCsrc <= 0;
		EnW <= 0;
		IMMSel <= 2'b01;
		ALUsrc <= 1;
		RAMW <= 1;
		RAMR <= 0;
		WB <= 1;
		end
	7'b0000011 : begin
		PCsrc <= 0;
		EnW <= 1;
		IMMSel <= 2'b00;
		ALUsrc <= 1;
		RAMW <= 0;
		RAMR <= 1;
		WB <= 0;
		end
	7'b1100011 : begin
		if(Zero == 1)
			PCsrc <= 1;
		else
			PCsrc <= 0;
		EnW <= 0;
		IMMSel <= 2'b10;
		ALUsrc <= 1;
		RAMW <= 0;
		RAMR <= 0;
		WB <= 1;
		end
	endcase
end

endmodule
