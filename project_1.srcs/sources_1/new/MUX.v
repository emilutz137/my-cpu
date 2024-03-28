module MUX(
    output reg [3:0] out,
    input [3:0] in0,
    input [3:0] in1,
    input [3:0] in2,
    input [3:0] in3,
    input [1:0] sel
      );
      
      
    always@(*) begin
        case(sel)
        0: out = in0;
        1: out = in1;
        2: out = in2;
        3: out = in3;
        default: out = in0;
        
    endcase
  
    end  
  
endmodule
