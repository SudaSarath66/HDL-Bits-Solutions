module top_module (
    input clk,
    input in, 
    output reg out);
    
    wire w1;
    
    assign w1 = in ^ out;
    
    always @(posedge clk)
        begin
          out <= w1;
        end

endmodule
