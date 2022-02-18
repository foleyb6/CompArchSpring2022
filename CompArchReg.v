module CompArchReg(R, DataI, Clock, Reset, EnWri);
input Clock, Reset, EnWri;
input [31:0] DataI;
output reg [31:0] R;

always @(posedge Clock)
begin

	if(Reset == 1)
	begin
		R = 0;
	end
	
	else if(EnWri == 1)
	begin
		R = DataI;
	end
	else
	begin
		R = R;
	end
end

endmodule

