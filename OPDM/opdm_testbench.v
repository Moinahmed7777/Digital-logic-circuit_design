module opdm_tb();
	reg i_o,i_p,i_d,i_m;
	wire o_h,o_l;

  reg [3:0] A [15:0];
  integer i;

  opdm opdm_dut(.i_O(i_o), .i_P(i_p), .i_D(i_d), .i_M(i_m), .o_H(o_h), .o_L(o_l));

  initial begin

  $monitor("Value of O=$b,P=$b,D=$b,M=$b,H=$b,L=$b",i_o ,i_p ,i_d ,i_m ,o_h ,o_l);

  i_o= 0; i_p=0; i_d=0; i_m=0;
  #50 i_o= 0; i_p=0; i_d=0; i_m=1;
  #50 i_o= 0; i_p=0; i_d=1; i_m=0;
  #50 i_o= 0; i_p=0; i_d=1; i_m=1;
  #50 i_o= 0; i_p=1; i_d=0; i_m=0;
  #50 i_o= 0; i_p=1; i_d=0; i_m=1;
  #50 i_o= 0; i_p=1; i_d=1; i_m=0;
  #50 i_o= 0; i_p=1; i_d=1; i_m=1;

  #50 i_o= 1; i_p=0; i_d=0; i_m=0;
  #50 i_o= 1; i_p=0; i_d=0; i_m=1;
  #50 i_o= 1; i_p=0; i_d=1; i_m=0;
  #50 i_o= 1; i_p=0; i_d=1; i_m=1;
  #50 i_o= 1; i_p=1; i_d=0; i_m=0;
  #50 i_o= 1; i_p=1; i_d=0; i_m=1;
  #50 i_o= 1; i_p=1; i_d=1; i_m=0;
  #50 i_o= 1; i_p=1; i_d=1; i_m=1;
  end
  endmodule
