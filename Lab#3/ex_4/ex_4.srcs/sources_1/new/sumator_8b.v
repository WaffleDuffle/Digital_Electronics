
module sumator_8b(
    input [7:0] in0,
    input [7:0] in1,
    input carry_in,
    output [7:0] out0,
    output carry_out
    );
    
    assign {carry_out, out0} = in0 + in1 + carry_in;
    
endmodule
