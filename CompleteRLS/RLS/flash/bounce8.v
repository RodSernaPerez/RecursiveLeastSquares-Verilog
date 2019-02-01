//Module bounce8 continuously pulses a high signal from bit Q0 to bit Q7 
// and then back from bit Q7 to bit Q0 to give the effect of a signal
// bouncing back and forth from one edge of the register to the other.
`timescale 1ns / 1ps

module bounce8(clk, reset, Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7);

    input clk;
    input reset;
   output Q0;
   output Q1;
   output Q2;
   output Q3;
   output Q4;
   output Q5;
   output Q6;							   
   output Q7;
   
   reg sel;
   reg [7:0] QOUT;

always@(posedge clk or posedge reset)
   begin
      if(reset)     
	 QOUT <= 8'b00000001;
      else if (sel)	 //sel determines the direction the high pulse is shifted. 
		QOUT <= {1'b0, QOUT[7:1]};
	 else
	     QOUT <= {QOUT[6:0], 1'b0};
   end


always@ (posedge clk or posedge reset)
   begin
   	 if (reset)
	     sel = 1'b0;
	 else if (Q6)
	 	sel = 1'b1;   
	 else if (Q1)
	 	sel = 1'b0;
	 else
	 	sel = sel;
   end

   assign Q0 = QOUT[0];
   assign Q1 = QOUT[1];
   assign Q2 = QOUT[2];
   assign Q3 = QOUT[3];
   assign	Q4 = QOUT[4];
   assign	Q5 = QOUT[5];
   assign	Q6 = QOUT[6];
   assign	Q7 = QOUT[7];

endmodule
