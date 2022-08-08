`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:23:32 04/12/2022 
// Design Name: 
// Module Name:    comparator 
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
module comparator(
    input A,
    input B,
    input E0,
    input L0,
    input G0,
    output E,
    output L,
    output G,
    );
	 
	 assign E = (A == B) & E0;  
    assign L = A == B ? L0 : A < B;
    assign G = A == B ? G0 : A > B;

endmodule
