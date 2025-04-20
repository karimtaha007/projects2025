module mux2x1_8_bit(output [7:0] y, input [7:0] i0,i1 , input select) ; 


assign y = (select) ? i1: i0 ; 


endmodule