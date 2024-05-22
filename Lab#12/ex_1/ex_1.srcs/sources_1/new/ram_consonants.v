module ram_consonants (
    input [5:0] addr,
    input clk,
    input we,
    input [7:0] w_data,
    output [7:0] r_data
);

reg [7:0] memorie_consonant [63:0]; 

assign r_data = memorie_consonant[addr];

always@(posedge clk)begin
    if(we)
        memorie_consonant[addr] <= w_data;
end

endmodule