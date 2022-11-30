module mux821_tb;
  reg [7:0] i;
  reg [2:0] s;
  reg clk;
  wire f;
  
  mux821 inst0 (
    .f(f),
    .s(s),
    .i(i),
    .clk(clk)
  );
  
  initial begin
    s = 0; i = 0; clk = 0;
    #2048 $finish;
    
  end
  
  initial begin
    repeat (8) begin
      repeat (256)
        #10 i = i + 1
        #10 s = s + 1;
    end
  end
  always #5 clk = ~clk;
endmodule
