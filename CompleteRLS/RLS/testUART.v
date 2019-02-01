`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:20:06 04/11/2016
// Design Name:   UARTmodule
// Module Name:   C:/Users/Rodrigo/Desktop/Universidad/Cuarto/Project/RecLeastSquares/RLS/testUART.v
// Project Name:  RLS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: UARTmodule
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testUART;

	// Inputs
	reg clk;
	reg reset;
	reg load;
	reg start;

	// Outputs
	wire serialo;

	// Instantiate the Unit Under Test (UUT)
	UARTmodule uut (
		.clk(clk), 
		.reset(reset), 
		.load(load), 
		.start(start), 
		.serialo(serialo)
	);
	
	always #5 clk=!clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		load = 0;
		start = 0;

		// Wait 100 ns for global reset to finish
		#100;
		reset=0;
		#20
		reset=1;
		#10
		load=1;
		#10
		load=0;
		#10
		start=1;
		#10
		start=0;
		#276447232;
        
		// Add stimulus here

	end
      
endmodule

