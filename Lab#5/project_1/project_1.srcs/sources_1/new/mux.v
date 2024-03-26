module mux(
    input [7:0] in0,
    input [7:0] in1,
    input [7:0] in2,
    input [7:0] in3,
    input [1:0] sel,
    output reg [7:0] out0
);
    
always@(*) begin
    case(sel)
    
        0: out0 = in0;
        1: out0 = in1;
        2: out0 = in2;
        3: out0 = in3;  
    endcase

end
endmodule