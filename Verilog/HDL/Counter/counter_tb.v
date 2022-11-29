module cntr8bit_tb;
reg rst,clk;
wire [7:0]count;
cntr8bit stage1(count,rst,clk);
initial begin
clk=0;rst=0;
#15 rst = 1;
#3000 rst=0;


#10 $finish;
end
always #5 clk=~clk;
//always #10 rst=~rst;

endmodule
