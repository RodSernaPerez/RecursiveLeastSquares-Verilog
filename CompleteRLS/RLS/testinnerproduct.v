`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:25:29 04/01/2016
// Design Name:   RLS
// Module Name:   C:/Users/Rodrigo/Desktop/Universidad/Cuarto/Project/RecLeastSquares/RLS/testinnerproduct.v
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

module testinnerproduct;

	// Inputs
	reg clk;
	reg [31:0] y;
	reg reset;
	reg load;
	reg shift;
	reg en1;
	reg seleccion;

	// Outputs
	wire x;
	wire [31:0]s;

	// Instantiate the Unit Under Test (UUT)
	RLS uut (
		.clk(clk), 
		.y(y), 
		.reset(reset), 
		.load(load), 
		.shift(shift), 
		.en1(en1), 
		.x(x), 
		.s(s),
		.seleccion(seleccion)
	);
	
	always #5 clk=!clk;
	
	initial begin
		// Initialize Inputs
		clk = 1;
		y = 0;
		reset = 1;
		load = 0;
		shift = 0;
		en1 = 0;
		seleccion=0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset=0;
		#10
		reset=1;
		#50
		load=1;
		#10
		load=0;
		#10
		seleccion=1;
		#90
		en1=1;
		shift=1;
		#20;

	end
      
endmodule

