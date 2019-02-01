`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:18:49 04/14/2016
// Design Name:   RLS
// Module Name:   C:/Users/Rodrigo/Desktop/Universidad/Cuarto/Project/RecLeastSquares/RLS/TestRLS2.v
// Project Name:  RLS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RLS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestRLS2;

	parameter N=3;
	parameter M=6;
	parameter nBits=32;
	
	// Inputs
	reg clk;
	reg [31:0] y;
	reg reset;
	reg newIt;

	// Outputs
	wire encounter;
	wire write;
	wire ensyscoun;
	wire [31:0] x;
	reg [N*nBits-1:0] wireA;
	reg [N*nBits-1:0] wireKs;

	// Instantiate the Unit Under Test (UUT)
	RLS #(.nBits(nBits),.N(N),.M(M))uut (
		.clk(clk), 
		.y(y), 
		.reset(reset), 
		.newIt(newIt), 
		.encounter(encounter), 
		.write(write), 
		.ensyscoun(ensyscoun), 
		.x(x), 
		.wireA(wireA), 
		.wireKs(wireKs)
	);

	always #5 clk=!clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		y = 0;
		reset = 1;
		newIt = 0;
		wireA={17'd1,15'd0,17'd2,15'd0,17'd3,15'd0};
		wireKs={17'd3,15'd0,17'd1,15'd0,17'd2,15'd0};
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset=0;
		y={17'd5,15'd0};
		#10
		reset=1;
		#80
		newIt=1;
		#10
		newIt=0;
		#60;
			
	end
      
endmodule

