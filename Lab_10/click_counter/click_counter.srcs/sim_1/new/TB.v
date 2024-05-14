`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2024 19:32:35
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
    reg button;
    wire [6:0] out;
    
    top DUT(
        .clk(clk),
        .reset(reset),
        .button(button),
        .out(out)
    );
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        reset = 0;
        button = 0;
        
        #50 reset = 1;
        #50 reset = 0;
        #100
        repeat(5) begin
            button = 1;
            repeat(70_000) begin
                @(posedge clk);
            end
            
            button = 0;
            repeat(70_000) begin
                @(posedge clk);
            end
        end
        
        #1000 $stop();
            
        
    end
    
endmodule
