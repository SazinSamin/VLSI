module half_adder_tb;
	reg a;
	reg b;
	wire s;
	wire c;

	half_adder inst (
		.s(s),
		.c(c),
		.a(a),
		.b(b)
	);

	initial begin
			$dumpfile("test_half_adder.vcd");
			$dumpvars(0, half_adder_tb);
			a = 0; b = 0;
	#20	$finish;
	end
	
	always #5 a = ~a;
	always #10 b = ~b;
	
endmodule
