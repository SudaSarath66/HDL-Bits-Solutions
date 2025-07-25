module top_module(
    input a,
    input b,
    input c,
    output out  ); 
    
   // assign out = a | c | (b & ~c);  // SOP Form
    assign out = (a | b | c);		//POs Form

endmodule
