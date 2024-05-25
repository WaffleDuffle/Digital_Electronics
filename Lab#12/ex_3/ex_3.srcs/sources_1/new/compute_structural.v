module compute_structural(
    input [7:0] in0,
    input [7:0] in1,
    input en,
    input reset,
    input clk,
    output [7:0] out
);

    wire [7:0] shift_out, add_out, sub_out;
    wire [7:0] counter_full_out, counter_out;
    wire comp_out_reset, comp_out_en;
    
    
    shift_left SHIFT(
        .in0(in0),
        .out(shift_out)
    );
    
    add_8b ADD(
        .in0(shift_out + in1),
        .en(in1[0]),
        .out(add_out)
    );
    
    sub_8b SUB(
        .in0(shift_out + in1),
        .en(~in1[0]),
        .out(sub_out)
    );

    counter_8b FULL_COUNTER(
        .reset(reset),
        .clk(clk),
        .en(en),
        .out(counter_full_out)  
    );
    
    counter_8b COUNTER(
        .reset(comp_out_reset | reset),
        .clk(clk),
        .en(en),
        .out(counter_out)  
    );
    
    comp_eq COMP_FULL(
        .in0(add_out | sub_out),
        .in1(counter_full_out),
        .out(comp_out_en)
    );
    
    comp_eq COMP(
        .in0(255),
        .in1(counter_out),
        .out(comp_out_reset)
    );
    
    reg_8b REG(
        .in(counter_out),
        .clk(clk),
        .en(comp_out_en),
        .reset(reset),
        .out(out)
    );
endmodule