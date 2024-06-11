`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2024 10:36:50
// Design Name: 
// Module Name: FSM2_Moore
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


module FSM2_Moore(
    input clk,
    input reset,
    input in,
    output out
    );
    
    reg [1:0] state, state_next;
    
    localparam Q0 = 2'b00;
    localparam Q1 = 2'b01;
    localparam Q2 = 2'b10;
    
    always@(posedge clk) begin
        if(reset) 
            state <= Q0;
        else
            state <= state_next;
    end
    
    always@(*) begin
      
        case(state)
            Q0: begin
                if(in == 1)
                    state_next = Q1;
            end
            Q1: begin
                if(in == 1)
                    state_next = Q2;
                else
                    state_next = Q1;
            end
            Q2: begin
                if(in == 0)
                    state_next = Q0;
            end
            default: state_next = Q0;
        endcase
    end
    
    assign out = (state == Q1);
endmodule
