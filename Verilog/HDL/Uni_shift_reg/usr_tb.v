module usr32bit_tb;
reg [31:0]a;
reg [1:0]shift_lt_rt;
regload,rst,clk;
wire [31:0] cout;
usr32bit inst1(cout,clk,rst,load,shift_lt_rt,a);
initial begin
a=0; shift_lt_rt=0; load=0; clk=0; rst=0;
#20 rst =1;
#6000 $finish;
end
always #50  clk=~clk;
always #100 load=~load;
always #150 a=~a;
always #200 shift_lt_rt=shift_lt_rt+1;
endmodule
