`include "Onefull_adder.v"
module faNbit_full_adder ( S, cout, cin, X, Y ) ;
	parameter n = 4 ;
	input cin ;		
	input [n-1 : 0] X, Y ;
	output cout ;		
	output [n-1 : 0] S ;
	wire [n : 0] C ;
	genvar k ;

	assign C[0] = cin ;
	assign cout = C[n] ;
	generate
		for ( k=0; k<=n-1; k=k+1 )
		begin : addbit
			fulladd stage ( S[k], C[k+1], C[k], X[k], Y[k] ) ;
		end
	endgenerate
endmodule

