module Register(Clock, Reset, EnWri, WriAdd, DataI, ReadA, ReadB, DataA, DataB);

input Clock, Reset, EnWri;
input [31:0] DataI;
input [4:0] WriAdd, ReadA, ReadB;
output [31:0] DataA, DataB;

wire [31:0] Selector;

wire [31:0] R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15, R16, R17, R18, R19, R20, R21, R22, R23, R24, R25, R26, R27, R28, R29, R30, R31;

Decoder Dec (Selector, WriAdd, EnWri, Clock);
CompArchReg Reg0 (R0, DataI, Clock, Reset, Selector[0]);
CompArchReg Reg1 (R1, DataI, Clock, Reset, Selector[1]);
CompArchReg Reg2 (R2, DataI, Clock, Reset, Selector[2]);
CompArchReg Reg3 (R3, DataI, Clock, Reset, Selector[3]);
CompArchReg Reg4 (R4, DataI, Clock, Reset, Selector[4]);
CompArchReg Reg5 (R5, DataI, Clock, Reset, Selector[5]);
CompArchReg Reg6 (R6, DataI, Clock, Reset, Selector[6]);
CompArchReg Reg7 (R7, DataI, Clock, Reset, Selector[7]);
CompArchReg Reg8 (R8, DataI, Clock, Reset, Selector[8]);
CompArchReg Reg9 (R9, DataI, Clock, Reset, Selector[9]);
CompArchReg Reg10 (R10, DataI, Clock, Reset, Selector[10]);
CompArchReg Reg11 (R11, DataI, Clock, Reset, Selector[11]);
CompArchReg Reg12 (R12, DataI, Clock, Reset, Selector[12]);
CompArchReg Reg13 (R13, DataI, Clock, Reset, Selector[13]);
CompArchReg Reg14 (R14, DataI, Clock, Reset, Selector[14]);
CompArchReg Reg15 (R15, DataI, Clock, Reset, Selector[15]);
CompArchReg Reg16 (R16, DataI, Clock, Reset, Selector[16]);
CompArchReg Reg17 (R17, DataI, Clock, Reset, Selector[17]);
CompArchReg Reg18 (R18, DataI, Clock, Reset, Selector[18]);
CompArchReg Reg19 (R19, DataI, Clock, Reset, Selector[19]);
CompArchReg Reg20 (R20, DataI, Clock, Reset, Selector[20]);
CompArchReg Reg21 (R21, DataI, Clock, Reset, Selector[21]);
CompArchReg Reg22 (R22, DataI, Clock, Reset, Selector[22]);
CompArchReg Reg23 (R23, DataI, Clock, Reset, Selector[23]);
CompArchReg Reg24 (R24, DataI, Clock, Reset, Selector[24]);
CompArchReg Reg25 (R25, DataI, Clock, Reset, Selector[25]);
CompArchReg Reg26 (R26, DataI, Clock, Reset, Selector[26]);
CompArchReg Reg27 (R27, DataI, Clock, Reset, Selector[27]);
CompArchReg Reg28 (R28, DataI, Clock, Reset, Selector[28]);
CompArchReg Reg29 (R29, DataI, Clock, Reset, Selector[29]);
CompArchReg Reg30 (R30, DataI, Clock, Reset, Selector[30]);
CompArchReg Reg31 (R31, DataI, Clock, Reset, Selector[31]);
Multiplex MulA (R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15, R16, R17, R18, R19, R20, R21, R22, R23, R24, R25, R26, R27, R28, R29, R30, R31, ReadA, DataA, Clock); 
Multiplex MulB (R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15, R16, R17, R18, R19, R20, R21, R22, R23, R24, R25, R26, R27, R28, R29, R30, R31, ReadB, DataB, Clock);

endmodule
