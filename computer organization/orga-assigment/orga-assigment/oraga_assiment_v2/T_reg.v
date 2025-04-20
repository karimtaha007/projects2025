module T_reg(output [2:0] Q ,input count,clk,reset); 
  //T_reg id 3-bit counter that count when count = 1 and remian the same if count = 0 , Reset when reset = 1 ; 
 wire q01 ; 
 and A0(q01,Q[0],Q[1]);
 T_FF t0(Q[0],count,clk,reset),
      t1(Q[1],Q[0],clk,reset),
		t2(Q[2],q01,clk,reset);
		
endmodule