`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2024 20:45:15
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
    
    reg clk;
    reg reset;
    wire out;
    
    top 
    #(.LIMIT_PERIOD(10),
      .LIMIT_NR_REPETITIONS(1)) DUT(
        .clk(clk),
        .reset(reset),
        .out(out)
    );
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        @(negedge clk);
        reset = 1;
        @(negedge clk);
        reset = 0;
        #30000 $stop();
         
    end
    
    
    
endmodule
