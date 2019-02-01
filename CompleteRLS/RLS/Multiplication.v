`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:17:22 04/01/2016 
// Design Name: 
// Module Name:    Multiplication 
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
module Multiplication #(parameter nBits=32)(
	input clk,
	input [nBits-1:0]a,b,
	input enable,
	output [nBits-1:0]res
    );
	
	wire [nBits-1:0]res1;
	
	mult mult (
	  //.clk(clk), // input clk
	  .a(a[nBits-1:0]), // input [30 : 0] a
	  .b(b[nBits-1:0]), // input [30 : 0] b
	  .p(res[nBits-1:0]) // output [30 : 0] p
	);
	
	
	//xor(res[nBits-1],a[nBits-1],b[nBits-1]);
	

endmodule
