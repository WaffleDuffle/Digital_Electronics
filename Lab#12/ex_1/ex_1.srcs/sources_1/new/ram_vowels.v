module ram_vowels (
    input [5:0] addr,
    input clk,
    input we,
    input [7:0] w_data,
    output [7:0] r_data
);

reg [7:0] memorie_vowel [63:0]; 

assign r_data = memorie_vowel[addr];

always@(posedge clk)begin
    if(we)
        memorie_vowel[addr] <= w_data;
end

endmodule