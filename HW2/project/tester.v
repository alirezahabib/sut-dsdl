// Verilog test fixture created from schematic C:\HW2-99109393\room15.sch - Tue Apr 05 04:54:18 2022

`timescale 1ns / 1ps

module room15_room15_sch_tb();

// Inputs
   reg T;
   reg Ent;
   reg out1;
   reg in1;
   reg clk;

// Output
   wire close;
   wire q0_debug;
   wire q1_debug;
   wire q2_debug;
   wire q3_debug;
   wire open1;
   wire Enable_debug;
   wire U_debug;

// Bidirs

// Instantiate the UUT
   room15 UUT (
		.close(close), 
		.q0_debug(q0_debug), 
		.q1_debug(q1_debug), 
		.q2_debug(q2_debug), 
		.q3_debug(q3_debug), 
		.T(T), 
		.Ent(Ent), 
		.open1(open1), 
		.out1(out1), 
		.in1(in1), 
		.clk(clk), 
		.Enable_debug(Enable_debug), 
		.U_debug(U_debug)
   );
// Initialize Inputs
	always #5 clk = ~clk;
	
	initial begin
	T = 0;
	Ent = 0;
	out1 = 0;
	in1 = 0;
	clk = 0;
	#50
	
	Ent = 1; #20 Ent = 0; #20
	in1 = 1; #10 in1 = 0; #10
	
	T = 1;
	Ent = 1; #20 Ent = 0; #20;
	in1 = 1; #10 in1 = 0; #10;
	
	out1 = 1; #10 out1 = 0; #10;
	
	out1 = 1; #10 out1 = 0; #10;
	
	Ent = 1; #20 Ent = 0;
	#10 in1 = 1; #10 in1 = 0;
	#10 in1 = 1; #10 in1 = 0;
	#10 in1 = 1; #10 in1 = 0;
	#10 in1 = 1; #10 in1 = 0;
	#10 in1 = 1; #10 in1 = 0;
	#10 in1 = 1; #10 in1 = 0;
	#10 in1 = 1; #10 in1 = 0;
	#10 in1 = 1; #10 in1 = 0;
	#10 in1 = 1; #10 in1 = 0;
	#10 in1 = 1; #10 in1 = 0;
	#10 in1 = 1; #10 in1 = 0;
	#10 in1 = 1; #10 in1 = 0;
	#10 in1 = 1; #10 in1 = 0;
	#10 in1 = 1; #10 in1 = 0;
	#10 in1 = 1; #10 in1 = 0;
	
	#20 Ent = 1; #20 Ent = 0;
	
	end
endmodule
