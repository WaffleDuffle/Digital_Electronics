module mux4(
    input [1:0] in0,
    input [1:0] in1,
    input [1:0] in2,
    input [1:0] in3,
    input [1:0] sel,
    output reg [1:0] out0
    );
    
    always@(*) begin
        case(sel)
           2'b00: out0 = in0;
           2'b01: out0 = in1;
           2'b10: out0 = in2;
           2'b11: out0 = in3; 
        endcase
    end
    
endmodule