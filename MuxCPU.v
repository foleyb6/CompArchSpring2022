module MuxCPU(I0, I1, O, SEL);

input [31:0] I0, I1;
input SEL;

output reg [31:0] O;

always
begin
if (SEL == 0)
	O = I0;
	
else
	O = I1;

end

endmodule

