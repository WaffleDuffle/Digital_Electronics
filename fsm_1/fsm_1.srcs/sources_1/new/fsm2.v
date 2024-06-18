`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 20:15:30
// Design Name: 
// Module Name: fsm
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


module fsm2(
    input clk,
    input reset,
    input A,
    input B,
    output reg [2:0] out
    );
    
    localparam q0 = 3'b000;
    localparam q1 = 3'b010;
    localparam q2 = 3'b011;
    localparam q3 = 3'b101;
    localparam q4 = 3'b001;
    
    reg [2:0] state, state_next;
    always@(posedge clk) begin
        if(reset)
            state <= q0;
        else
            state <= state_next;
    end
    
 
    
    always@(*) begin
        state_next = state;
        case(state)
            q0: begin
                out = 3'b000;
                if(A == 1)
                    state_next = q2;
                else
                    state_next = q1;
            end
            q1: begin
                out = 3'b110;
                if(B == 1)
                    state_next = q3;
                else
                    state_next = q4;
            end
            q2: begin
                out = 3'b111;
                    state_next = q4;
            end
            q3: begin
                out = 3'b100;
                    state_next = q1;
            end
            q4: begin
                out = 3'b001;
                    state_next = q0;
            end
        
        endcase
    end
    
    
endmodule
