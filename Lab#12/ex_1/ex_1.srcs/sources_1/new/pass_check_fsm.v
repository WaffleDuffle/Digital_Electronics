`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2024 09:36:16
// Design Name: 
// Module Name: pass_check_fsm
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


module pass_check_fsm(
    input en,
    input clk,
    input reset,
    input [7:0] data_in,
    output pass_ok
    );
    
    // parola: CONST
    localparam IDLE = 3'b000;
    localparam STARE_C = 3'b001;
    localparam STARE_O = 3'b010;
    localparam STARE_N = 3'b011;
    localparam STARE_S = 3'b100;
    localparam STARE_T = 3'b101;
    
    reg [2:0] state, state_next;
    
    always@(posedge clk) begin
        if(reset)
            state <= IDLE;
        else
            state <= state_next;
    end
    
    always@(*) begin
        case(state)
            IDLE: begin
                if(en == 0)
                    state_next = IDLE;
                else if(en == 1 && data_in != "c")
                    state_next = IDLE;
                else if(en == 1 && data_in == "c")
                    state_next = STARE_C;
            end
            STARE_C: begin
                if(en == 0)
                    state_next = STARE_C;
                else if(en == 1 && data_in != "o")
                    state_next = IDLE;
                else if(en == 1 && data_in == "o")
                    state_next = STARE_O;
            end
            STARE_O: begin
                if(en == 0)
                    state_next = STARE_O;
                else if(en == 1 && data_in != "n")
                    state_next = IDLE;
                else if(en == 1 && data_in == "n")
                    state_next = STARE_N;
            end
            STARE_N: begin
                if(en == 0)
                    state_next = STARE_N;
                else if(en == 1 && data_in != "s")
                    state_next = IDLE;
                else if(en == 1 && data_in == "s")
                    state_next = STARE_S;
            end
            STARE_S: begin
                if(en == 0)
                    state_next = STARE_S;
                else if(en == 1 && data_in != "t")
                    state_next = IDLE;
                else if(en == 1 && data_in == "t")
                    state_next = STARE_T;
            end
            STARE_T: begin
                if(en == 0)
                    state_next = STARE_T;
                else if(en == 1 && data_in != "c")
                    state_next = IDLE;
                else
                    state_next = STARE_C;
            end
            default: state = IDLE;
        endcase
    end
    
    assign pass_ok = (state == STARE_T);
    
endmodule
