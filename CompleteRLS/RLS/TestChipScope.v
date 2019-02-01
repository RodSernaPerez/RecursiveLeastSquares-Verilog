`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:25:36 04/11/2016 
// Design Name: 
// Module Name:    TestChipScope 
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
module TestChipScope(
	input clk,reset,en,
	output reg out);
	
	always @ (posedge clk or negedge reset) begin
		if(reset==0)begin
			out<=0;
		end else begin
			if (en==1) begin
				out<= ~ out;
			end
		end
	end

endmodule
