module MealyFSM(input logic clk,
		input logic reset,
		input logic A,
		output logic Y);


	typedef enum logic [1:0] { S0,S1 } State;

	State currentState, nextState;

  always_ff @(posedge clk)
	  if(reset)	currentState <= S0;
	  else		currentState <= nextState;

  always_comb

    case(currentState)
    S0: if(A)	nextState = S0;
        else	nextState = S1;
    S1: if(A)	nextState = S1;
        else	nextState = S1;

    default:	nextState = S0;

    endcase

  assign Y = (currentState == S1) & A;


endmodule
