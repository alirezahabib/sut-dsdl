`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:09:25 06/21/2022
// Design Name:   tcam
// Module Name:   C:/hw9-99109393/tcam_tb.v
// Project Name:  hw9-99109393
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: tcam
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tcam_tb;
	// Inputs
	reg clock;
	reg reset;
	reg [15:0] arg;
	reg [15:0] key;
	reg [3:0] write_address;
	reg read_enable;
	reg write_enable;

	// Outputs
	wire [15:0] match_result;

	// Instantiate the Unit Under Test (UUT)
	tcam uut (
		.clock(clock), 
		.reset(reset), 
		.arg(arg), 
		.key(key), 
		.write_address(write_address), 
		.read_enable(read_enable), 
		.write_enable(write_enable), 
		.match_result(match_result)
	);
	
	always #10 clock = ~clock;

	initial begin
		// Initialize Inputs
		clock = 0;
		reset = 1'b1;
		arg = 0;
		key = 0;
		write_address = 4'b0;
		read_enable = 1'b0;
		write_enable = 1'b0;

		// Wait 100 ns for global reset to finish
		#100;
      
		
		// Initial module reset
		reset = 0;
		#5 reset = 1;
		#10;
		
		
		// Write some content to the memory
		write_enable = 1;
		
		write_address = 0;
		arg = 16'b1010001001100111;
		key = 16'b1111000011110000;
		#20;
		write_address = 2;
		arg = 16'b1111111100000000;
		key = 16'b1100110011001100;
		#20;
		write_address = 3;
		arg = 16'b1111000011111111;
		key = 16'b1010101010101010;
		#20;
		write_address = 8;
		arg = 16'b1111111111111111;
		key = 16'b1000000000000001;
		#20;
		write_address = 9; // one check
		arg = 16'b0000000000000001;
		key = 16'b1111111111111111;
		#20;
		write_address = 10; // greater/equal 1000000000000000 check
		arg = 16'b1000000000000000;
		key = 16'b1000000000000000;
		#20;
		write_address = 11; // even check
		arg = 16'b0000000000000000;
		key = 16'b0000000000000001;
		#20;
		write_address = 12; // odd check
		arg = 16'b0000000000000001;
		key = 16'b0000000000000001;
		#20;
		write_address = 13; // tautology (always true) 
		arg = 16'b1111111111111111;
		key = 16'b0000000000000000;
		#20;
		write_address = 14; // all one (-1) check
		arg = 16'b1111111111111111;
		key = 16'b1111111111111111;
		#20;
		write_address = 15; // zero check
		arg = 16'b0000000000000000; 
		key = 16'b1111111111111111;
		#20;
		
		
		// Reading and testing
		read_enable = 1; // if read_enable == 1 write_enable is ignored
		arg = 16'b0011001100110011;
		key = 0;
		#20;
		key = 16'b1111111111111111;
		#20;
		key = 16'b0000000000000000;
		#20;
		key = 16'b0000000011111111;
		arg = 16'b1100101101100101;
		#20;
		key = 16'b1010101010101010;
		arg = 16'b1100110011001100;
		#20;
		key = 16'b1111111111111111;
		arg = 16'b0000110011001100;
		#20;
		key = 16'b1111111111111111;
		arg = 16'b0000000000000000;
		#20;
		key = 16'b1111111111111111;
		arg = 16'b0000000000000001;
		#20;
		key = 16'b0000000011111111;
		arg = 16'b0000000001010101;
		#40;
		$finish;
	end
endmodule

