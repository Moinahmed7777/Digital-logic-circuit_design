module RippleCarry_tb;
  reg [15:0] A;
  reg [15:0] B;
  reg Cin;
  wire [15:0] Sum;
  wire Cout;

  integer i, j;

  rippleC_Nbit #(.N(16)) adder_16bit(A, B, Cin, Sum, Cout);

  initial
    begin
    $monitor("A = %d, B = %d Cin = %d, Sum = %d, Cout = %d", A, B, Cin, Sum, Cout);
    Cin = 1'b0;
    repeat(2) begin
    for(i = 12 ; i < 14 ; i = i + 1) begin
      for(j = 238 ; j < 245 ; j = j + 1) begin
        A = i;
        B = j;
        #10;
        end
      end
    Cin = !Cin;

    end

    end

endmodule
