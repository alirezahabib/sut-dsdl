`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:03:52 04/12/2022
// Design Name:   five_bit_comparator
// Module Name:   C:/HW2-99109393-project/five_bit_comparator_tb.v
// Project Name:  HW2-99109393-project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: five_bit_comparator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module five_bit_comparator_tb;

	// Inputs
	reg [4:0] A;
	reg [4:0] B;

	// Outputs
	wire E;
	wire L;
	wire G;

	// Instantiate the Unit Under Test (UUT)
	five_bit_comparator uut (
		.A(A), 
		.B(B), 
		.E(E), 
		.L(L), 
		.G(G)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		$monitor("A = %d, B = %d, (A == B) = %d, (A < B) = %d, (A > B) = %d", A, B, E, L, G); 
		
		A = 5'd12;
		B = 5'd13;
		#10;
		
		A = 5'd15;
		B = 5'd15;
		#10;
		
		A = 5'd0;
		B = 5'd9;
		#10;
		
		A = 5'd7;
		B = 5'd7;
		#10;
		
		A = 5'd0;
		B = 5'd0;
		#10;
		
		A = 5'd1;
		B = 5'd2;
		#10;
		
		A = 5'd2;
		B = 5'd1;
		#10;
		
		A = 5'd14;
		B = 5'd15;
		#10;
		
		$stop;
	end
      
endmodule

