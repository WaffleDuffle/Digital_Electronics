module counter_bit_select(
    input clk,
    input reset,
    input en,
    output reg [3:0] out
);

    always@(posedge clk) begin
        if(reset)
            out <= 0;
        else if(en)
            out <= out + 1;
    end

endmodule