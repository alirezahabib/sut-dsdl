`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:47:10 04/19/2022 
// Design Name: 
// Module Name:    stack 
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
module stack(
    input Clk,
    input RstN,
    input [7:0] Data_In,
    input Push,
    input Pop,
    output reg [7:0] Data_Out,
    output reg Full,
    output reg Empty
    );
	 
	 reg [7:0] storage [15:0];
	 reg [4:0] counter = 5'b0;
	 
	 always @(posedge Clk, negedge RstN) begin
		if (~RstN) 
			begin
			counter = 0;
			Data_Out = 8'bz;
			end
		else if (Pop && Empty) 
			begin
			counter = counter - 1;
			Data_Out = storage[counter];
			end
		else if (Push && ~Full)
			begin
			storage[counter] = Data_In;
			counter = counter + 1;
			end
		
	 Full <= (counter == 16);
	 Empty <= (counter != 0);
	 end
endmodule
