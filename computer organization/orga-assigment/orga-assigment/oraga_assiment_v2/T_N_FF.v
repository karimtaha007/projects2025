module T_N_FF(output reg Q  ,input T,clk,reset);


always@(negedge clk )
begin 
	if(reset == 1)
		begin 
			Q <= 1'b0 ;
		end 	
	else 
		begin 
			Q <= Q ^ T ;
			
			
		end 	
end

//assign nQ = ~Q;

endmodule