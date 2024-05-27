
module prescaler(
    input clk,
    input reset,
    input en,
    input [1:0] sel,
    output out
    );
    
    wire clkout2;
    wire clkout4;
    wire clkout8;
    
    freq_div DIVIDER(
        .clk(clk),
        .reset(reset),
        .en(en),
        .clkout2(clkout2),
        .clkout4(clkout4),
        .clkout8(clkout8)
    );
    
    mux MUX(
        .in0(clk),
        .in1(clkout2),
        .in2(clkout4),
        .in3(clkout8),
        .sel(sel),
        .out(out)
    );
endmodule
