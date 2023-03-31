// ref: https://www.chipverify.com/verilog/verilog-task
// static(default) task share the variable among the invocation.
// automatic task allocate new memory dynamically for each invocation
// this code doens't work properly
module tb;
	
	initial display1();
	initial display2();
	initial display1();
	initial display2();
	initial display1();
	initial display2();
	
	task display1();
		integer i  = 0;
		i = i + 1;
		$display("i: %d", i);
	endtask
	
	
	task display2();
		integer j  = 0;
		j = j + 1;
		$display("j: %d", j);
	endtask
	
	
	
endmodule
