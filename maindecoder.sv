module maindec(input logic[6:0] Op,
			   output logic [1:0] ResultSrc,
			   output logic MemWrite,
			   output logic Branch,ALUSrc,ReqWrite,Jump,
			   output logic [1:0] ImmSrc,ALUOp);

			   logic [10:0] control;


			   assign {RegWrite,ImmSrc,ALUSrc,MemWrite,ResultSrc,Branch,ALUOp,Jump} = control;


			   always_comb
			   case(Op)
			   			7'b0000011: control = 11'b10010010000;
			   			7'b0100011: control = 11'b00111000000;
			   			7'b0110011: control = 11'b1xx00000100;
			   			7'b1100011: control = 11'b01000001010;
			   			7'b0010011: control = 11'b10010000100;
			   			7'b1101111: control = 11'b11100100001;
						default   : control = 11'bX;
			  endcase

endmodule
