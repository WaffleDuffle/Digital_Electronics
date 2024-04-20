`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2024 10:00:18
// Design Name: 
// Module Name: test_new_latch
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


module test_new_latch(

    );
    
    reg D;
    reg clk;
    wire Q;
    
    new_latch DUT(.D(D), .clk(clk), .Q(Q));
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        #100 $stop();
    end
    
    initial begin
        D = 0;
        #5 D = 1;
        #10 D = 0;
        #30 D = 1;
    end
endmodule
