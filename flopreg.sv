module flopr #(parameter width = 32)
			  (input logic clk,rst,
			   input logic [width-1:0] d,
			   output logic [width-1:0] q);

		always_ff@(posedge clk or posedge rst)
		
		if(rst) q <= 'b0;
		else q <= d;

endmodule
