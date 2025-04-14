module logic_circuit (output [7:0]E , input[7:0]A,B ,input [1:0]S);

wire [7:0] and_op,or_op,xor_op,not_op ; 
// 00 -> A and B , 01 -> A or B , 10 -> A xor B , 11 -> not A 
assign and_op = A & B ; 
assign or_op = A | B ; 
assign xor_op = A ^ B ; 
assign not_op = ~A ;

mux4x1 mx0(E[0],and_op[0],or_op[0],xor_op[0],not_op[0],S[0],S[1]),
		 mx1(E[1],and_op[1],or_op[1],xor_op[1],not_op[1],S[0],S[1]),
		 mx2(E[2],and_op[2],or_op[2],xor_op[2],not_op[2],S[0],S[1]),
		 mx3(E[3],and_op[3],or_op[3],xor_op[3],not_op[3],S[0],S[1]),
		 mx4(E[4],and_op[4],or_op[4],xor_op[4],not_op[4],S[0],S[1]),
		 mx5(E[5],and_op[5],or_op[5],xor_op[5],not_op[5],S[0],S[1]),
		 mx6(E[6],and_op[6],or_op[6],xor_op[6],not_op[6],S[0],S[1]),
		 mx7(E[7],and_op[7],or_op[7],xor_op[7],not_op[7],S[0],S[1]);


endmodule