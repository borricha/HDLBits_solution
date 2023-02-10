module top_module (
    input a, b, c, d, e,
    output [24:0] out );//
	
    wire [4:0] t1, t2, t3, t4, t5;
    assign t1 = {5{a}};
    assign t2 = {5{b}};
    assign t3 = {5{c}};
    assign t4 = {5{d}};
    assign t5 = {5{e}};
    
    assign out = ~{t1,t2,t3,t4,t5} ^ {5{a,b,c,d,e}};
    
    // The output is XNOR of two vectors created by 
    // concatenating and replicating the five inputs.
    // assign out = ~{ ... } ^ { ... };

endmodule