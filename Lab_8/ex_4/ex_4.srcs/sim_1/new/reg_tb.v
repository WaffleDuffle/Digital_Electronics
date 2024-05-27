`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2024 13:04:07
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
    reg  data_in;
    wire [7:0] data_out;
    
    s_p_reg DUT(
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
        en = 1;
    @(posedge clk);
        data_in = 1;
    repeat(3) begin
        @(posedge clk);
    end    
    @(posedge clk);
        data_in = 0;
    //@(posedge clk);
     //   en = 0;
    @(posedge clk);
        data_in = 1;
        
    @(posedge clk);
        en = 0;
    @(posedge clk);
        we = 1;
    #20 $stop();
        
    end
endmodule
