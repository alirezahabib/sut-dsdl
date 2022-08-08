`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:30:01 04/19/2022
// Design Name:   stack
// Module Name:   C:/HW4-99109393-project/stack_tb.v
// Project Name:  HW4-99109393-project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: stack
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module stack_tb;

	// Inputs
	reg Clk;
	reg RstN;
	reg [7:0] Data_In;
	reg Push;
	reg Pop;

	// Outputs
	wire [7:0] Data_Out;
	wire Full;
	wire Empty;

	// Instantiate the Unit Under Test (UUT)
	stack uut (
		.Clk(Clk), 
		.RstN(RstN), 
		.Data_In(Data_In), 
		.Push(Push), 
		.Pop(Pop), 
		.Data_Out(Data_Out), 
		.Full(Full), 
		.Empty(Empty)
	);

	always #5 Clk = ~Clk;
	
	initial begin
		// Initialize Inputs
		Clk = 0;
		RstN = 1'b1;
		Data_In = 0;
		Push = 0;
		Pop = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		$monitor("Data in = %d, Data out = %d, Full = %d, Empty = %d, Push = %d, Pop = %d", Data_In, Data_Out, Full, Empty, Push, Pop);
		
		RstN = 1'b0; #10;
		RstN = 1'b1; #10;
		
		
		Data_In = 8'd1;
		Push = 1'b1;
		#40
		Data_In = 8'd2;
		#40
		Data_In = 8'd3;
		#40
		Data_In = 8'd4;
		#40
		Push = 1'b0;
		#30
		Pop = 1'b1;
		#200;
		$stop;
	end
      
endmodule

