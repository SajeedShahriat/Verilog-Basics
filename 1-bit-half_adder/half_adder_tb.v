/*
Author: Sajeed Mohammad Shahriat
Affiliation: Rochester Institute of Technology
All rights reserved
This files can be reused and modified given that this copyright notice is not removed
*/

module half_adder_tb ();

reg a, b; // declare all inputs as register
wire sum, carry; // declare all outputs as wires

initial
	begin
		
		$dumpfile("half_adder_wave.vcd"); // required for gtkwaveform
		$dumpvars(0,half_adder_tb); // required for gtkwaveform

		$display ("time\t a b carry sum");
		$monitor ("%g\t %b  %b  %b  %b", $time, a, b, carry, sum);

		a = 0; // initial value of a
		b = 0; // initial value of b
		#25 b = 1; // assert b to 1
		#25 a = 1; // assert a to 1
		    b = 0; // assert b to 0
		#25 b = 1; // assert b to 1
		    a = 1; // assert a to 1
		#25 $finish; // terminate simulation
	end

//connect DUT to testbench

half_adder connect_half_adder(
	a,
	b,
	sum,
	carry
);

endmodule
