/*
Author: Sajeed Mohammad Shahriat
Affiliation: Rochester Institute of Technology
All rights reserved
This files can be reused and modified given that this copyright notice is not removed
*/

module half_adder (
	a,	//input a
	b,	//input b
	sum,	// sum output 
	carry	//carry output
); //end of port list

//------------------------input ports--------------------------------

input a;
input b;

//------------------------output ports-------------------------------

output sum;
output carry;

//--------------------input port data types--------------------------

wire a;
wire b;

//-------------------output port data types--------------------------

reg sum;
reg carry;

//--------------------------RTL design-------------------------------

always @ (a or b)
	begin :HALF_ADDER
		sum <= a^b;
		carry <= a&b;
	end

endmodule // 1 bit half adder
