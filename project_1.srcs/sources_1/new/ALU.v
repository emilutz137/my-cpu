module ALU(
    output reg [3:0] result,
    output reg carry,
    input [3:0] in0,
    input [3:0] in1,
    input [1:0] opcode
    );
    
    always@(*) begin
        case(opcode)
        2'b00: assign {carry, result} = in0 +in1;
        2'b01: result = in0 - in1;
        2'b10: result = in0 & in1;
        2'b11: result = 0;
        default: result = 0;
        endcase
    end
    
endmodule
