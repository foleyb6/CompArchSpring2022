module Adder(PCO, PCI);

input [31:0] PCI;
output [31:0] PCO;


assign PCO = PCI + 32'd4;

endmodule
