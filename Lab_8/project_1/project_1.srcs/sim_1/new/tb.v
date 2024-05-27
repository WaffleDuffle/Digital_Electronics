`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2024 09:34:25
// Design Name: 
// Module Name: tb
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


module tb(
    
    );
    
    reg [7:0] data_in;
    reg clk;
    reg we;
    reg reset;
    wire [7:0] data_out;
    
    register REGISTRU(.data_in(data_in), .clk(clk), .we(we), .reset(reset), .data_out(data_out));
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        #200 $stop();
    end
    
    initial begin
        reset = 0;
        @(posedge clk); // #5;
        reset = 1;
        @(posedge clk);
        reset = 0;
        repeat(6) begin  // dupa 6 fronturi iesi
            @(posedge clk);
        end
        
        we = 0;
        @(posedge clk);
        data_in = 17;
        @(posedge clk);
        data_in = 20;
        @(posedge clk);
        we = 1;
        data_in = 30;
        @(posedge clk);
        data_in = 25;
        @(posedge clk)
        we = 0;
        @(posedge clk);
        data_in = 15;
        
        repeat(6) begin  // dupa 6 fronturi iesi
            @(posedge clk);
        end
    end
    
endmodule
