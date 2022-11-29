module subNbit(A, B, RES);
	parameter n = 8;  
	input  [n-1:0] A;  
	input  [n-1:0] B;  
	output [n-1:0] RES; 
 
	assign RES = A - B;  
endmodule
