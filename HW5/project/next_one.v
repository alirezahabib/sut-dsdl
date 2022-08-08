`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:05:18 05/10/2022 
// Design Name: 
// Module Name:    next_one 
// Project Name:   hw5-99109393
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
module next_one( // find the first 10 pattern in a 4 bit input
    input [3:0] A,
    output [1:0] address
    );
    assign address[0] = A[1] & ~A[0] | A[3] & ~A[2] & ~A[1] & ~A[0];
    assign address[1] = A[2] & ~A[1] & ~A[0] | A[3] & ~A[2] & ~A[1] & ~A[0];
endmodule
