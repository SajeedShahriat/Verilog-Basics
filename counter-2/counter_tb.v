/*
Author: Sajeed Mohammad Shahriat
Affiliation: Rochester Institute of Technology
All rights reserved
This files can be reused and modified given that this copyright notice is not removed
*/

module counter_tb ();

reg clk, reset, enable; // declare all inputs as registers

wire [3:0] counter_out; // declare all outputs as wires

// clock generator
always
	begin
		#5 clk = ~clk; // toggle clock every 5 ticks
	end
//initialize all variables

initial
	begin
		$display ("time\t clk reset enable counter");
		$monitor ("%g\t %b %b %b %b", $time, clk, reset, enable, counter_out);
		clk = 1; //initial value of clock
		reset = 0; // initial value of reset
		#5 reset = 1; //assert the reset
		#10 reset = 0; //de-assert the reset
		#5 enable = 1; //assert enable
		#100 enable = 0; // de-assert enable
		#10 $finish; // terminate simulation
	end
//connect DUT to test bench
counter connect_counter(
	clk,
	reset,
	enable,
	counter_out
);
endmodule
