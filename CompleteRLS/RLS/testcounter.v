`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:50:01 04/12/2016 
// Design Name: 
// Module Name:    testcounter 
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
module testcounter(
	input clk,
	input reset,
	output [2:0]r);
	
	counter #(.nBits(3),.M(7)) con (
    .clock(clk), 
    .reset(reset), 
    .clear(1'b0), 
    .count(1'b1), 
    .r(r)
    );

endmodule
