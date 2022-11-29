module com ( a,b,Gt,Lt,Eq,clk,rst); 

	input [31:0]  a,b;
	reg [31:0]a1,b1;
	input clk,rst; 
	output reg   Gt, Lt, Eq; 

	always @ (posedge clk) 
		
		
			begin
				a1<=a;
			     b1<=b;
			if(rst!=0) 
				begin
					Gt<=0;
					Lt<=0;
					Eq<=0;
			    end
		
			else
			begin
					
				 Gt <= ( a1 > b1 )? 1'b1 : 1'b0; 

				 Lt <= ( a1 < b )? 1'b1 : 1'b0; 

				 Eq <= ( a1 == b1)? 1'b1 : 1'b0; 

			end
		end
	    
endmodule
