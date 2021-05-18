`timescale 1ns/1ns
module ALU_tb;

    reg [31:0] A,B;
    reg [3:0] ALU_S;

    wire [31:0] Y;
    wire Carryout;
    wire Zero;
    integer i;

    alu dut(A,B,ALU_S,Y,Zero,Carryout);
    initial begin
      A= 32'h05;
      B= 32'h05;
      ALU_S = 4'h0;
      for (i=0;i<5;i++)
        begin
          ALU_S = ALU_S + 32'h01;
          #10;
        end
     end
endmodule
