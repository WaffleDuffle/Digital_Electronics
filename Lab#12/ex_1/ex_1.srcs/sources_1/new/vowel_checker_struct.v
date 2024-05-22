module vowel_checker_struct (
    input [7:0] data_in,
    output reg is_vowel
);

always@(*)begin
    if(data_in == "a")
        is_vowel = 1;
    else if(data_in == "e")
        is_vowel = 1;
    else if(data_in == "i")
        is_vowel = 1;
    else if(data_in == "o")
        is_vowel = 1;
    else if(data_in == "u")
        is_vowel = 1;
    else
        is_vowel = 0;
    
end

endmodule