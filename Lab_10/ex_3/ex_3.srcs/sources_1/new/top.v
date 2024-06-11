module top#(
parameter LIMIT_PERIOD = 100,
parameter LIMIT_DUTY_CYCLE = 25)
(
    input clk,
    input reset,
    output out
    );

//parameter LIMIT_PERIOD = 100;
//parameter LIMIT_DUTY_CYCLE = 25;

wire [29:0] counter_in1_first;
wire out_first;

counter COUNTER(
    .clk(clk),
    .reset(out_first | reset),
    .out(counter_in1_first));

first_comparator FIRST(
    .in0(LIMIT_PERIOD),
    .in1(counter_in1_first),
    .out(out_first));

second_comparator SECOND(
    .in0(LIMIT_DUTY_CYCLE),
    .in1(counter_in1_first),
    .out(out));
    
endmodule