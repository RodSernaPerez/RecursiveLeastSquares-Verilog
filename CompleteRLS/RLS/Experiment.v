`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:12:43 04/04/2016 
// Design Name: 
// Module Name:    Experiment 
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
module Experiment #(parameter nBits=32,parameter N=16,parameter M=32, parameter B=1024)(
	input clk,
	input reset,
	output final,
	output [nBits-1:0]x,
	output write);

	wire [nBits-1:0]y;
	wire encounter,ensyscoun;
	wire [14:0]count,address;
	wire load;
	
	
	wire [35:0] control;
	
	wire [M*N*nBits-1:0]A,Ks;
	wire [N*nBits-1:0]wireA,wireKs;
	wire [31:0] iterations;
	
	BlockA #(.M(M),.N(N),.nBits(nBits))blockA (
    .A(A)
    );

	BlockK #(.M(M),.N(N),.nBits(nBits)) blockK (
    .K(Ks)
    );
	 
	 
	MultSelection #(.N(M*N*nBits),.nBits(N*nBits))muxA (
		 .in(A), 
		 .seleccion(iterations), 
		 .out(wireA)
		 );

	MultSelection #(.N(M*N*nBits),.nBits(N*nBits))muxKs (
		 .in(Ks), 
		 .seleccion(iterations), 
		 .out(wireKs)
		 );

	
	RLS #(.N(N),.M(M),.nBits(nBits),.B(B)) rls (
		 .clk(clk), 
		 .y(y), 
		 .wireA(wireA),
		 .wireKs(wireKs),
		 .reset(reset), 
		 .final(final),
		 .newIt(1'b1), 
		 .load(load),
		 .ensyscoun(ensyscoun),
		 .write(write),
		 .iterations(iterations),
		 .encounter(encounter), 
		 .x(x)
		 );


	counter #(.M(M*B),.nBits(15)) count1 (
		 .clock(clk), 
		 .reset(reset), 
		 .clear(1'b0), 
		 .count(encounter), 
		 .r(count)
		 );


	BRAM RAM (
	  .clka(clk), 
	  .wea(1'b0), // NOT USED
	  .addra(count), 
	  .dina(32'd0), // NOT USED
	  .douta(y) 
	);
	
	/*BRAM RAMOUT (
	  .clka(clk), 
	  .wea(write), 
	  .addra(address), 
	  .dina(x), 
	  .douta() 
	);*/
	
	CScope chipscope (
    .CONTROL(control), // INOUT BUS [35:0]
    .CLK(clk), // IN
    .DATA(x), // IN BUS [31:0] //x
    .TRIG0(write) // IN BUS [0:0]
	);

	ControlCS controlCS (
    .CONTROL0(control) // INOUT BUS [35:0]
	);


endmodule
