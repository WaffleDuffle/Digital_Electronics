`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2024 09:56:16
// Design Name: 
// Module Name: testbench
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


module testbench();
    reg [3:0] sin;
    reg [1:0] sel;
    wire out;
    
    initial begin
        #100 $stop();
    end
    
    initial begin
        sin = 4'b0010;
        sel = 2'b10;
        #10 sel = 2'b00;
        #20 sel = 2'b11;
        #50 sin = 4'b1111;
    end
    
    mux DUT(.in(sin), .sel(sel), .out(out));
    
endmodule
