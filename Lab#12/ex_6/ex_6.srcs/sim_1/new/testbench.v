`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2024 19:16:31
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


module testbench(

    );
    reg clk;
    reg en = 1;
    reg reset;
    reg save;
    reg [1:0] sel;
    reg [3:0] data;
    reg [3:0] wr_addr;
    wire [3:0] instruction;
    
    top DUT(
        .clk(clk),
        .en(en),
        .reset(reset),
        .save(save),
        .sel(sel),
        .data(data),
        .wr_addr(wr_addr),
        .instruction(instruction)    
    );
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    
    initial begin
        reset = 1;
        #30 reset = 0;
        #20 reset = 1;
    end
    
    initial begin
        save = 1;
        sel = 0;
        #70 save = 0;
            sel = 1;
        #40 save = 1;
            sel = 0;
        #10 save = 0;
        #10 save = 1;
    end
    
    initial begin
        data = 0;
        wr_addr = 0;
        #70 data = 1;
            wr_addr = 0;    
        #10 data = 2;
            wr_addr = 1;
        #10 data = 2;
            wr_addr = 2;
        #10 data = 1;
            wr_addr = 3;
        #10 data = 0;
            wr_addr = 0;
        #10 data = 5;
        #10 data = 0;
        
    end
    
    initial begin
        #200 $stop();
    end
endmodule
