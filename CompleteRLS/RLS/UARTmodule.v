`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:07:00 04/11/2016 
// Design Name: 
// Module Name:    UARTmodule 
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
module UARTmodule #(parameter N=16)(
	input clk,
	input reset,
	input load,
	input start,
	output serialo);
	
	wire endcounter,data,shift,encount,clearcount;
	
	//9600 bauds 100 MHz -> Count=10417
	UART #(.N(N),.M(10417)) uart (
    .clk(clk), 
    .reset(reset), 
    .data(data), 
    .start(start), 
    .shift(shift), 
    .serialo(serialo)
    );
	 
	 shifter #(.M(N),.nBits(1))regshift (
    .clock(clk), 
    .reset(reset), 
    .load(load), 
    .shift(shift), 
    .Data_in(data), 
    .Data_load(16'h25DC), 
    .clear(1'b0), 
    .Data_out(data), 
    .r()
    );



	 



endmodule
