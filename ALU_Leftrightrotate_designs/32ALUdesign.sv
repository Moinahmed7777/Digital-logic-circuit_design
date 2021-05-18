module alu( input [31:0] A,B,
            input [3:0] ALU_S,
            output[31:0] Y,
            output Zero,
            output Carryout
          );

  reg [31:0] ALU_result;
  reg Z;
  wire [32:0] temp;
  assign Y=ALU_result;
  assign Zero= Z;
  assign temp= {1'b0,A} + {1'b0,B};
  assign Carryout = temp[32];

  always @(*) begin
    case(ALU_S)
      4'b0000:
        ALU_result =A - B;

      4'b0001:
        ALU_result =A - B;

      4'b0010:
        ALU_result =A + B;

      4'b0011:
        ALU_result =A & B;

      4'b0100:
        ALU_result =A ^ B;
      default: ALU_result= A - B;

    endcase

    if (Y==0)
      Z =1;
    else
      Z =0;


  end
endmodule
