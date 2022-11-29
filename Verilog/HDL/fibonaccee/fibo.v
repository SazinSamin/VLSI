module shift (C, SI, SO,tmp); 
input C,SI; 
output SO; 
output reg [15:0] tmp; 
 
  always @(posedge C) 
    begin 
      tmp = tmp << 1; 
      tmp[0] = SI; 
    end 
    assign SO  = tmp[15]; 
endmodule 
