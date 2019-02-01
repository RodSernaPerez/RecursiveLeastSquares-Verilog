`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:53:21 04/15/2016
// Design Name:   Experiment2
// Module Name:   C:/Users/Rodrigo/Desktop/Universidad/Cuarto/Project/RecLeastSquares/RLS/TestExperiment2.v
// Project Name:  RLS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Experiment2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestExperiment2;

	parameter N=16;
	parameter nBits=32;
	parameter B=2;
	parameter M=2;
	
	
	// Inputs
	reg clk;
	reg reset;
	
	wire write;
	wire [nBits-1:0]x;

	// Instantiate the Unit Under Test (UUT)
	Experiment2 #(.N(N),.M(M),.nBits(32),.B(B))uut (
		.clk(clk), 
		.write(write),
		.x(x),
		.reset(reset)
	);
	
	always @ (posedge clk) begin
		if (write==1) begin
			$display("%f", $signed(x[31:0])*(2.0**(-15)));
		end
	end
	

	always #15 clk=!clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#100
		reset=0;
		#10
		reset=1;
		#1000;

        
		// Add stimulus here

	end
      
endmodule

