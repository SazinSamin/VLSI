module floating_exponential;
	real floating;
	real exponential;
	
	initial begin
		floating = 3.1416;
		exponential = 1e10;
		
		$display("Floating value: %f", floating);
		$display("Floating with precision: %0.3f", floating);
		$display("Exponential: %d", exponential);
	end
endmodule
