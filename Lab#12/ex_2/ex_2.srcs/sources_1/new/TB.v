`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2024 17:41:07
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
    reg stop;
    reg clk;
    reg reset;
    reg [5:0] addr_r = 0;
    reg [11:0] seed = 12'b100101101111;
    wire [11:0] data_read;
    wire [11:0] data_current;
    
    top DUT(
        .start(start),
        .stop(stop),
        .clk(clk),
        .reset(reset),
        .addr_r(addr_r),
        .seed(seed),
        .data_read(data_read),
        .data_current(data_current)
    );
    
    initial begin
        #5 clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        reset = 1;
        #15 reset = 0;
    end
    
    initial begin
        #25 start = 1;
        #5 start = 0;
        #15 start = 1;
        #5 start = 0;
        #25 start = 1;
        #5 start = 0;
    end
    
    initial begin
        #30 stop = 1;
        #5 stop = 0;
        #20 stop = 1;
        #5 stop = 0;
        #35 stop = 1;
        #5 stop = 0;
    end
    
    initial begin
        #2000 $stop();
    end
    
    
endmodule
