`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:41:37 05/31/2022
// Design Name:   UART_transmitter
// Module Name:   C:/hw7-99109393/transmitter_tb.v
// Project Name:  hw7-99109393
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: UART_transmitter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module transmitter_tb;

	// Inputs
	reg send;
	reg [6:0] data;

	// Outputs
	wire line;
	wire transmitter_busy;
	wire receiver_busy;
	wire receiver_fault;
	wire [6:0] received_data;
	

	// Instantiate the Unit Under Test (UUT)
	UART_transmitter transmitter (
		.send(send), 
		.data(data), 
		.serial_out(line), 
		.busy(transmitter_busy)
	);
	
	UART_receiver receiver (
		.serial_in(line), 
		.busy(receiver_busy), 
		.data_reg(received_data), 
		.fault(receiver_fault)
	);
	
	always @(negedge receiver_busy) begin
	    $display("sent: %s, received: %s\nparity fault: %b\n", data, received_data, receiver_fault);
	end

	initial begin
		// Initialize Inputs
		send = 0;
		data = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here		
		data = "S";
		#5 send = 1; #5 send = 0;
		#140;
		
		data = "a";
		#5 send = 1; #5 send = 0;
		#140;
		
		data = "l";
		#5 send = 1; #5 send = 0;
		#140;
		
		data = "a";
		#5 send = 1; #5 send = 0;
		#140;
		
		data = "m";
		#5 send = 1; #5 send = 0;
		#140;
		
		data = "!";
		#5 send = 1; #5 send = 0;
		#140;
		$finish;
	end
endmodule

