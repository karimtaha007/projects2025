module state_controller(output  [7:0]y,input S,E,qa,qs,clk,resest) ;
reg [7:0] state ; 
parameter T0=8'b00000001,
			 T1=8'b00000010, 
			 T2=8'b00000100,
			 T3=8'b00001000,
			 T4=8'b00010000,
			 T5=8'b00100000,
			 T6=8'b01000000,
			 T7=8'b10000000;
always@(posedge clk )
begin
		if (resest==1) state <= T0 ; 
		else case(state)
			
			T0:	if(qs==1) state <= T1 ;else if (qa==1) state<= T2 ; else state <= T0 ; // if qs ==1 state will become T1 else remain the same   
			T1:	state <= T2 ; 
			T2:	if(S==1) state <= T4 ; else state <= T3 ; 
			T3:   state <= T0 ; 
			T4:	state<= T5 ;  
			T5:	if (E==0) state<= T6 ; else state <= T0 ; 
			T6:	state <= T7 ; 
			T7:	state <= T0;
			endcase 
end 
assign y = state ; 						
endmodule

