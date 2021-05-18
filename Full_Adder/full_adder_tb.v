module full_adder_tb();
	reg i_b1,i_b2,i_c;
	wire o_sum,o_carry;

	reg [2:0] tvec [7:0];
	integer i;
	
	full_adder full_adder_dut(.in_bit1(i_b1), .in_bit2(i_b2), .in_carry(i_c), .out_carry(o_carry), .out_sum(o_sum));
	
	initial begin
		$readmemb ("C:/New folder/FAT.tv",tvec); //The address needs to be updated to run
	end 

	always begin
	for (i=0; i<8; i=i+1) begin
		{i_b1,i_b2,i_c}= tvec[i];
		#10;
	end
	end
	
endmodule
