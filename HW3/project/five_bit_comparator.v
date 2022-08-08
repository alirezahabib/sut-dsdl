`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:43:53 04/12/2022 
// Design Name: 
// Module Name:    five_bit_comparator 
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
module five_bit_comparator(
    input [4:0] A,
    input [4:0] B,
    output E,
    output L,
    output G
    );
	 
	 wire [3:0] E0;
	 wire [3:0] L0;
	 wire [3:0] G0; 
	 
	 comparator c0(A[0], B[0], 1'b1, 1'b0, 1'b0, E0[0], L0[0], G0[0]);
	 comparator c1(A[1], B[1], E0[0], L0[0], G0[0], E0[1], L0[1], G0[1]);
	 comparator c2(A[2], B[2], E0[1], L0[1], G0[1], E0[2], L0[2], G0[2]);
	 comparator c3(A[3], B[3], E0[2], L0[2], G0[2], E0[3], L0[3], G0[3]);
	 comparator c4(A[4], B[4], E0[3], L0[3], G0[3], E, L, G);
endmodule
