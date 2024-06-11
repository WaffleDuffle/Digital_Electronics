`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2024 10:08:11
// Design Name: 
// Module Name: automat
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


module automat(
    input clk,
    input reset,
    input in_50b,
    input in_100b,
    output give_choco
    );
    
    localparam S0b = 3'b000;
    localparam S50b = 3'b001;
    localparam S100b = 3'b010;
    localparam S150b = 3'b011;
    localparam S200b = 3'b100;
    
    reg [2:0] state, state_next;
    
    always@(posedge clk) begin
        if(reset)
            state <= S0b;
        else
            state <= state_next;
    end
    
    always@(*) begin
        case(state)
            S0b: begin
                if(in_100b == 0 & in_50b == 0)
                    state_next = S0b;
                else if(in_100b == 0 & in_50b == 1)
                    state_next = S50b;
                else if(in_100b == 1 & in_50b == 0)
                    state_next = S100b;
                else if(in_100b == 1 & in_50b == 1)
                    state_next = S150b;
            end
            S50b: begin
                if(in_100b == 0 & in_50b == 0)
                    state_next = S50b;
                else if(in_100b == 0 & in_50b == 1)
                    state_next = S100b;
                else if(in_100b == 1 & in_50b == 0)
                    state_next = S150b;
                else if(in_100b == 1 & in_50b == 1)
                    state_next = S200b;
            end
            S100b: begin
                if(in_100b == 0 & in_50b == 0)
                    state_next = S100b;
                else if(in_100b == 0 & in_50b == 1)
                    state_next = S150b;
                else if(in_100b == 1 & in_50b == 0)
                    state_next = S200b;
                else if(in_100b == 1 & in_50b == 1)
                    state_next = S0b;
            end
            S150b: begin
                if(in_100b == 0 & in_50b == 0)
                    state_next = S150b;
                else if(in_100b == 0 & in_50b == 1)
                    state_next = S200b;
                else if(in_100b == 1 & in_50b == 0)
                    state_next = S0b;
                else if(in_100b == 1 & in_50b == 1)
                    state_next = S50b;
            end
            S200b: begin
                if(in_100b == 0 & in_50b == 0)
                    state_next = S200b;
                else if(in_100b == 0 & in_50b == 1)
                    state_next = S0b;
                else if(in_100b == 1 & in_50b == 0)
                    state_next = S50b;
                else if(in_100b == 1 & in_50b == 1)
                    state_next = S100b;
            end
            default: state_next = S0b; 
        endcase    
    end
    
    assign give_choco = (state == S100b & in_100b == 1 & in_50b == 1) ||
                        (state == S150b & in_100b == 1 & in_50b == 0) ||
                        (state == S150b & in_100b == 1 & in_50b == 1) ||
                        (state == S200b & in_100b == 0 & in_50b == 1) ||
                        (state == S200b & in_100b == 1 & in_50b == 0) ||
                        (state == S200b & in_100b == 1 & in_50b == 1);
    
endmodule
