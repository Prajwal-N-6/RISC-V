module controller (input logic [6:0] Op,
				   input logic [2:0] funct3,
				   input logic funct7b5,
				   input logic Zero,
				   output logic [1:0] ResultSrc,
				   output logic MemWrite,PCSrc,ALUSrc, RegWrite,Jump,
				   output logic [1:0] ImmSrc,
				   output logic [2:0] ALUControl);

	   logic [1:0] ALUOp;
	   logic Branch;


	   maindec md(Op,ResultSrc,MemWrite,Branch,ALUSrc,RegWrite,Jump,ImmSrc,ALUOp);

	   aludec ad(Op[5],funct3,funct7b5,ALUOp,ALUControl);


	   assign PCSrc = Branch & Zero | Jump;

endmodule
