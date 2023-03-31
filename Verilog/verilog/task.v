// ref: https://www.chipverify.com/verilog/verilog-task
module Task;
	task sum(input[1:0] x, y, output[3:0] z);
		begin
			z = x + y;
		end
	endtask
	
	reg[1:0] a, b;
	reg[3:0] c;
	initial begin
		a = 2'b01;
		b = 2'b10;
		sum(a, b, c);
		$display("Result: %d", c);
	end
endmodule
