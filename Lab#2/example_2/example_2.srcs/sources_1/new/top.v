
module top(
    input a,
    input b,
    output c
    );
    wire w0;
    
    and_gate and_gate_0(.in0(a), .in1(b), .out0(w0));
    not_gate not_gate_0(.in0(w0), .out0(c));
    
endmodule
