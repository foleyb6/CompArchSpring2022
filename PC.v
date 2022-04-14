module PC(clk,PCI, PCO, Reset);

input [31:0] PCI;
input Reset,clk;

output reg [31:0] PCO;


always @(posedge clk)
begin
if (Reset == 1)
	PCO <= 32'b0;
else
	PCO <= PCI;
end

endmodule
