`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:09:52 05/17/2022
// Design Name:   incubator
// Module Name:   C:/hw6-99109393/incubator_tb.v
// Project Name:  hw6-99109393
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: incubator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module incubator_tb;

	// Inputs
	reg [7:0] T;
	reg clk;
	reg rst;

	// Outputs
	wire cooleron;
	wire heateron;
	wire [3:0] crs;

	// Instantiate the Unit Under Test (UUT)
	incubator uut (
		.cooleron(cooleron), 
		.heateron(heateron), 
		.crs(crs), 
		.T(T), 
		.clk(clk), 
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		T = 0;
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
		#10;
		rst = 1;
      
		// Add stimulus here
		
		T = 60;
		#10 clk = 1; #10 clk = 0;
		#10 clk = 1; #10 clk = 0;
		#10 clk = 1; #10 clk = 0;
		#10 clk = 1; #10 clk = 0;
		#10 clk = 1; #10 clk = 0;
		
		T = -10;
		#10 clk = 1; #10 clk = 0;
		#10 clk = 1; #10 clk = 0;
		#10 clk = 1; #10 clk = 0;
		#10 clk = 1; #10 clk = 0;
		#10 clk = 1; #10 clk = 0;
		#10 clk = 1; #10 clk = 0;
		
		T = 27;
		#10 clk = 1; #10 clk = 0;
		#10 clk = 1; #10 clk = 0;
		#10 clk = 1; #10 clk = 0;
		#10 clk = 1; #10 clk = 0;
		#10 clk = 1; #10 clk = 0;
		
		T = 36;
		#10 clk = 1; #10 clk = 0;
		#10 clk = 1; #10 clk = 0;
		#10 clk = 1; #10 clk = 0;
		#10 clk = 1; #10 clk = 0;
		
		$stop;
	end
      
endmodule

