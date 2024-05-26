module reg0(
    input clk,
    input reset,
    input data_in0,
    input load,
    input [7:0] data_in18,
    input data_in9,
    input data_in10,
    output reg [10:0] data_out
);

    always@(posedge clk) begin
        if(reset)
            data_out <= 0;
        else if(load)
            data_out = {data_in10, data_in9, data_in18, data_in0};
    end
endmodule