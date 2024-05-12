`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2024 12:35:52
// Design Name: 
// Module Name: reg_tb
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


module reg_tb(

    );
    
    reg clk;
    reg en;
    reg we;
    reg [7:0] data_in;
    wire data_out;
    
    p_s_reg DUT(
    .clk(clk),
    .en(en),
    .we(we),
    .data_in(data_in),
    .data_out(data_out));
    
    initial begin
        clk = 0;
     forever #5 clk = ~clk;
    end
    
    initial begin
    @(posedge clk);
        data_in = 8'b01001101;
    @(posedge clk);
        we = 1;
    @(posedge clk);
        we = 0;
    repeat(8) begin
        @(posedge clk);
        en = 1;
        @(posedge clk);
        en = 0;
    end    
    #5 $stop();
        
    end
endmodule
