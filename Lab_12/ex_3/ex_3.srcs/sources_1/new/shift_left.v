
module shift_left(
    input [7:0] in0,
    output [7:0] out
    );
    
    assign out = in0 << 1;
endmodule
