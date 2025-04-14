module arthimtic_circuit (output [7:0]D,output cout , input [7:0]A,B ,input cin, input [1:0]S);
wire c1,c2,c3 ,c4,c5,c6,c7; 
wire y0,y1,y2,y3 ,y4,y5,y6,y7; 

mux4x1 mx0(y0,B[0],~B[0],1'b0,1'b1,S[0],S[1]),
		 mx1(y1,B[1],~B[1],1'b0,1'b1,S[0],S[1]),
		 mx2(y2,B[2],~B[2],1'b0,1'b1,S[0],S[1]),
		 mx3(y3,B[3],~B[3],1'b0,1'b1,S[0],S[1]), 
		 mx4(y4,B[4],~B[4],1'b0,1'b1,S[0],S[1]),
		 mx5(y5,B[5],~B[5],1'b0,1'b1,S[0],S[1]),
		 mx6(y6,B[6],~B[6],1'b0,1'b1,S[0],S[1]),
		 mx7(y7,B[7],~B[7],1'b0,1'b1,S[0],S[1]);

full_adder FA0(D[0],c1,A[0],y0,cin),
			  FA1(D[1],c2,A[1],y1,c1),
			  FA2(D[2],c3,A[2],y2,c2),
			  FA3(D[3],c4,A[3],y3,c3),
			  FA4(D[4],c5,A[4],y4,c4),
			  FA5(D[5],c6,A[5],y5,c5),
			  FA6(D[6],c7,A[6],y6,c6),
			  FA7(D[7],cout,A[7],y7,c7);
			  
endmodule

