
// observatie: 
	// puteti da: rtl analysis -> open elaborated design -> schematic pentru a vedea desenul rezultat
	// puteti vedea ca moduri diferite de scriere produc aparitia a diferite primitive de sinteza

module top
	(
		input wire [1:0] in,
		output wire [3:0] out_v1, // fiecare varianta de decodor cu iesirea lui
		output wire [3:0] out_v2, // toate ar trebui sa scoata acelasi rezultat 
		output wire [3:0] out_v3,
		output wire [3:0] out_v4,
		output wire [3:0] out_v5,
		output wire [3:0] out_v6
	);
	
	

decodor_v1 decodor_v1_0
	(
		.in(in),
		.out(out_v1)
	);

decodor_v2 decodor_v2_0
	(
		.in(in),
		.out(out_v2)
	);
	
decodor_v3 decodor_v3_0
	(
		.in(in),
		.out(out_v3)
	);
	
decodor_v4 decodor_v4_0
	(
		.in(in),
		.out(out_v4)
	);
	
decodor_v5 decodor_v5_0
	(
		.in(in),
		.out(out_v5)
	);

decodor_v6 decodor_v6_0
	(
		.in(in),
		.out(out_v6)
	);
	
endmodule 

