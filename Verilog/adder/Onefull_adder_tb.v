module Onefull_adder_tb;
	reg a; reg b; reg ci;
	wire s; wire co;
	
	Onefull_adder inst (
		.s(s),
		.co(co),
		.a(a),
		.b(b),
		.ci(ci)
	);

	initial begin
			$dumpfile("test_Onefull_adder.vcd");
			$dumpvars(0, Onefull_adder_tb);
			a = 0; b = 0; ci = 0;
	#40		$finish;
	end
	
	always #5 ci = ~ci;
	always #10 b = ~b;
	always #20 a = ~a;
endmodule
	
