module RegFile(
    output reg [3:0] op1,
    output reg [3:0] op2,
    input clock,
    input [3:0] data_write,
    input [1:0] addr_write,
    input write_en,
    input [1:0] addr_read1,
    input [1:0] addr_read2
    );
    
   reg [3:0] memory [0:3];
   
   always@(posedge clock)begin
        if(write_en == 1)
            begin
            memory[addr_write] <= data_write; 
            end
    end
    
    always@(*)begin
        op1 = memory[addr_read1];
        op2 = memory[addr_read2];
    end
    
endmodule
