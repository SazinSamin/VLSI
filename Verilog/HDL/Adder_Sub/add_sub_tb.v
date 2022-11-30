module adder_sub_tb;
	parameter n = 32;
	reg cin, cnt, clk, rst;
	reg [n-1:0] a, b;
	wire cout;
	wire [n-1:0] s;
	
	adder_sub inst(
		.s(s),
		.cout(cout),
		.a(a),
		.b(b),
		.cin(cin),
		.cnt(cnt)
	);

	initial begin
		a = 0; b = 0; cin = 0; cnt = 0;
		#5 rst=1;
	end
	
	always #5 a = ~a;
	always #10 a = ~a;
	always #20 b = ~b;
	always #40 cin = ~cin;
	always #80 cnt = ~cnt;	

	initial begin
	#160 $finish;
	end	

endmodule
