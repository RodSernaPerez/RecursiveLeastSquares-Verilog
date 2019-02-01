`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:03:22 04/14/2016
// Design Name:   Experiment
// Module Name:   C:/Users/Rodrigo/Desktop/Universidad/Cuarto/Project/RecLeastSquares/RLS/TestExperiment.v
// Project Name:  RLS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Experiment
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestExperiment;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [31:0]x;
	wire write;
	wire final;


	// Instantiate the Unit Under Test (UUT)
	Experiment uut (
		.clk(clk), 
		.reset(reset), 
		.final(final),
		.write(write),
		.x(x)
	);

	always #15 clk=!clk;
	
	always @ (posedge clk) begin
		if (write==1) begin
			$display("%d", $signed(x[31:0])*2.0**-15);
	//		$fwrite(file,"%d\n",$signed(x[31:0])*2.0**-15);
		end
	/*	if (final==1) begin
				$fclose(file);
		end*/
	end
	
	initial begin
		// Initialize Inputs
		//file = $fopen ("SimulacionImagen2.txt", "w");
		clk = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#100
      reset=0;
		#15
		reset=1;
		#85;
		#1000
		#1000;

		
		
		// Add stimulus here

	end
      
endmodule

