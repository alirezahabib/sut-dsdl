`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:10:56 05/31/2022 
// Design Name: 
// Module Name:    transmitter 
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
// UART transmitter
module UART_transmitter(
    input send,
    input [DATA_WIDTH-1:0] data,
    output reg serial_out,
    output reg busy
    );

    parameter DATA_WIDTH = 7;
    parameter bud = 10;
    reg [DATA_WIDTH-1:0] data_reg;
	 integer i;

    initial begin
        data_reg <= 0;
        serial_out <= 0;
        busy <= 0;
    end

    always @(posedge send) begin
	     if (~busy) begin
		      busy = 1'b1;
		      data_reg = data;
            serial_out = 1'b1;
            #bud serial_out = ^data_reg;
            
            for (i = 0; i < DATA_WIDTH; i = i + 1) begin
                #bud serial_out = data_reg[i];
            end
		      #bud serial_out = 1'b1; // stop signal
				#bud serial_out = 1'b0; // reset the dataline
				busy = 1'b0;
		  end
        
    end
endmodule