module adder_8bit_rtl_tb;
reg [7:0]a,b;
regcin,clk,rst;
wirecout;
wire [7:0]s;
adder_8bit_rtl stage1(clk,rst,a,b,cin,s,cout);
initial begin
clk = 0; rst = 0; cin=0; a=0;b=0;
#10 rst =1 ;
#10 cin=1;
#3000 $finish;
end
always #5 clk=~clk;
initial begin
repeat( 2 ) begin
repeat( 256) begin
repeat( 256 )
#10     b = b + 1;
a= a + 1;
end
cin = cin + 1;
end
end
endmodule
