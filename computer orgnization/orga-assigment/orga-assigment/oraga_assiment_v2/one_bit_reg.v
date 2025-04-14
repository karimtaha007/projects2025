module one_bit_reg(output Q , input data,select,clk,reset );

wire muxout;
mux2x1(muxout,Q,data,select);
D_FF(Q,muxout,clk,reset);

endmodule