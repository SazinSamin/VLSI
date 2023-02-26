module half_adder(sel, i0, i1, clk, o);
    input sel, i0, i1, clk;
    output reg o;   
    
    always @ (posedge clk) 
        begin
            if(!sel)
                o <= i0;
            else
                o <= i1;
        end
endmodule
