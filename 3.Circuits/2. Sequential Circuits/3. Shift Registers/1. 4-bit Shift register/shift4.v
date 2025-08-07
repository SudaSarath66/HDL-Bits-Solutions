module top_module(
    input clk,
    input areset,  // async active-high reset to zero
    input load,
    input ena,
    input [3:0] data,
    output reg [3:0] q); 
    
    wire [3:0] shift_reg;
    always @(posedge clk or posedge areset) 
        begin
            if(areset) begin
            shift_reg <= 4'b0;
            end
            else if (load) begin
                shift_reg <= data;
            end
            else if (ena) begin
                shift_reg <= {1'b0, q[3:1]};
            end
             else
           		shift_reg <= shift_reg;
           end
    assign q = shift_reg;

endmodule
