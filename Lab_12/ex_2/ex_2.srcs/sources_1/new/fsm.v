`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2024 06:40:39
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


module fsm(
    input start,
    input stop,
    input clk,
    input reset,
    input [11:0] seed,
    input [11:0] prev,
    output reg [3:0] data_out
    );
    
    reg [1:0] state, state_next;
    
    localparam IDLE = 2'b00;
    localparam SUM = 2'b01;
    localparam STOP = 2'b10;
    
    always@(posedge clk) begin
        if(reset)
            state <= IDLE;
        else
            state <= state_next;
    end
    
    always@(*) begin
        state_next = state;
        case(state)
            IDLE: begin
                if(start == 0 & stop == 1)
                    state_next = STOP;
                else if(start == 1 & stop == 0)
                    state_next = SUM;
                data_out = seed[3:0];
            end
            SUM: begin
                if(start == 0 & stop == 1)
                    state_next = STOP;
                data_out = data_out + prev[3:0];
            end
            STOP: begin
                if(start == 1 & stop == 0)
                    state_next = SUM;
                data_out = data_out;
            end
            default: state_next <= IDLE;
        endcase
    end
endmodule
