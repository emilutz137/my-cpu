module ROM(
    output reg [14:0] instr,
    input [1:0] instr_addr
    );
    
    always@(instr_addr) begin
        case(instr_addr)
            2'd0: instr = 15'b11_00_00_1_00_00_1010;
            2'd1: instr = 15'b11_00_00_1_01_01_0000;
            2'd2: instr = 15'b00_01_00_1_10_11_0000;
            2'd3: instr = 15'b10_01_00_1_11_11_1010;
        
        endcase
    
    end
    
endmodule
