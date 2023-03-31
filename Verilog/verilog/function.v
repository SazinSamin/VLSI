// ref: https://fpgatutorial.com/verilog-function-and-task/
module tb;

	integer x, y, res;
	
	initial begin
		x = 5;
		y = 2;
		res = sum(x, y);
		$display("Result: %d", res);
	end
	
	
	function integer  sum  (input integer x, y);
		begin
			sum = x + y;
		end
	endfunction
	
endmodule
