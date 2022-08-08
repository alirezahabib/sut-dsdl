`timescale 1ns / 1ps

// instruction memory
module instruction_mem(
    input clock,
    input reset,
    input write_en,
    input [4:0] address,
    input [7:0] data_in,
    output reg [7:0] data_out
    );
    reg [16:0] data_reg [0:31];

    always @(negedge clock or posedge reset) begin
        if(reset) begin
            data_out = 8'b0;
        end
        else begin
            if(write_en) data_reg[address] <= data_in;
            data_out <= data_reg[address];
        end
    end
endmodule