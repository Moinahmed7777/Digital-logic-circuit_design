`timescale 1ns/1ps

module left_rotator(
	input  x, y,
	input  logic  [3:0] I,
	output logic  [3:0] b, 
  output logic  [3:0] Yright
	);

	always_comb
		begin
		if(~x & ~y)
			  b = I ;
		else if (~x & y)
			  b = { I[2:0], I[3] };
		else if (x & ~y)
			  b = { I[1:0], I[3:2] };
		else if (x & y)
			  b= {I[0], I[1], I[2], I[3]};
		end
    always_comb
		begin
		if(~x & ~y)
			  Yright = I ;
		else if (~x & y)
			  Yright = { I[1:0], I[3:2] };
		else if (x & ~y)
			  Yright = { I[2:0], I[3] };
		else if (x & y)
			  Yright = {I[0], I[1], I[2], I[3]};
		end

endmodule
