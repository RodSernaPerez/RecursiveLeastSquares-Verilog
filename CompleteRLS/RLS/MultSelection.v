`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:00:12 04/14/2016 
// Design Name: 
// Module Name:    MultSelection 
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
module MultSelection #(parameter N=100, parameter nBits=32)(
	input [0:N-1] in,
	input [31:0] seleccion,
	output [0:nBits-1] out);
	
	genvar i;
	wire [0:nBits-1]A[N/nBits-1:0];
	
	generate
		for (i=0;i<N/nBits;i=i+1) begin: loop1
			assign A[i]=in[i*nBits+:nBits];
		end
	endgenerate
		
	
	assign out = A[seleccion];


endmodule
