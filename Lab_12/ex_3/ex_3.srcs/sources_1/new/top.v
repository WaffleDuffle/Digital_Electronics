
module top(
    input en,
    input reset,
    input clk,
    output [7:0] sir,
    output tester
    );
    
    wire [7:0] compute_behav_out;
    wire [7:0] reg_out, reg2_out;
    wire [7:0] comps_out, compb_out;
    wire [10:0] counter_11b_out;
    wire [11:0] subtract_out;
    reg_8b REG_1(
        .clk(clk),
        .en(en),
        .reset(reset),
        .in(compb_out),
        .out(reg_out)
    );
    
    reg_8b REG_2(
        .clk(clk),
        .en(en),
        .reset(reset),
        .in(reg_out),
        .out(reg2_out)
    );
    
    compute_structural COMPUTE_S(
        .in0(reg_out),
        .in1(reg2_out),
        .clk(clk),
        .reset(reset),
        .en(en),
        .out(comps_out)
    );
    
    compute_behav COMPUTE_B(
        .in0(reg_out),
        .in1(reg2_out),
        .out(compb_out)
    );
    
    counter_11b COUNTER(
        .en(en),
        .clk(clk),
        .reset(reset),
        .out(counter_11b_out)
    );
    
    subtract SUBTRACT(
        .in0(counter_11b_out),
        .in1(1),
        .out(subtract_out)
    );
    
    ram_2048x8b RAM(
        .addr_r(subtract_out),
        .addr_w(counter_11b_out),
        .data_w(compb_out),
        .clk(clk),
        .we(en),
        .data_r(sir)
    );
    
    comp_eq COMP(
        .in0(compb_out),
        .in1(comps_out),
        .out(tester)
    );
endmodule
