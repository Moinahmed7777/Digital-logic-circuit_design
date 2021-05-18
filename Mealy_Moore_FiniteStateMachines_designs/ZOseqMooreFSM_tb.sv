
`timescale 1ns/1ns

module ZOseqMooreFSM_TB;
	
	logic clk;
	logic reset;
	logic in;

	logic out;

	MooreFSM dut(
		.clk(clk),
		.reset(reset),
		.A(in),
		.Y(out)
	);

	initial
	  begin 	//please run for 200ns
	    reset <= 1; # 20;
	    reset <= 0; in <= 0; # 20;
	    in <= 1; #20;
	    in <= 0; #20;
	    in <= 0; #20;
	    in <= 1; #20;
	    in <= 1; #20;
	    in <= 0; #20;
	    in <= 1; #20;
	  end

	always
	  begin
	    clk <= 1; #5;
	    clk <= 0; #5;
	  end


endmodule 