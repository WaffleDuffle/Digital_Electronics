`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2024 13:28:18
// Design Name: 
// Module Name: reg8_tb
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


module reg8_tb(

    );
    
    reg reset;
    reg clk;
    reg we;
    reg [7:0] data_in;
    wire [7:0] data_out;
    
    top DUT(
        .reset(reset),
        .clk(clk),
        .we(we),
        .data_in(data_in),
        .data_out(data_out)
    );
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        @(posedge clk);
        reset = 1;
        @(posedge clk);
        reset = 0;
        repeat(5) begin
            @(posedge clk);
        end
        we = 0;
        data_in = 8'b01110011;
        @(posedge clk);
        we = 1;
        @(posedge clk);
        data_in = 8'b11100110;
        repeat(6) begin
            @(posedge clk);
        end
        we = 0;
        #100 $stop();  
    end
    
endmodule
