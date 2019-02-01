`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:43:51 02/25/2016 
// Design Name: 
// Module Name:    VectorProduct 
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
module VectorProduct #(	 parameter N=2,	parameter nBits=32, parameter log=2)
	(
		 input [N*nBits-1:0] a,
		 input [N*nBits-1:0] b,
		 input clk,
		 output [nBits-1:0]res
    );
	 
	 
	wire [nBits-1:0]Amat[0:N-1];
	wire [nBits-1:0]Bmat[0:N-1];
	wire [nBits-1:0]aux[0:N-1];
	wire [nBits-1:0]sumSteps[0:N-1];
	wire [N*nBits-1:0] prods;
	
	genvar i,j;
	

	generate
		for (i = 0; i < N; i = i + 1) begin: loop1
				assign Amat[i]=a[N*nBits-1-i*nBits:N*nBits-i*nBits-nBits];
				assign Bmat[i]=b[N*nBits-1-i*nBits:N*nBits-i*nBits-nBits];
		end
	endgenerate

	generate
		for (i = 0; i < N; i = i + 1) begin: loop2
			xor(aux[i][nBits-1],Amat[i][nBits-1],Bmat[i][nBits-1]);
			multiplier mult (.clk(clk),.a(Amat[i][nBits-2:0]),.b(Bmat[i][nBits-2:0]),.p(aux[i][nBits-2:0]));
		end
	endgenerate
	
/*	assign sumSteps[0]=aux[0];
	
	generate
		for (i = 1; i < N; i = i + 1) begin: loop3
			adder add (.a(sumSteps[i-1]), .b(aux[i]),.clk(clk),.add(1'b1),.s(sumSteps[i]));
		end
	endgenerate
	
	assign res=sumSteps[N-1];*/
	
	generate
		for (i = 0; i < N; i = i + 1) begin: loop4
			assign prods[N*nBits-1-i*nBits:N*nBits-i*nBits-nBits]=aux[i];
		end
	endgenerate
	
	SumElements #(.N(N),.nBits(nBits),.log(log)) sums (
    .a(prods), 
	 .clk(clk),
    .b(res)
    );


endmodule
