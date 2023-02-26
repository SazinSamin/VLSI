module pattern(o, i, rst, clk);
	input i, clk, rst;
	output  reg o;
	reg[1:0] state;
	
	always @ (posedge clk) begin
		if(rst)
			state = 2'b00;
		else
			begin
				case(state)
				2'b00: begin
						if(i) 
							state = 2'b01;
						else
							state = 2'b00;
						end
				2'b01: begin
						if(i) 
							state = 2'b10;
						else
							state = 2'b00;
						end
				2'b10: begin
						if(i) 
							state = 2'b10;
						else
							state = 2'b11;
						end
				2'b11: begin
						if(i) 
							state = 2'b01;
						else
							state = 2'b00;
						end
				endcase
			end
	end
		
		always @ (posedge clk) begin
			if(state == 2'b11 && i == 1)  
				o <= 1;
			else 
				o <= 0;
		end
		
endmodule
