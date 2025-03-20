module tb();
	   logic clk,rst,MemWrite;
	   logic [31:0] WriteData; // = 'b0;
	   logic [31:0] DataAdr;

	   top dut(clk,rst,WriteData,DataAdr,MemWrite);

	   initial 
	   begin
	   		clk = 0;
	   		rst = 1; #5; rst = 0;
			#1000000; $finish;
	   end
	
	   always 
	   begin
	   		#15; clk = ~clk;
	   end

endmodule
