module mux2x1_4_bit(output [3:0] y, input [3:0] i0,i1 , input select) ; 


assign y = (select) ? i1: i0 ; 


endmodule