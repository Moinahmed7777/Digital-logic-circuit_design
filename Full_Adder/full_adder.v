module full_adder
	(
	in_bit1,
	in_bit2,
	in_carry,
	out_carry,
	out_sum
	);
	input in_bit1;
	input in_bit2;
	input in_carry;
	output out_carry;
	output out_sum;


 	wire   w_WIRE_1;
	wire   w_WIRE_2;
  	wire   w_WIRE_3;
       
  	assign w_WIRE_1 = in_bit1 ^ in_bit2;
  	assign w_WIRE_2 = w_WIRE_1 & in_carry;
  	assign w_WIRE_3 = in_bit1 & in_bit2;
 
  	assign out_sum   = w_WIRE_1 ^ in_carry;
  	assign out_carry = w_WIRE_2 | w_WIRE_3;
	
endmodule 