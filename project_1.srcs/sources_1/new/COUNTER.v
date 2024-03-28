module COUNTER(

    output reg [31:0] count,
    input reset,
    input clock,
    input enable
  
    );
    
  always@(posedge clock) begin
    if(reset == 0)
        count <= 0;
    else
        count <= count + 1;  
end
    
    
    
endmodule
