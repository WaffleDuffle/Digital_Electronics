module counter_6b (
    input en,
    input clk,
    input reset,
    output reg [5:0] out
);

    always@(posedge clk) begin
        if(reset)
            out <= 0;
        else if (en)
            out <= out + 1;
    end
endmodule