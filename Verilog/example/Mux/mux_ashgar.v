module mux821(f, s, i, clk);
  input [7:0] i;
  input [2:0] s;
  input clk;
  output reg f;
  
  reg[7:0] l;
  reg[2:0] S;
  
  always @ (posedge clk)
    begin
      S <= s;
      I <= i;
      f <= I[S];
    end
  
endmodule
