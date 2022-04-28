module PC(Clock,PCI, PCO, Reset);

input [31:0] PCI;
input Reset, Clock;

output reg [31:0] PCO;


always @(posedge Clock)
begin
if (Reset == 1)
	PCO <= 32'b0;
else
	PCO <= PCI;
end

endmodule
