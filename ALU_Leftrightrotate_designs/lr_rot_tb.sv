`timescale 1ns/1ps
module lr_tb;
  reg x,y;
  reg [3:0] I;
  reg [3:0] leftr;
  reg [3:0] rightr;

  wire [3:0] Yleft;
  wire [3:0] Yright;
  assign Yleft=leftr;
  assign Yright=rightr;


  left_rotator dut(x,y,I,b,Yright);


  initial begin
  I=4'b0110;
  leftr = {I[2:0], I[3]};
  rightr= {I[0],I[3], I[2:1]};
  end

endmodule
