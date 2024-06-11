
module counter_4b(
    input clk,
    input en,
    input reset,
    output reg [3:0] data
    );
    
    always@(posedge clk) begin
        if(reset)
            data <= 0;
        else if(en)
            data <= data + 1;
    end
endmodule
