module one_bit_reg(output Q , input data,load,clk,reset );

wire muxout;
mux2x1(muxout,Q,data,load);
D_FF(Q,muxout,clk,reset);

endmodule