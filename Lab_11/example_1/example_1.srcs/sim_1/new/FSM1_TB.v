`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2024 10:23:00
// Design Name: 
// Module Name: FSM1_TB
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


module FSM1_TB(

    );
    
    reg clk;
    reg reset;
    reg in;
    wire detectOk;
    wire detectFail;
    
    FSM1 DUT(
        .clk(clk),
        .reset(reset),
        .in(in),
        .detectOk(detectOk),
        .detectFail(detectFail)
    );
    
    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end
    
    initial begin
        in = 1;
        #5 reset = 1;
        #5 reset = 0;
        #10 in = 0;
        #10 in = 1;
        #10 $stop();
        
    end
    
endmodule
