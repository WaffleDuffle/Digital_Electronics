module crc_calc(
    input [7:0] data,
    output out
);

    assign out = data[7] ^ data[6] ^ data[5] ^ data[4] ^ data[3] ^ data[2] ^ data[1] ^ data[0];



endmodule