module usr32bit(cout, clk, rst, load, shift_lt_rt, a);
	output reg [31:0] cout;
	input load;
	input [1:0] shift_lt_rt;
	input [31:0] a;       
	input clk, rst;
	reg [31:0] ai;

		always @(posedgeclk or posedgerst) begin
			if (rst)
				cout = 0;
			else
			case(load)
				 1'b1:
					begin
						ai = a;
					end
				1'b0:
					case (shift_lt_rt)
					    2'b00:  cout = ai<<1;
					    2'b01:  cout = ai>>1;
					endcase
			endcase
		end
endmodule
