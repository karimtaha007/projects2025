module Memory16X10 (output  reg [9:0]data_out,input [9:0] data_in , input [7:0] address , input rw);

reg  [9:0] Mem[15:0];  // use 10-bit for memory 2-bit to opcode and 8-bit for operand/Regisert
							 // here we create 16 address of memory for testing
 	
//	integer PC ;
//
//always @*
//begin
//    case(address)
//       4'h0: Mem[0]  = 10'b0100001001; // MBR -> R  = 0x09
//       4'h1: Mem[1]  = 10'b1000001010; // LDI 10 , Mem[10] - > MBR -> A  = 0x9F 
//		 4'h2: Mem[2]  = 10'b1100001011; // LDA 11 , Mem[Mem[11]] -> MBR -> A = 0x77
//		 4'h3: Mem[3]  = 10'b0100010001; // MBR -> R  = 0x11
//		 4'h4: Mem[4]  = 10'b1000001101; // LDI 10 , Mem[13] - > MBR -> A  = 0x6E 
//		 4'h5: Mem[5]  = 10'b1100001110; // LDA 11 , Mem[Mem[14]] -> MBR -> A = 0x88
////		 4'h6: Mem[6]  = 10'b0100001010;
////		 4'h7: Mem[7]  = 10'b0100001010;
////		 4'h8: Mem[8]  = 10'b0100001010;
////		 4'h9: Mem[9]  = 10'b0100001010;
//		 4'hA: Mem[10] = 10'b0010011111; // Mem[10] = 0x9F 
//		 4'hB: Mem[11] = 10'b0000001100; // Mem[11] = 12 
//		 4'hC: Mem[12] = 10'b0001110111; // Mem[12] = 0x77
//		 4'hD: Mem[13] = 10'b0001101110; // Mem[13] = 0x6E 
//		 4'hE: Mem[14] = 10'b0000001111; // Mem[14] = 15 
//		 4'hF: Mem[15] = 10'b0010001000; // Mem[15] = 0x88
//    endcase
//end		
//	// Generate block for memory initialization
generate
    integer i;
    initial begin
        for (i = 0; i < 16; i = i + 1) begin
            case (i)
                0: Mem[i]  = 10'b0100001001; // MBR -> R  = 0x09
                1: Mem[i]  = 10'b1100001011; // LDI 10 , Mem[10] - > MBR -> A  = 0x9F 
					 2: Mem[i]  = 10'b1110011111; // LDA 11 , Mem[Mem[11]] -> MBR -> A = 0x9F
					 3: Mem[i]  = 10'b0100010001; // MBR -> R  = 0x11
					 4: Mem[i]  = 10'b1000001101; // LDI 10 , Mem[13] - > MBR -> A  = 0x6E 
					 5: Mem[i]  = 10'b1100001110; // LDA 11 , Mem[Mem[14]] -> MBR -> A = 0x88
//					 6: Mem[i]  = 10'b0100001010;
//					 7: Mem[i]  = 10'b0100001010;
//					 8: Mem[i]  = 10'b0100001010;
//					 9: Mem[i]  = 10'b0100001010;
					 10: Mem[i] = 10'b0010011111; // Mem[10] = 0x9F 
					 11: Mem[i] = 10'b0000001100; // Mem[11] = 12 
					 12: Mem[i] = 10'b0001110111; // Mem[12] = 0x77
					 13: Mem[i] = 10'b0001101110; // Mem[13] = 0x6E 
					 14: Mem[i] = 10'b0000001111; // Mem[14] = 15 
					 15: Mem[i] = 10'b0010001000; // Mem[15] = 0x88
                // Add more initializations for other memory locations if needed
                default: Mem[i] = 10'b0000000000; // Default initialization to 0
            endcase
        end
    end
endgenerate
	
always @( rw or  address or  data_in)
begin
    if (rw == 0)
        data_out <= Mem[address];
//    else
//        Mem[address] <= data_in;
end

endmodule