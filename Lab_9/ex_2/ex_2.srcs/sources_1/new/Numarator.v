`timescale 1ns / 1ps



module Numarator
#(parameter WIDTH=8)(
    input reset,
    input up,
    input clk,
    output reg [WIDTH-1:0] count
    );
    
    always@(posedge clk) begin
        if(reset == 0)   
            count <= 0;
        else if(up)
            count <= count + 1;
        else
            count <= count - 1;        
    end
endmodule
