`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2024 21:28:15
// Design Name: 
// Module Name: ram64x8_tb
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


module ram64x8_tb(

    );
    
    reg clk_tb;
    reg we_tb;
    reg [5:0] addr_write_tb;
    reg [5:0] addr0_read_tb;
    reg [5:0] addr1_read_tb;
    reg [7:0] data_write_tb;
    wire [7:0] data0_read_tb;
    wire [7:0] data1_read_tb;
    
    ram64x8 DUT(
        .clk(clk_tb),
        .we(we_tb),
        .addr_write(addr_write_tb),
        .addr0_read(addr0_read_tb),
        .addr1_read(addr1_read_tb),
        .data_write(data_write_tb),
        .data0_read(data0_read_tb),
        .data1_read(data1_read_tb)
        );
    
    initial begin
        clk_tb = 0;
        forever #5 clk_tb = ~clk_tb;
    end
    
    initial begin
        we_tb = 0;
        data_write_tb = 10;
        addr_write_tb = 4;
        addr1_read_tb = 7;
        
        repeat(5) begin
            @(posedge clk_tb);
        end
        
        we_tb = 1;
        data_write_tb = 12;
        addr_write_tb = 3;
        @(posedge clk_tb);
        repeat(5)begin
            @(posedge clk_tb);
        end
        data_write_tb = 9;
        addr_write_tb = 4;
        @(posedge clk_tb); 
        addr0_read_tb = 4;
        we_tb = 0;
        @(posedge clk_tb);
        addr1_read_tb = 3;
        @(posedge clk_tb);
        $stop();
    end
    
    
endmodule
