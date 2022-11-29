module fadder32bit_tb;
reg [31:0]a,b;
regcin,clk,rst;
wire [31:0]sum;
wirecout;
fadder32bit m2(sum,cout,a,b,cin,clk,rst);
initial begin
a=0;b=0;cin=0;clk=0;rst=0;
#10 rst=1;
#21000  $finish;
end
always #10 clk=~clk;
always #20 a=a+1;
always #40 b=b+1;
always #80 cin=~cin;
endmodule
