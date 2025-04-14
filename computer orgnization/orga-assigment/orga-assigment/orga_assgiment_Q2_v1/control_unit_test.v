module control_unit_test( output S2,S1,S0,Cin,L,X,Y,Z,W,input qa,qs,S,E,clk,reset); 

wire dt0,dt1,dt2,dt3,dt4,dt5,dt6,dt7 ; //output DT0,DT1,DT2,DT3,DT4,DT5,DT6,DT7
wire [7:0] T ; 

state_controller(T, S,E,qa,qs,clk,resest);

/*
assign dT0 = ~qa&&~qs&&T0 || T3 || E&&T5 || T7 ; 
assign dT1 = qs&&T0 ; 
assign dT2 = qa&&T0 || T1 ; 
assign dT3 = ~S&&T2 ; 
assign dT4 =  S&&T2;
assign dT5 = T4 ; 
assign dT6 = ~E&&T5 ; 
assign dT7 = T6 ;  

D_FF df0(T0,DT0,clk,reset),
	  df1(T1,DT1,clk,reset),
	  df2(T2,DT2,clk,reset),
	  df3(T3,DT3,clk,reset),
	  df4(T4,DT4,clk,reset),
	  df5(T5,DT5,clk,reset),
	  df6(T6,DT6,clk,reset),
	  df7(T7,DT7,clk,reset);
*/
//always(posedge clk)
//begin 
//	case(T): 
//
//end 



assign X=T[0];
assign S2=T[6];
assign S1=T[4]||T[6];
assign S0=T[3]||T[6];
assign Cin=T[4]||T[7];
assign L=T[3]||T[4]||T[6]||T[7];
assign Y=T[1];
assign Z=T[7];
assign W=T[5];


endmodule