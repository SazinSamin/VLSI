module decoder(in, out, en);
	input [2:0] in;
	input en;
	output reg [7:0] out;
	
	always @ (in or en) begin
		if(en) begin
			out = 0;
			case (in)
				3'b000: out[0] = 1;
				3'b001: out[1] = 1;
              			3'b010: out[2] = 1;
              			3'b011: out[3] = 1;
              			3'b100: out[4] = 1;
              			3'b101: out[5] = 1;
              			3'b110: out[6] = 1;
              			3'b111: out[7] = 1;
			endcase
		end
		else
			out = 0;
	end
	
endmodule
