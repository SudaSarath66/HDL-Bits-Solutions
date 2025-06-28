module top_module ( input wire clk, input wire  d, output wire q );
    wire w1,w2;

    my_dff ( .clk(clk), .d(d), .q(w1) );
    my_dff ( .clk(clk), .d(w1), .q(w2) );
    my_dff ( .clk(clk), .d(w2), .q(q) );
    

endmodule
