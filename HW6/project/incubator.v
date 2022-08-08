`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    14:03:59 05/17/2022
// Design Name:
// Module Name:    incubator
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
module incubator(cooleron,
                 heateron,
					  crs,
					  T,
					  clk,
					  rst);
					  
   	output reg cooleron, heateron;
	output reg [3:0] crs;
	input signed [7:0] T;
	input rst, clk;
	
	always @(posedge clk or negedge rst)
	begin
		if(rst == 1'b0) begin
		   cooleron <= 1'b0;
			heateron <= 1'b0;
		end
		else
			case({cooleron, heateron})
				2'b00: begin
					if(T > 35) cooleron <= 1'b1;
					else if(T < 15) heateron <= 1'b1;
				end
				2'b01: if(T > 30) heateron <= 1'b0;
				2'b10: if(T < 25) cooleron <= 1'b0;
				2'b11: {heateron, cooleron} <= 2'b00;
			endcase
	end
	
	always @(posedge clk or negedge rst) begin
		if(rst == 1'b0) crs <= 4'b00;
		else if(cooleron)
			case(crs)
				0: if(T > 35) crs <= 4'd4;
				4: begin
					if(T > 40) crs <= 4'd6;
					else if(T < 25) crs <= 4'd0;
				end
				6: begin
					if(T > 45) crs <= 4'd8;
					else if(T < 35) crs <= 4'd4;
				end
				8: if(T < 40) crs <= 4'd6;
			endcase
		else crs <= 4'b0;
	end
endmodule