`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:58:08 04/10/2016 
// Design Name: 
// Module Name:    UART 
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
module UART #(parameter N=32, parameter M=100)(
	input clk,
	input reset,
	input data,
	input start,
	output reg shift,
	output reg serialo);
	
	parameter Wait=0;
	parameter Start=1;
	parameter Period=2;
	parameter Write=3;
	
	reg [31:0]counter;
	reg [31:0]period;
	reg [1:0] state;
	
	 always @ (posedge clk or negedge reset) begin
		shift<=0;
		if (reset==0) begin
			state<=Wait;
		end else begin
			case(state)
				Wait: begin
					counter<=32'b0;
					period<=32'b0;
					serialo<=1;
					if (start==1) begin
						state <= Start;
					end
				end
				Start: begin
					state<=Period;
					shift<=1;
					serialo<=0;
				end
				Period: begin
					period<=period+1;
					if (period==M-1) begin
						if (counter==N) begin
							state<=Wait;
						end else begin
							state<=Write;
						end						
					end
				end
				Write: begin
					period<=32'b0;
					serialo<=data;
					shift<=1;
					counter<=counter+1;
					state<=Period;
				end
			endcase
		end
	end


endmodule
