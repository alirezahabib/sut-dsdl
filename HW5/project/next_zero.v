`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:12:30 05/10/2022 
// Design Name: 
// Module Name:    next_zero 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module next_zero(
    input [3:0] A,
    output [2:0] address
    );
	 assign address[0] = ~A[1] & A[0] | ~A[3] & A[2] & A[1] & A[0];
    assign address[1] = ~A[2] & A[1] & A[0] | ~A[3] & A[2] & A[1] & A[0];
    assign address[2] = A[3] & A[2] & A[1] & A[0]; // no zero is found in the number (0)1111
endmodule
