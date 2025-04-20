module PC (output reg [7:0] address,input count, reset);


always @(posedge count or posedge reset)
	begin
		if (reset)
			address <= 4'h00; // Reset to 0x00
		else if (count)
		   if(address < 8 )
				address <= address + 1'b1; // Increment on count
			else 
				address <= 0 ; 
	end

	
endmodule