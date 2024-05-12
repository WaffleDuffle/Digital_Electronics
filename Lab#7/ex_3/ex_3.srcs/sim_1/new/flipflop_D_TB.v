`timescale 1ns/1ps

module flipflop_D_TB();

reg data_in_t, clock_t, reset;
wire data_out_t;

initial begin
       reset = 1;
       data_in_t = 0;
    #2 data_in_t = 1;
       reset = 0;
    #4 data_in_t = 0;
       reset = 1;
    #2 reset = 0;
    #5 $stop();
end

initial begin
    clock_t = 0;
    forever #1 clock_t = ~ clock_t;
end

flipflop_D DUT(
    .data_in(data_in_t),
    .clock(clock_t),
    .reset(reset),
    .data_out(data_out_t)
);

endmodule