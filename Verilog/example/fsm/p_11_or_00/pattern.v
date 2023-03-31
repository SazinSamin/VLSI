module pattern(detect, inbits, reset, clk);
	input inbits, reset, clk;
	output reg detect;
	reg[1:0] state;
	
	initial begin
		state <= 2'b00;
	end
	
	always @ (posedge clk) begin
		if(reset)
			state <= 2'b00;
		else begin
			case(state)
				2'b00: begin
					if(inbits) state <= 2'b01;
					else state <= 2'b10;
				end
				2'b01: begin
					if(inbits) state <= 2'b11;
					else state <= 2'b10;
				end
				2'b10: begin
					if(inbits) state <= 2'b01;
					else state <= 2'b11;
				end
				2'b11: begin
					if(inbits) state <= 2'b01;
					else state <= 2'b10;
				end
			endcase
		end
	end
	
	
	always @ (posedge clk) begin
		if(state == 2'b11) detect <= 1;
		else detect <= 0;
	end
	
	
endmodule	
	
