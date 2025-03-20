module regfile(
    input logic clk,rst,             
    input logic RegWrite,            
    input logic [4:0] rs1,         
    input logic [4:0] rs2,           
    input logic [4:0] rd,            
    input logic [31:0] write_data,   
    output logic [31:0] read_data1,  
    output logic [31:0] read_data2);
	
    logic [31:0] registers [31:0];
    reg count = 1'b0;

    assign read_data1 = registers[rs1];
    assign read_data2 = registers[rs2];
    
    always_ff @(posedge clk or posedge rst) begin
		if(rst) 
		begin
			for(int i = 0; i <= 32; i++) 
			begin
				registers[i] = $random;
			end
		end
		//register config for BEQ Operation only, uncomment for BEQ Operation
		//registers[5] = 'hAA;
		//registers[7] = 'hAA;
        if (RegWrite) begin
            registers[rd] <= write_data;
        end
    end
endmodule
