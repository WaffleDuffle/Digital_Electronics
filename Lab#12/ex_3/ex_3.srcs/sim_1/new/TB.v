`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 18:33:38
// Design Name: 
// Module Name: TB
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


module TB(
    
    );
   
    reg en;
    reg reset;
    reg clk;
    wire [7:0] sir;
    wire tester;
    
    top DUT(
        .en(en),
        .reset(reset),
        .clk(clk),
        .sir(sir),
        .tester(tester)
    );
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        #5 reset = 1;
        #10 reset = 0;
        #20 en = 1;
        #10000 $stop();
    end
endmodule
