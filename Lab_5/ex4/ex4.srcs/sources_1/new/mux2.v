module mux2(
    input [1:0] in0,
    input [1:0] in1,
    input sel,
    output [1:0] out0
    );
    
    assign out0 = (sel == 1) ? in1 : in0;
    
endmodule