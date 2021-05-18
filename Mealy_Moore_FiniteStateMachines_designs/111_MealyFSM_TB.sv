`timescale 1ns/1ns

module OneOneOne_MealyFSM_TB;

	logic clk;
	logic reset;
	logic in;

	logic out;

	MealyFSM dut(
		.clk(clk),
		.reset(reset),
		.A(in),
		.Y(out)
	);

	initial
	  begin 	//please run for 240ns
	    reset <= 1; # 10;
	    reset <= 0; in <= 0; # 10;
	    in <= 0; #10;
	    in <= 1; #10;
	    in <= 1; #10;
	    in <= 1; #10;
	    in <= 0; #10;
	    in <= 1; #10;
	    in <= 1; #10;
			in <= 1; #10;
	    in <= 1; #10;
			in <= 0; #10;

	  end

	always
	  begin
	    clk <= 1; #5;
	    clk <= 0; #5;
	  end
endmodule
