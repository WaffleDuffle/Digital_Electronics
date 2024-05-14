module debouncer
    #(parameter limit = 20'd650000)(
    input clk,
    input in,
    output out
    );

reg [19:0] counter;
reg hit;
assign out = (counter == limit);

always@(posedge clk) begin
    if(in == 0)begin    // resetam hit si counter daca pe intare avem 0
        hit <= 0;
        counter <= 0;
    end
    else begin
        if(limit == counter) begin
            hit <= 1;              // daca numaratorul a ajuns la valoarea limitei atunci ne oprim in a mai numara
            counter <= counter + 1;
        end
        else if(hit == 0 & in == 1) begin
            counter <= counter + 1;  // numaram pentru delay
        end
    end    
end


endmodule