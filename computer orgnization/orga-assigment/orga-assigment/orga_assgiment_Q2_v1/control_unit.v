module control_unit( output T0,T1,T2,T3,T4,T5,T6,T7,input qa,qs,S,E,clk,reset); 

wire dt0,dt1,dt2,dt3,dt4,dt5,dt6,dt7 ; 

assign dt0 = ~qa&&~qs&&T0 || T3 || E&&T5 || T7 ; 
assign dt1 = qs&&T0 ; 
assign dt2 = qa&&T0 || T1 ; 
assign dt3 = ~S&&T2 ; 
assign dt4 =  S&&T2;
assign dt5 = T4 ; 
assign dt6 = ~E&&T5 ; 
assign dt7 = T6 ;  

D_FF df0(T0,td0,clk,reset),
	  df1(T1,td1,clk,reset),
	  df2(T2,td2,clk,reset),
	  df3(T3,td3,clk,reset),
	  df4(T4,td4,clk,reset),
	  df5(T5,td5,clk,reset),
	  df6(T6,td6,clk,reset),
	  df7(T7,td7,clk,reset);



endmodule



