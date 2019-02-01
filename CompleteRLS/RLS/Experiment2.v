`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:52:26 04/15/2016 
// Design Name: 
// Module Name:    Experiment2 
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
module Experiment2 #(parameter N=16, parameter M=2, parameter nBits=32, parameter B=2)(
	input clk,
	input reset,
	output write,
	output [nBits*N-1:0]x);
	

	
	
	wire [35:0]control;
	
	RLS #(.N(N),.M(M),.nBits(nBits),.B(B)) rls (
	 .clk(clk), 
	 .y({17'd7,15'd0}), 
	 .wireA(512'h0000720900007aca0000460b000011be0000131c000020f600006b9d0000208c0000683a00001f2c000076f200002ccc0000192a0000202400004edb00003c95),
	 .wireKs(512'h00002d0300006a5900004aea0000465d0000756700002496000060ec0000607a000030b2000048ae000009b6000006e8000043f1000063bc0000778e000010a1),
	 .reset(reset), 
	 .newIt(1'b1), 
	 .load(),
	 .ensyscoun(),
	 .write(write),
	 .iterations(),
	 .encounter(), 
	 .x(x)
	 );
	 
	 
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
