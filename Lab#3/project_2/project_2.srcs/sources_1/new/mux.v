`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2024 09:20:04
// Design Name: 
// Module Name: mux
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


module mux(input [3:0] in,   // vector de 4 intrari
            input [1:0] sel, // vectori de 2 alegeri
            output reg out); //output wire out
            
//assign out = (sel == 1) ? in1 : in0;

/*
always@(*) begin
    if(sel == 1) begin
        out = in1;
    end
    else begin
        out = in0;
    end
end */

always@(*) begin // modifica out daca una din variabile (*) se schimba
    case(sel)
        2'b00: begin
            out = in[0];                    //sel pe 2 biti avem 4 posibile iesiri din multiplexor
        end 
        2'b01: begin
            out = in[1];
        end
        2'b10: begin
            out = in[2];
        end
        2'b11: begin
            out = in[3];
        end
    endcase
end     

endmodule
