`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    07:49:58 05/10/2022
// Design Name:
// Module Name:    multiplier
// Project Name: hw5-99109393
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
module multiplier(
    input clk,
    input rst,
    input [3:0] B,
    input [3:0] Q,
    output reg [7:0] AQ
    );

    reg [3:0] shift;
    reg [7:0] Q_long, B_long;
    reg not_first;
    wire first_one = not_first & B_long[0];
	wire [2:0] next_zero_add;
    wire [1:0] next_one_add;
    
    next_zero nz (B_long, next_zero_add);
	next_one no (B_long, next_one_add);
    
	 always @ (negedge rst) begin
	    shift <= 4'b0;
        Q_long <= {4'b0, Q};
        B_long <= {4'b0, B};
		AQ <= 8'b0;
        not_first <= 1'b0;
	 end
    
    always @ (posedge clk) begin
        if (B_long > 0) begin
            not_first <= 1'b1;
            if (first_one) begin // 01
                AQ <= AQ + (Q_long << (next_zero_add + shift));
          	    B_long <= B_long >> next_zero_add;
	      	    shift <= shift + next_zero_add;
            end
            else begin // 10
                AQ <= AQ - (Q_long << (next_one_add + shift));
          	    B_long <= B_long >> next_one_add;
          	    shift <= shift + next_one_add;
	         end
	     end
	 end
endmodule
