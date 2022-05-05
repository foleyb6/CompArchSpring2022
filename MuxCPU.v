module MuxCPU(I0, I1, O, SEL);

input [31:0] I0, I1;
input SEL;

output reg [31:0] O;

always @(SEL) begin
	case(SEL)
	1'b0 : O <= I0;
	1'b1 : O <= I1;
	default : O <= I0;
endcase
end

endmodule

