module mux2x1(output   out ,
					input  i0,i1,
					input s);

assign out = (s) ? i1:i0 ; 
 
 endmodule 
 