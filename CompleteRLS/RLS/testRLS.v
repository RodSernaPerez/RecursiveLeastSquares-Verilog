`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:56:05 04/02/2016
// Design Name:   RLS
// Module Name:   C:/Users/Rodrigo/Desktop/Universidad/Cuarto/Project/RecLeastSquares/RLS/testRLS.v
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

module testRLS;

	parameter N=2;
	parameter M=2;
	parameter nBits=32;
	
	// Inputs
	reg clk;
	reg [31:0] y;
	reg reset;
	reg newIt;

	// Outputs
	wire [N*nBits-1:0]x;

	// Instantiate the Unit Under Test (UUT)
	RLS #(.nBits(nBits),.N(N),.M(M))uut (
		.wireA(wireA),
		.wireKs(wireKs),
		.clk(clk), 
		.y(y), 
		.reset(reset), 
		.newIt(newIt),
		.x(x)
	);


		always #5 clk=!clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		y = 0;
		reset = 1;
		newIt=0;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset=0;
		#20;
		reset=1;
		#200;
		y={17'd12,15'd0};
		newIt=1;
		#10
		newIt=0;
		#500
		y={17'd14,15'd0};
		newIt=1;
		#10
		newIt=0;
		#100;
		$display("%d  %d  %d \n",x[3*32-2:3*32-17],x[2*32-2:2*32-17],x[32-2:32-1-17]);
		$display("%h\n",x);
	end
      
endmodule

