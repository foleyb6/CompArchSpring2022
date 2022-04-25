module Adder32(DataA, DataB, CarryOut, RAdd);

input [31:0] DataA, DataB;
output CarryOut;
output [31:0] RAdd;
wire W1, W2, W3, W4, W5, W6, W7, W8, W9, W10;
wire W11, W12, W13, W14, W15, W16, W17, W18, W19, W20;
wire W21, W22, W23, W24, W25, W26, W27, W28, W29, W30;
wire W31, W32;

Add1 A1 (DataA[0], DataB[0], 0, W1, RAdd[0]);
Add1 A2 (DataA[1], DataB[1], W1, W2, RAdd[1]);
Add1 A3 (DataA[2], DataB[2], W2, W3, RAdd[2]);
Add1 A4 (DataA[3], DataB[3], w3, W4, RAdd[3]);
Add1 A5 (DataA[4], DataB[4], W4, W5, RAdd[4]);
Add1 A6 (DataA[5], DataB[5], W5, W6, RAdd[5]);
Add1 A7 (DataA[6], DataB[6], W6, W7, RAdd[6]);
Add1 A8 (DataA[7], DataB[7], W7, W8, RAdd[7]);
Add1 A9 (DataA[8], DataB[8], W8, W9, RAdd[8]);
Add1 A10 (DataA[9], DataB[9], W9, W10, RAdd[9]);
Add1 A11 (DataA[10], DataB[10], W10, W11, RAdd[10]);
Add1 A12 (DataA[11], DataB[11], W11, W12, RAdd[11]);
Add1 A13 (DataA[12], DataB[12], W12, W13, RAdd[12]);
Add1 A14 (DataA[13], DataB[13], W13, W14, RAdd[13]);
Add1 A15 (DataA[14], DataB[14], W14, W15, RAdd[14]);
Add1 A16 (DataA[15], DataB[15], W15, W16, RAdd[15]);
Add1 A17 (DataA[16], DataB[16], W16, W17, RAdd[16]);
Add1 A18 (DataA[17], DataB[17], W17, W18, RAdd[17]);
Add1 A19 (DataA[18], DataB[18], W18, W19, RAdd[18]);
Add1 A20 (DataA[19], DataB[19], W19, W20, RAdd[19]);
Add1 A21 (DataA[20], DataB[20], W20, W21, RAdd[20]);
Add1 A22 (DataA[21], DataB[21], W21, W22, RAdd[21]);
Add1 A23 (DataA[22], DataB[22], W22, W23, RAdd[22]);
Add1 A24 (DataA[23], DataB[23], W23, W24, RAdd[23]);
Add1 A25 (DataA[24], DataB[24], W24, W25, RAdd[24]);
Add1 A26 (DataA[25], DataB[25], W25, W26, RAdd[25]);
Add1 A27 (DataA[26], DataB[26], W26, W27, RAdd[26]);
Add1 A28 (DataA[27], DataB[27], W27, W28, RAdd[27]);
Add1 A29 (DataA[28], DataB[28], W28, W29, RAdd[28]);
Add1 A30 (DataA[29], DataB[29], W29, W30, RAdd[29]);
Add1 A31 (DataA[30], DataB[30], W30, W31, RAdd[30]);
Add1 A32 (DataA[31], DataB[31], W31, CarryOut, RAdd[31]);

endmodule
