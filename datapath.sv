module datapath(input logic clk,rst,PCSrc,ALUSrc,RegWrite,
				input logic [1:0] ResultSrc,ImmSrc,
				input logic [2:0] ALUControl,
				output logic Zero,
				output logic [31:0] PC,ALUResult,WriteData,
				input logic [31:0] Instr,
				input logic [31:0] ReadData);


				logic [31:0] PCNext,PCPlus4,PCTarget,ImmExt,SrcA,SrcB;
				logic [31:0] Result; //='b0;
				
				flopr #(32) pcreg(clk,rst,PCNext,PC);

				adder pcadd4(PC,32'd4,PCPlus4);
				
				adder pcaddbranch (PC,ImmExt,PCTarget);
				
				mux2 #(32) pcmux(PCPlus4,PCTarget,PCSrc,PCNext);
				
				regfile rf(clk,rst,RegWrite,Instr[19:15],Instr[24:20],Instr[11:7],Result,SrcA,WriteData);
				
				extend ext(Instr[31:7],ImmSrc,ImmExt);
				
				mux2 #(32) srcbmux(WriteData,ImmExt,ALUSrc,SrcB);
				
				alu alu1(SrcA,SrcB,ALUControl,ALUResult,Zero);
				
				mux3 #(32) resultmux(ALUResult,ReadData,PCPlus4,ResultSrc,Result);

	
endmodule
