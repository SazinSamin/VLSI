module tb_counter;
	reg clk;
	reg rst;
	wire [3:0] out;
	
	counter c0 (
		.clk(clk),
		.rst(rst),
		.out(out)
	);
		
	initial begin 
	$dumpfile("tb_counter.vcd");
	$dumpvars(0, tb_counter);
    
		clk <= 0;
		rst <= 0;
		#15 rst = 1;
		#500 $finish;
	end
	
	always #5 clk = ~clk;
	
endmodule
		
		
		
		
		
		
		
		
