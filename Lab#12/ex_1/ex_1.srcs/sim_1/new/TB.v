`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.05.2024 18:17:33
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
    reg en;
    reg [7:0] data_in;
    wire [7:0] data_read_consonants;
    wire [7:0] data_read_vowels;
    wire [7:0] consonants;
    wire [7:0] vowels;
    wire check;
    
    top DUT(
        .clk(clk),
        .reset(reset),
        .en(en),
        .data_in(data_in),
        .data_read_consonants(data_read_consonants),
        .data_read_vowels(data_read_vowels),
        .consonants(consonants),
        .vowels(vowels),
        .check(check)
    );
    
    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end
    
    initial begin
        @(negedge clk);
            reset = 1;
        repeat (5) begin
            @(negedge clk);
        end
        @(negedge clk);
            reset = 0;
        @(negedge clk);
            en = 1;
 /*       @(negedge clk);
            data_in = "a";
        @(negedge clk);
            data_in = "b";
        @(negedge clk);
            data_in = "c";
        @(negedge clk);
            data_in = "d";
        @(negedge clk);
            data_in = "e";
        @(negedge clk);
            data_in = "f"; */
        @(negedge clk);
            data_in = "c";
        @(negedge clk);
            data_in = "o";
        @(negedge clk);
            data_in = "n";
        @(negedge clk);
            data_in = "s";
        @(negedge clk);
            data_in = "t";
        repeat (5) begin
            @(negedge clk);
        end
        @(negedge clk);
            en = 0;
        #30 $stop();
    end
    
    
endmodule
