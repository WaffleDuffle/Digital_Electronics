module osccon_reg(
    input clk,
    input reset,
    input save,
    input [3:0] data,
    output reg [1:0] out
);

    always@(posedge clk) begin
        if(reset)
            out <= 2'b00;
        else if(save)
            out <= data[1:0];
    end



endmodule 