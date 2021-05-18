module opdm
	(
	i_O,
	i_P,
	i_D,
  i_M,
	o_H,
	o_L
	);

    input i_O;
    input i_P;
    input i_D;
    input i_M;
    output o_H;
    output o_L;

    wire w_WIRE_1;
    wire w_WIRE_2;
    wire w_WIRE_3;

    assign w_WIRE_1 = i_P & i_D;
    assign w_WIRE_2 = i_D & i_M;
    assign w_WIRE_3 = i_O | w_WIRE_2;


    assign o_L = w_WIRE_1;
    assign o_H = w_WIRE_3;
endmodule
