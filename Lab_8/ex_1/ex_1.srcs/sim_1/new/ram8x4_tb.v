`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2024 20:31:21
// Design Name: 
// Module Name: ram8x4_tb
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


module ram8x4_tb(

    );
    
    reg clk_tb;
    reg we_tb;
    reg [2:0] addr_write_tb;
    reg [2:0] addr_read_tb;
    reg [3:0] data_write_tb;
    wire [3:0] data_read_tb;
    
    ram8x4 DUT(
        .clk(clk_tb),
        .we(we_tb),
        .addr_write(addr_write_tb),
        .addr_read(addr_read_tb),
        .data_write(data_write_tb),
        .data_read(data_read_tb)
        );
    
    initial begin
        clk_tb = 0;
        forever #5 clk_tb = ~clk_tb;
    end
    
    initial begin
        we_tb = 0;
        data_write_tb = 10;
        addr_write_tb = 4;
        addr_read_tb = 7;
        
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
        addr_read_tb = 4;
        we_tb = 0;
        @(posedge clk_tb);
        addr_read_tb = 3;
        @(posedge clk_tb);
        $stop();
    end
    
    
endmodule
