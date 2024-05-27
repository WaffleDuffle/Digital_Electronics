module top(
    input clk,
    input en,
    input reset,
    input save,
    input [1:0] sel,
    input [3:0] data,
    input [3:0] wr_addr,
    output [3:0] instruction
);

    wire demux2_out0, demux2_out1;
    wire [3:0] demux2_4b_out0, demux2_4b_out1;
    wire [1:0] osccon_out;
    wire prescaler_out;
    wire [3:0] counter_out;
    
    
    prescaler PRESCALER(
        .clk(clk),
        .en(en),
        .reset(reset),
        .sel(osccon_out),
        .out(prescaler_out)
    );
    
    demux2 DEMUX2(
        .in(~save),
        .sel(sel),
        .out0(demux2_out0),
        .out1(demux2_out1)
    );
    
    demux2_4b DEMUX2_4b(
        .in(data),
        .sel(sel),
        .out0(demux2_4b_out0),
        .out1(demux2_4b_out1)
    );
    
    osccon_reg REG(
        .data(demux2_4b_out0),
        .save(demux2_out0),
        .reset(reset),
        .clk(clk),
        .out(osccon_out)
    );
    
    program_counter COUNTER(
        .clk(prescaler_out),
        .reset(reset),
        .out(counter_out)
    );
    
    ram_instr RAM(
        .rd_addr(counter_out),
        .save(demux2_out1),
        .clk(clk),
        .wr_data(demux2_4b_out1),
        .wr_addr(wr_addr),
        .rd_data(instruction)
    );

endmodule