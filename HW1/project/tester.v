// Verilog test fixture created from schematic C:\dsdl1\bcd311.sch - Tue Mar 08 10:22:46 2022

`timescale 1ns / 1ps

module bcd311_bcd311_sch_tb();

// Inputs
   reg a0;
   reg c0;
   reg a1;
   reg c1;
   reg a2;
   reg c2;
   reg a3;
   reg c3;
   reg b0;
   reg d0;
   reg b1;
   reg d1;
   reg b2;
   reg d2;
   reg b3;
   reg d3;

// Output
   wire out3;
   wire out11;

// Bidirs

// Instantiate the UUT
   bcd311 UUT (
		.a0(a0), 
		.c0(c0), 
		.a1(a1), 
		.c1(c1), 
		.a2(a2), 
		.c2(c2), 
		.a3(a3), 
		.c3(c3), 
		.b0(b0), 
		.d0(d0), 
		.b1(b1), 
		.d1(d1), 
		.b2(b2), 
		.d2(d2), 
		.b3(b3), 
		.d3(d3), 
		.out3(out3), 
		.out11(out11)
   );

	initial begin
	// input = 1346 (odds none)
	a0 = 1;
	a1 = 0;
	a2 = 0;
	a3 = 0;
	
	b0 = 1;
	b1 = 1;
	b2 = 0;
	b3 = 0;
	
	c0 = 0;
	c1 = 0;
	c2 = 1;
	c3 = 0;
	
	d0 = 0;
	d1 = 1;
	d2 = 1;
	d3 = 0;
	#15;
	
	
	// input = 9273 (odds 3 and 11)
	a0 = 1;
	a1 = 0;
	a2 = 0;
	a3 = 1;
	
	b0 = 0;
	b1 = 1;
	b2 = 0;
	b3 = 0;
	
	c0 = 1;
	c1 = 1;
	c2 = 1;
	c3 = 0;
	
	d0 = 1;
	d1 = 1;
	d2 = 0;
	d3 = 0;
	#15;
	
	// input = 9276 (odds 3)
	a0 = 1;
	a1 = 0;
	a2 = 0;
	a3 = 1;
	
	b0 = 0;
	b1 = 1;
	b2 = 0;
	b3 = 0;
	
	c0 = 1;
	c1 = 1;
	c2 = 1;
	c3 = 0;
	
	d0 = 0;
	d1 = 1;
	d2 = 1;
	d3 = 0;
	#15;
	
	$finish;
	end
endmodule
