`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2024 21:28:06
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
    
    reg start;
    reg clk;
    reg reset;
    reg [7:0] data_in;
    wire out_tx;
    
    top DUT(
        .start(start),
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .out_tx(out_tx)
    );
    
    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end
    
    initial begin
        start = 1;
        reset = 1;
        #2 reset = 0;
        
        #2 data_in = 8'b11111111;
        #10000 $stop();
    end
    
endmodule
