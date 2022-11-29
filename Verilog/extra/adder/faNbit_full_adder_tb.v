module faNbit_full_adder_tb;
		reg [n-1 : 0] X, Y;
		reg cin;
		wire [n-1 : 0] S;
		wire cout;
		
		faNbit_full_adder inst (
				.S(S),
				.cout(cout),
				.cin(cin),
				.X(X),
				.Y(Y)
		);
		
		initial begin
					$dumpfile("test_faNbit_full_adder.vcd");
					$dumpvars(0, faNbit_full_adder_tb);
					X = 0, Y = 0, cin = 0, S = 0, cout = 0;
		#12		$finish;
		end
		
		integer tm = 2;
		integer idx = 0;
		for(; idx <= 

		
