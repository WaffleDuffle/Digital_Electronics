`timescale 1ns/1ps

module test_bistabil();

reg data_in_t, clock_t;
wire data_out_t;
reg reset;
initial begin
       data_in_t = 0;
       reset = 1;
    #1 reset = 0;
    #2 data_in_t = 1;
    #4 data_in_t = 0;
    #5 $stop();
end

initial begin
    clock_t = 0;
    forever #5 clock_t = ~ clock_t;
end

bitstabil DUT(
    .data_in(data_in_t),
    .clk(clock_t),
    .data_out(data_out_t),
    .reset(reset)
);

endmodule