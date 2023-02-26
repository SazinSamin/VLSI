module mux1_2(input clk, d0, d1,
              input sel,
              output reg y);

    always@(posedge clk)
    begin
        case(sel)
            1'b0:    y <= d0;
            1'b1:    y <= d1;
        endcase
    end

endmodule
