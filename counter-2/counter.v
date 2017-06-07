/*
Author: Sajeed Mohammad Shahriat
Affiliation: Rochester Institute of Technology
All rights reserved
This files can be reused and modified given that this copyright notice is not removed
*/

module counter (
	clk,		//clock input of the design
	reset,		// active high synchrnous reset input
	enable,		// active high enable signal for counter
	counter_out	// 4 bit vector output of the counter
) //end of port list

//------------------------input ports--------------------------------

input clk ;
input reset ;
input enable;

//------------------------output ports-------------------------------

output [3:0] counter_out;

//--------------------input port data types--------------------------

wire clk;
wire reset;
wire enable;

//-------------------output port data types--------------------------

reg [3:0] counter_out;

//--------------------------RTL design-------------------------------

always @ (posedge clk)
begin :COUNTER // block name
	if (reset == 1'b1)	//reset high
		begin
			counter_out <= #1 4'b0000;
		end
	else if (enable == 1'b1)	//counter active
		begin
			counter_out <= #1 counter_out + 1;
		end
end // end of block COUNTER
endmodule // counter

