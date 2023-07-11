module tb_half_adder;
	reg [2:0] a, b;
	reg clk;
	wire [4:0] sum;

	
	half_adder h0 (
		.a(a),
		.b(b),
		.sum(sum),
		.cout(cout)
	);
	
	initial begin
		$dumpfile("tb_half_adder.vcd");
		$dumpvars(0, tb_half_adder); // Add h0 to the waveform dumping
		
		a = 0; b = 0;
		#500 $finish;
	end
	

	always #5 a = a+1;
	always #10 b = b+1;
	
endmodule
