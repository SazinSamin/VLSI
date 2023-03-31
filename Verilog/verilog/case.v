// ref: https://vlsiverify.com/verilog/case-statement
module Case;
	reg [2:0] data;
	
	initial begin
		data = 2'b10;
		
		case(data)
			2'b00: $display("Case is 1");
			2'b01: $display("Case is 2");
			3'b10: $display("Case is 3");
		endcase
	end
endmodule
