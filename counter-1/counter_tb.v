/*
Author: Sajeed Mohammad Shahriat
Affiliation: Rochester Institute of Technology
All rights reserved
This files can be reused and modified given that this copyright notice is not removed
*/
module test;

	/*Make a reset that pulse once.*/
	reg reset = 0;
	initial 
		begin
			#17 reset = 1;
			#11 reset = 0;
			#29 reset = 1;
			#11 reset = 0;
			#100 $stop;  
		end

	/*Make a regular pulsing clock.*/
	reg clk = 0;
	always #5 clk = !clk;

	wire [7:0] value;
	counter c1 (value, clk, reset);

	initial
		$monitor ("At time %t, value = %h (%d)", $time, value, value);

endmodule //test

