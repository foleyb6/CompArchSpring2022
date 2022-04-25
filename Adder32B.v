module Adder32B(PCO, PCI, IMM);

input [31:0] PCI, IMM;
output [31:0] PCO;


assign PCO = PCI + IMM;

endmodule
