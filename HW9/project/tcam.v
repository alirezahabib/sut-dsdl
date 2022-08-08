`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        Sharif University of Technology
// Engineer:       Alireza Habibzadeh
// 
// Create Date:    05:07:38 06/21/2022 
// Design Name: 
// Module Name:    tcam 
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

// Ternary Content Addressable Memory
module tcam(
    input clock,
    input reset,
    input [15:0] arg,
    input [15:0] key,
    input [3:0] write_address,
    input read_enable,
    input write_enable,
    output reg [15:0] match_result
    );

    reg [15:0] data [0:15];
    reg [4:0] i;

    always @(posedge clock or negedge reset) begin
        if (!reset) begin
            match_result <= 0;
            for (i = 0; i < 16; i = i + 1) data[i] <= 0;
        end else begin
            if (read_enable)
                for (i = 0; i < 16; i = i + 1)
                    match_result[i] <= |{1'bx, (arg ^ data[i]) & key} === 1'bx;
            else if (write_enable)
                data[write_address] <= ~(key | 16'bxxxxxxxxxxxxxxxx) ^ arg;
        end
    end
endmodule
