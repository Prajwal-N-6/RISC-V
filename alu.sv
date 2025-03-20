module alu(
    input logic [31:0] SrcA,           
    input logic [31:0] SrcB,           
    input logic [2:0] ALUControl,      
    output logic [31:0] ALUResult,     
    output logic Zero);

	
    always_comb begin
        case(ALUControl)
            3'b000: ALUResult = SrcA + SrcB;       
            3'b001: ALUResult = SrcA - SrcB;       
            3'b010: ALUResult = SrcA & SrcB;
			3'b011: ALUResult = SrcA | SrcB;
            3'b101: ALUResult = SrcA < SrcB; 
            default: ALUResult = 32'b0;            
        endcase
        
        Zero = (ALUResult == 32'b0);  
    end
endmodule
module dmem(input logic clk,we,
			input logic [31:0] a,wd,
			output logic [31:0]rd);

			logic [31:0] RAM [63:0];
			assign rd = RAM[a[31:2]];

			always_ff@(posedge clk)
									if(we) RAM[a[31:2]] <= wd;
endmodule
