module counter_baud_rate(
    input reset_async,
    input reset_sync,
    input en,
    input clk,
    output reg [19:0] out
);

    always@(*)begin
        if(reset_async) 
            out = 0;
    end
    
    always@(posedge clk) begin
        if(reset_sync)
            out <= 0;
        else if(en) 
            out <= out + 1;
    end



endmodule