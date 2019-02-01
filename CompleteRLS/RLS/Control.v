`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:27:04 03/30/2016 
// Design Name: 
// Module Name:    Control 
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
module Control #(parameter N=16, parameter M=20, parameter B=1024)(
	input clk, reset, newIt,
	output reg load, loadx ,sha, shx0,s1,s2,final,enmult,enadder,clears,ens,shx,shk,clear,encounter,write,ensyscoun,
	output reg [31:0]iterations);
	 
	 parameter Reset=4'd0;
	 parameter NewSystem=4'd1;
	 parameter NewIt=4'd2;
	 parameter Calcs=4'd3;
	 parameter WaitForMeasurement=4'd4;
	 parameter Calcr=4'd5;
	 parameter Calcx=4'd6;
	 parameter Savex=4'd7;
	 parameter End=4'd8;
	 parameter CountSys=4'd9;
	 
	 reg [3:0]state;
	 reg [31:0]counter;
	 reg [32:0] numBlocks;
	 
	 
	 always @ (posedge clk or negedge reset) begin
			load<=0;
			loadx<=0;
			sha<=0;
			shx0<=0;
			clear<=0;
			final<=0;
			s1<=0;
			s2<=0;
			enmult<=0;
			enadder<=0;
			ens<=0;
			shx<=0;
			shk<=0;
			encounter<=0;
			write<=0;
			clears<=0;
			ensyscoun<=0;
			
			
			if (reset==0) begin
				state<=Reset;
			end else begin
				case(state)
				   Reset: begin
						state <= NewSystem;
						numBlocks<=0;
						counter<={32{1'b0}};
					end
					NewSystem: begin
						clear<=1;
						state<=NewIt;
						iterations<={32{1'b0}};
					end
					NewIt: begin
						load <= 1;
						loadx<=1;
						clears<=1;
						state<=Calcs;
						
					end
					Calcs: begin
						sha<=1;
						shx0<=1;
						s1<=0;
						s2<=0;
						enmult<=1;
						enadder<=1;
						ens<=1;
						counter<=counter+1;
						if(counter==N) begin
							state<=WaitForMeasurement;
							sha<=0;
							counter<={32{1'd0}};
						end
					end
					WaitForMeasurement:begin
						if(newIt==1) begin
							state<=Calcr;
						end
					end
					Calcr: begin
						state<=Calcx;
						shx0<=1;
						encounter<=1;
						iterations<=iterations+1;
					end
					Calcx: begin
						s1<=1;
						s2<=1;
						shx<=1;
						shk<=1;
						shx0<=1;
						enmult<=1;
						counter<=counter+1;
						if(counter==N) begin
							shk<=0;
							if(iterations==M) begin
								state<=CountSys;
								counter<={32{1'd0}};
							end else begin
								state<=NewIt;
								counter<={32{1'd0}};
							end
						end
					end
				CountSys: begin
					numBlocks<=numBlocks+1;
					state<=Savex;
				end
				Savex: begin
					write<=1;
					counter<=counter+1;
					shx<=1;
					if(counter==32'd0) begin
						write<=0;
					end
					if (counter==N) begin
						counter<=0;
						if (numBlocks==B) begin 
							state<=End;
						end else begin
							state<=NewSystem;
						end
					end
				end
				End: begin
					state<=state;
					final<=1;
				end
			endcase
				
				
			end
		end

endmodule
