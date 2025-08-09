module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
    wire [7:0]inter_signal;
    
    always @(posedge clk)
        begin
            inter_signal <= in;
            pedge <= in & ~inter_signal;
        end
    
endmodule
