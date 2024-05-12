`timescale 1ns/1ps

module Numarator_TB();

parameter WIDTH_T = 5;
reg reset_n_t, clock_t, up_t;
wire [WIDTH_T-1:0] count_t;
	
initial begin
    clock_t = 0;
    forever #1 clock_t = ~clock_t;
end
	
initial begin
        up_t = 1;
        reset_n_t = 0;
    #2 	reset_n_t = 1;
    #20 up_t = 0;
    #20 up_t = 1;
    #100 $stop();	
end

Numarator #(.WIDTH(WIDTH_T)) DUT(
    .clk(clock_t),
    .reset(reset_n_t),
    .up(up_t),
    .count(count_t)
);

endmodule