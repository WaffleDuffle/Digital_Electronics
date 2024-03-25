
// varianta cu always cu if

module decodor_v4
	(
		input wire [1:0] in,
		output reg [3:0] out // <<== !!!! important: orice semnal ia valoarea intrun "always", trebuie sa fie reg
	);						 // always => reg ; assign => wire

always @(*) // mereu cand se schimba ce se afla in paranteze, se executa (ish "executa") ce e mai jos
	// steluta inseamna "orice"
	// se putea pune si always @(in) => mereu cand se schimba "in"
begin	// begin si end pe post de acolade din c/c++; delimiteaza if/else si altele asemenea; inclusiv always cu totul
	if(in == 0)
		begin // nota autorului: eu prefer sa pun begin/end asa. ele se pot pune si dupa conditie sau aliniate altfel.
				// preferinta personala legata de coding style, important e sa fiti consecventi in cum scrieti
		out = 1; 
		end
	else
		begin
		if(in == 1)
			out = 2;	// fiind o singura instructiune, begin/end se poate omite (identic c/c++)
		else
			begin	// nota autorului: eu personal le pun mereu. in caz ca mai adaug linii in if dupa, sa fie deja puse
			if(in == 2)
				begin
				out = 4;
				end
			else
				begin
				out = 8;
				end
			end
		end
end//end pt always



endmodule 