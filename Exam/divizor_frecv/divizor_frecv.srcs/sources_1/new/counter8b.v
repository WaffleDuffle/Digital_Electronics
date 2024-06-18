module counter8b(
    input clk,
    input reset,
    input [7:0] in,
    input load,
    input en,
    output reg [7:0] out
);

    always@(posedge clk) begin
        if(reset)
            out <= in;
        else if(load)
            out <= in;
        else if(en)
            out <= out - 1;
    end

endmodule