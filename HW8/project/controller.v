`timescale 1ns / 1ps
// top controller module
module controller(
    input clock,
    input reset
    );

    reg [4:0] count;
    wire [16:0] instruction;
    wire [4:0] op1_addr, op2_addr, dest_addr;
    wire [1:0] op;

    reg [7:0] result;
    reg [7:0] op1, op2;

    wire add_result, mul_result;

    data_mem dm (
        .clock(clock),
        .reset(reset),
        .address(dest_addr),
        .data_in(result));

    instruction_mem im (
        .clock(clock),
        .reset(reset),
        .address(count),
        .data_out(instruction)
    );

    complex_add_subtract adder(
        .a(op1),
        .b(op2),
        .op(op[0]), // select add or subtract
        .c(add_result)
    );

    complex_mul muller(
        .a(op1),
        .b(op2),
        .c(mul_result)
    );

    always @(posedge clock or posedge reset) begin
        if(reset || count == 32) begin
            count <= 0;
        end else begin
            case (op)
                //0: // nop
                1: result <= mul_result;
                2: result <= add_result;
                3: result <= add_result;
            endcase

            count <= count + 1;
        end
    end
endmodule