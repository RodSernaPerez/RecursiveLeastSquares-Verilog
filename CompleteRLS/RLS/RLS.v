`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:14:38 03/30/2016 
// Design Name: 
// Module Name:    RLS 
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
module RLS #( parameter N=2, parameter M=1, parameter nBits=32, parameter B=2)(
	input clk,
	input [nBits-1:0]y,
	input reset,
	input newIt,
	input [N*nBits-1:0]x0, //CUIDADO CON ESTO
	output encounter,write,ensyscoun,
	output [nBits-1:0]x,
	output [31:0] iterations,
	output load,final,
	input [N*nBits-1:0]wireA,wireKs
    );
	 

	wire sha,shx0,shk,ens,enmult,s2,clear,clears;
	wire [nBits-1:0]wire_a,wire_x,wirey,out1,out2,outmult,ins,wire_s,wire_r,wire_x0,wires2,s,wire_k,t1,t2,t3;
	wire [N*nBits-1:0] xout; 


 FlipFlop #(.N(nBits))ffy (
    .clk(clk), 
    .data(y), 
    .enable(load), 
    .reset(reset), 
	 .clear(1'b0),
    .out(wirey)
    );



	 shifter #(.M(N*nBits),.nBits(nBits)) shiftera (
    .clock(clk), 
    .reset(reset), 
    .load(load), 
    .shift(sha), 
	 .clear(1'b0),
	 .clearoutput(clears),
    .Data_in(wire_a), 
    .Data_load(wireA), 
    .Data_out(wire_a), 
    .r()
    );

	Multiplexer2 #(.N(nBits)) mux1 (
    .option(s1), 
    .mult0(wire_a), 
    .mult1(wire_r), 
    .out(out1)
    );

	 shifter #(.M(N*nBits),.nBits(nBits)) shifterx0 (
    .clock(clk), 
    .reset(reset), 
    .load(loadx), 
	 .clear(clear),
    .shift(shx0), 
	 .clearoutput(1'b0),
    .Data_in(wire_x0), 
    .Data_load(xout), 
    .Data_out(wire_x0), 
    .r()
    );
	 
	 shifter #(.M(N*nBits),.nBits(nBits)) shifterk (
    .clock(clk), 
    .reset(reset), 
    .load(load), 
    .shift(shk), 
	 .clearoutput(clears),
	 .clear(1'b0),
    .Data_in(wire_k), 
    .Data_load(wireKs), //Cambiarlo por Ks {17'd4,15'd0,17'd3,15'd0,17'd2,15'd0,17'd1,15'd0}
    .Data_out(wire_k), 
    .r()
    );
	 
	 
	Multiplexer2 #(.N(nBits)) mux2 (
    .option(s2), 
    .mult0(wire_x0), 
    .mult1(wire_k), 
    .out(out2)
    );
	 
	 Multiplication #(.nBits(nBits)) mult (
    .clk(clk), 
    .a(out1), 
    .b(out2), 
    .enable(enmult), 
    .res(outmult)
    );



	 
	 Addition #(.nBits(nBits)) add1 (
    .clk(clk), 
    .a(outmult), 
    .b(s),
	 .sum(1'b1),	 
    .res(wires2), 
    .enable(enadder)
    );


		 
	 FlipFlop #(.N(nBits))ffs (
    .clk(clk), 
    .data(wires2), 
    .enable(ens), 
    .reset(reset), 
	 .clear(clears),
    .out(s)
    );


	 Addition #(.nBits(nBits)) add2 (
    .clk(clk), 
    .a(wirey), 
    .b(s),
	 .sum(1'b0),	 
    .res(wire_r), 
    .enable(1'b1)
    );
	 
	 Addition #(.nBits(nBits)) add3 (
    .clk(clk), 
    .a(outmult), 
    .b(t3),
	 .sum(1'b1),	 
    .res(wire_x), 
    .enable(1'b1)
    );


	 shifter #(.M(N*nBits),.nBits(nBits)) shifterx (
    .clock(clk), 
    .reset(reset), 
    .load(1'b0), 
    .shift(shx), 
	 .clear(clear),
    .Data_in(wire_x), 
	 .clearoutput(1'b0),
    .Data_load(), 
    .Data_out(x),
    .r(xout)
    );
	

	Control #(.N(N),.M(M),.B(B)) control (
    .clk(clk), 
    .reset(reset), 
    .newIt(newIt), 
    .load(load), 
	 .write(write),
	 .iterations(iterations),
	 .ensyscoun(ensyscoun),
	 .clear(clear),
	 .clears(clears),
    .loadx(loadx), 
    .sha(sha), 
    .shx0(shx0), 
	 .final(final),
	 .encounter(encounter),
    .s1(s1), 
    .s2(s2), 
    .enmult(enmult), 
    .enadder(enadder), 
    .ens(ens), 
	 .shk(shk),
    .shx(shx)
    );


	 FlipFlop #(.N(nBits))ffT1 (
    .clk(clk), 
    .data(wire_x0), 
    .enable(1'b1), 
    .reset(reset),
	 .clear(1'b0),	 
    .out(t3)
    );
	 


endmodule
