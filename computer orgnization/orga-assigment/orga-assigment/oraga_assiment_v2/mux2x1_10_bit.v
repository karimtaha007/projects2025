module mux2x1_10_bit(output [9:0] y, input [9:0] i0,i1 , input select) ; 


assign y = (select) ? i1: i0 ; 


endmodule