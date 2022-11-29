module subNbit_tb;
	reg [7:0] A;
	reg [7:0] B;
	wire RES[7:0];

	subNbit inst (
		.A(A),
		.B(B),
		.RES(RES),
	);
	
	initial begin
		$dumpfile("sub_test.vcd");
		$dumpvars(0, subNbit_tb);
		A = 0;
		B = 0;
	#100 $finish;
	end
	
	always #10 A= ~A;
	always #20 B = ~B;
endmodule

	

