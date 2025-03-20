module top(input logic clk,rst,
		   output logic [31:0] WriteData,DataAdr,
		   output logic MemWrite );

		   logic [31:0] PC,Instr,ReadData;

		  riscvsingle  rvsingle (.clk(clk),.rst(rst),.PC(PC),.Instr(Instr),.MemWrite(MemWrite),.WriteData(WriteData),.ReadData(ReadData),.ALUResult(DataAdr));
		  
      imem imemm(PC,Instr);
		  
      dmem dmemm(clk,MemWrite,DataAdr,WriteData,ReadData);

endmodule
