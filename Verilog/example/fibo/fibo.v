module fibo(clk,rst,v);
		input clk,rst;
		
		output  reg [31:0]v;
				
		reg [31:0] pre,cur;

		always @ (posedge clk)
			if(rst!=1) 
			 begin
			  cur <=cur+pre;
			  pre<=cur;
			  v<=cur;	
				
			 end
		else
	
			begin

                 pre<=0;
				cur <=1;
		    end

		 

endmodule