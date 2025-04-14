module mux4x1(output y ,input I0,I1,I2,I3, input S0,S1 );

wire y0,y1,y2,y3  ; 
and a0(y0,I0,~S0,~S1),
	 a1(y1,I1,S0,~S1),
	 a2(y2,I2,~S0,S1),
	 a3(y3,I3,S0,S1);
or o1(y,y0,y1,y2,y3);	 
	 



endmodule 