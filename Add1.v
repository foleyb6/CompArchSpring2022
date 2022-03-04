module Add1(A, B, Cin, Cout, S);

input A, B, Cin;
output Cout, S;

wire W1, W2, W3, W4;

and AND1 (W1, A, B);
and AND2 (W2, A, Cin);
and AND3 (W3, B, Cin);
xor XOR1 (W4, A, Cin);
xor XOR2 (S, W4, B);
or OR1 (Cout, W1, W2, W3);

endmodule
