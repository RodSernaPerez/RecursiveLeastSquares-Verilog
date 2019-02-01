`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:25:12 03/03/2016 
// Design Name: 
// Module Name:    Multiplexer 
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
module Multiplexer2 #(parameter N=100)(
	input option,
	input [N-1:0]mult0,
	input [N-1:0]mult1,
	
	output reg [N-1:0]out);

	always @( option or mult1 or mult0 ) begin
		case( option )
			 0 : out = mult0;
			 1 : out = mult1;
		endcase
end

endmodule
