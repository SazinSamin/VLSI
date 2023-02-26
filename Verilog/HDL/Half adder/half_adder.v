module half_adder(a, b, clk, sum, cout);
    input a, b, clk;
    output reg sum, cout;
    
    always @ (posedge clk) 
        begin
            {cout, sum} =  a + b;
        end
endmodule
