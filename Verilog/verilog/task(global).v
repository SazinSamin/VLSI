// this code doens't work properly
task display();
	$display("This is global task");
endtask

module Task;
	initial begin
		display();
	end
endmodule
