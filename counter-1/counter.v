/*
Author: Sajeed Mohammad Shahriat
Affiliation: Rochester Institute of Technology
All rights reserved
This files can be reused and modified given that this copyright notice is not removed
*/
module counter (out, clk, reset);
	parameter WIDTH = 8;

	output [WIDTH-1: 0] out;
	input 		clk, reset;

	reg [WIDTH-1: 0] out;
	wire		clk, reset;

	always @ (posedge clk)
		out <= out + 1;
	always @reset 
		if (reset)
			assign out = 0;
		else
			deassign out;
endmodule // counter
