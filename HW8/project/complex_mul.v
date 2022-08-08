`timescale 1ns / 1ps

// multiply two complex numbers
module complex_mul(
    input wire [7:0] a,
    input wire [7:0] b,
    output wire [7:0] c
    );

    wire [3:0] a_real, a_imag, b_real, b_imag, c_real, c_imag;
    assign a_real = a >> 4;
    assign a_imag = a;
    assign b_real = b >> 4;
    assign b_imag = b;

    assign c_real = a_real * b_real - a_imag * b_imag;
    assign c_imag = a_real * b_imag + a_imag * b_real;
    
    assign c = {c_real, c_imag};
endmodule
