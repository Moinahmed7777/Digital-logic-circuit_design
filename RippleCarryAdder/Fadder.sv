module fulladder (
  input A,
  input B,
  input Cin,
  output Sum,
  output Cout
);
// delay 5ns
// assign #5 Sum = A ^ B ^ Cin;
// assign #5 Cout = (A & B) | (A & Cin) | (B & Cin);

// no delay
assign Sum = A ^ B ^ Cin;
assign Cout = (A & B) | (A & Cin) | (B & Cin);

endmodule
