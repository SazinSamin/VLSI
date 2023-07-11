module tb_com;
	reg a, b, clk, rst;
	wire gt, ls, eq;
	
	comparator inst(
		.a(a),
		.b(b),
		.clk(clk),
		.rst(rst),
		.gt(gt),
		.ls(ls),
		.eq(eq)
	);
	
	initial begin
	 	$dumpfile("tb_com.vcd");  
  		$dumpvars(0, tb_com);  
		rst = 1; a = 0; b = 0; clk = 0;
		#5 a =0;
		#5 b =0;
		#10 a =1;
		#10 b =0;
		#20 a =0;
		#20 b =1;
		#30 $finish;
	end
	
	always #5 clk = ~clk;
endmodule
