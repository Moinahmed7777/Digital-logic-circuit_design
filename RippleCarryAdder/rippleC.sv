module rippleC_Nbit
  #( parameter N = 8)
  (input [N-1:0] A,
  input [N-1:0] B,
  input Cin,
  output [N-1:0] Sum,
  output Cout
  );

  wire [N:0] w;

  assign w[0] = Cin;
  assign Cout = w[N];

  genvar i;
    generate
    for(i = 0; i < N; i = i + 1)
    begin : FULL_ADDER
    fulladder U (.A(A[i]), .B(B[i]), .Cin(w[i]), .Sum(Sum[i]), .Cout(w[i+1]));
    end
    endgenerate

endmodule
