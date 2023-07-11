module tb_faNbit;
	parameter N = 32;
	reg [N-1:0] a, b;
	reg cin, clk, rst;
	wire [N-1:0] sum;
	wire cout;
	
	faNbit inst (
		.a(a),
		.b(b),
		.clk(clk),
		.cin(cin),
		.rst(rst),
		.sum(sum),
		.cout(cout)
	);
	
	initial begin
		$dumpfile("tb_faNbit.vcd");
		$dumpvars(0, tb_faNbit);
		
		a <=0; b <=0; cin <= 0; clk <=0; rst <= 0;
		
		#1 rst = 1;
		#500 $finish;
	end
	
	always #2 clk = ~clk;
	always #5 a = a + 1;
	always #10 b = b + 1;
endmodule
	
	
	
