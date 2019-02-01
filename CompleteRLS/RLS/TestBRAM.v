`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:48:12 04/04/2016
// Design Name:   BRAM
// Module Name:   C:/Users/Rodrigo/Desktop/Universidad/Cuarto/Project/RecLeastSquares/RLS/TestBRAM.v
// Project Name:  RLS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BRAM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestBRAM;

	// Inputs
	reg clka;
	reg [0:0] wea;
	reg [14:0] addra;
	reg [31:0] dina;

	// Outputs
	wire [31:0] douta;
	
	
	reg [4:0]i;
	
	// Instantiate the Unit Under Test (UUT)
	BRAM uut (
		.clka(clka), 
		.wea(wea), 
		.addra(addra), 
		.dina(dina), 
		.douta(douta)
	);

	always #5 clka=!clka;
	
	initial begin
		// Initialize Inputs
		clka = 0;
		wea = 0;
		addra = 0;
		dina = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for(i=0;i!=5'd10;i=i+1)  begin
			addra<=i;
			dina<=i;
			#10
			wea<=1'b1;
			#10
			wea<=1'b0;
			#10;
		end
		dina<=0;
		#30
		for(i=0;i!=5'd10;i=i+1) begin
			addra<=i;
			#10
			if(douta!=i)
				$display("It didn't work for %d\n",i);
			else
				$display("It worked for %d\n",i);
		end
		#100;
	end
      
endmodule

