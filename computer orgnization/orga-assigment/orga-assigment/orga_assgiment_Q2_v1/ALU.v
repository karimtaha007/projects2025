module ALU (output [7:0] F ,output cout , input [7:0] A,B, input cin , S2,S1,s0);

wire [7:0] logic ,arthimtic ; 


arthimtic_circuit(arthimtic,cout,A,B,cin,{S1,S0});
logic_circuit(logic,A,B,{S1,S0});
mux2x1_8_bit main_mx(F,arthimtic,logic,S2);


endmodule