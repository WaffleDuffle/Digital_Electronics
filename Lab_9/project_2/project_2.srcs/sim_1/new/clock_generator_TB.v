`timescale 1ns/1ps

module clock_generator_TB();

reg reset, clk;
wire clkout1;
wire clkout2;
wire clkout4;
wire clkout8;

initial begin
    clk = 0;
    forever #1 clk = ~clk;
end
	
initial begin
        reset = 1;
    #2 	reset = 0;
    #100 $stop();	
end

clock_generator DUT(
    .clk(clk),
    .reset(reset),
    .clkout1(clkout1),
    .clkout2(clkout2),
    .clkout4(clkout4),
    .clkout8(clkout8)
);

endmodule