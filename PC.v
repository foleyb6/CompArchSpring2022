module PC(Clock, Sel, IMM, PCO);

input Clock, Sel;
input [31:0] IMM; 
reg [31:0] PCI;

output reg [31:0] PCO;

initial begin
	PCO <= 0;
	PCI <= 0;
end

always @(posedge Clock) begin
	case(Sel)
	1'b0 : PCO <= PCI + 32'd4;
	1'b1 : PCO <= PCI + IMM;
	default : PCO <= PCI + 32'd4;
	endcase
end
endmodule
