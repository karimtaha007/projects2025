module reg_10_bit (output [1:0]opcode ,output [7:0] Q ,input [9:0] data ,input select,clk,reset) ;

one_bit_reg r0(Q[0],data[0],select,clk,reset),
				r1(Q[1],data[1],select,clk,reset),
				r2(Q[2],data[2],select,clk,reset),
				r3(Q[3],data[3],select,clk,reset),
				r4(Q[4],data[4],select,clk,reset),
				r5(Q[5],data[5],select,clk,reset),
				r6(Q[6],data[6],select,clk,reset),
				r7(Q[7],data[7],select,clk,reset),
				r8(opcode[0],data[8],select,clk,reset),
				r9(opcode[1],data[9],select,clk,reset);


endmodule 