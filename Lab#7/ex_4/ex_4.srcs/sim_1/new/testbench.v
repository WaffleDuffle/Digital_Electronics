`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2024 21:30:37
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench(

    );
    
    reg a_tb, b_tb, clock_tb;
    wire no_FF_out0, no_FF_out1;
    wire with_FF_out0, with_FF_out1;
    
    circuit_fara_FF DUT0(.a(a_tb), .b(b_tb), .out0(no_FF_out0), .out1(no_FF_out1));
    circuit_cu_FF DUT1(.a(a_tb), .b(b_tb), .clk(clock_tb),  .Q0(with_FF_out0), .Q1(with_FF_out1));
    
    initial begin
        clock_tb = 1;
        forever #20 clock_tb = ~clock_tb;
    end
    
    initial begin
        a_tb = 0;
    end
    
    initial begin
        b_tb = 0;
        #60 b_tb = 1;
    end
    
    initial begin
        #120 $stop();
    end
    
endmodule
