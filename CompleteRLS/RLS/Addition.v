`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:09:14 04/01/2016 
// Design Name: 
// Module Name:    Addition 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Addition #(parameter nBits=32)(
	input sum,
	input clk,
	input [nBits-1:0]a,
	input [nBits-1:0]b,
	output [nBits-1:0]res,
	input enable
    );
	 
	 wire [nBits-1:0]res1;
	 
	adder add (
	  .a(a), // input [31 : 0] a
	  .b(b), // input [31 : 0] b
	  //.clk(clk), // input clk
	  .add(sum),
	  .s(res) // output [31 : 0] s
	);

endmodule
