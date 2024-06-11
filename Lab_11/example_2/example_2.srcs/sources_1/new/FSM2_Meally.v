`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.05.2024 10:59:54
// Design Name: 
// Module Name: FSM2_Meally
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


module FSM2_Meally(
    input clk,
    input reset,
    input in,
    output out
    );
    
    localparam Q0 = 2'b00;
    localparam Q1 = 2'b01;
    
    reg [1:0] state, state_next;
    
    always@(posedge clk)begin
        if(reset)
            state <= Q0;
        else
            state <= state_next;
    end
    
    always@(*) begin
        case(state)
            Q0: begin
                if(in == 0)
                    state_next = Q0;
                else
                    state_next = Q1;
            end
            Q1: begin
                if(in == 0)
                    state_next = Q0;
                else
                    state_next = Q1;
            end
        endcase
    end
    
    assign out = (state == Q0) & (in == 1);
    
endmodule
