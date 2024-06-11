`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2024 10:07:13
// Design Name: 
// Module Name: FSM1
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


module FSM1(
    input clk,
    input reset,
    input in,
    output detectOk,
    output detectFail
    );
    
    localparam STATE_READ0 = 2'b00;
    localparam STATE_READ1 = 2'b01;
    localparam STATE_ERROR = 2'b10;
    
    reg [1:0] state, state_next;
    
    always@(posedge clk) begin
        if(reset) 
            state = STATE_READ1;
        else
            state = state_next;
    end
    
    always@(*) begin
        case(state) 
            STATE_READ1: begin
                if(in == 0)
                    state_next = STATE_READ0;
            end
            STATE_READ0: begin
                if(in == 1)
                    state_next = STATE_ERROR;
            end
            STATE_ERROR: begin
                state_next = STATE_ERROR;
            end
            default: state_next = STATE_READ1;
        endcase 
    end
    
    assign detectOk = (state == STATE_READ0) || (state == STATE_READ1);
    assign detectFail = (state == STATE_ERROR);
endmodule
