`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:52:13 05/31/2022 
// Design Name: 
// Module Name:    UART_receiver 
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
module UART_receiver(
    input serial_in,
    output reg busy,
    output reg [DATA_WIDTH-1:0] data_reg,
    output reg fault
    );
    
    parameter DATA_WIDTH = 7;
    parameter bud = 10;
    reg parity;
	 reg stop_signal;
    integer i;
    
    initial begin
        busy <= 1'b0;
        data_reg <= 0;
        fault <= 1'b0;
    end
    
    always @(posedge serial_in) begin
        if (~busy) begin
            busy = 1'b1;
            #(bud/2);
            #bud parity = serial_in;
            
            for (i = 0; i < DATA_WIDTH; i = i + 1) begin
                #bud data_reg[i] = serial_in;
            end
            
            #bud fault = (parity != ^data_reg) & serial_in; // check parity and stop signal
            #bud busy = 1'b0;
        end
    end
endmodule