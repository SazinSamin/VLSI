[IVerilog & gtk_wave intall](https://www.youtube.com/watch?v=SzYluleCDEM)  
add this line in test bench below inital begin:  
-	    $dumpfile("test_mux21.vcd");  
-   	$dumpvars(0, mux21_tb);  
Comile the verilog:  
-   	iverilog -o mux21_wave mux21.v mux21_tb.v   
Generate wave:  
-	    vvp mux21_wave   
see the wave in gtk_wave:  
-   	gtkwave test_mux21.vcd

***We can't put value in "wire" datatype***

