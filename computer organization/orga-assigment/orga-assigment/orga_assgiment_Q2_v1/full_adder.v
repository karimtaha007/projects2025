module full_adder(output y ,cout , input a,b,cin) ; 

wire a1,a2,a3 ; 

xor (y,a,b,cin) ; 

and x1(a1,a,b),
	 x2(a2,b,cin),
	 x3(a3,a,cin); 
	 
or (cout,a1,a2,a3); 	 
	 

endmodule