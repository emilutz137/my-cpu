module top(

    output [3:0] result,
    output carry,
    input [1:0] clock,
    input [1:0] reset,
    input [1:0] enable,
    input [3:0] data_in

    );
    wire [31:0] w1;
    wire [14:0] w2;
    wire [2:0] w3, w4, w5, w6;
    
    COUNTER COUNTER(
    .out(w1),
    .reset(reset),
    .clock(clock),
    .enable(enable)
    );
     
    ROM ROM(
    .instr(w2),
    .instr_addr(w1[26:25])
    );
    
     MUX MUX(
    .out(w3),
    .in0(w2[3:0]),
    .in1(data_in),
    .in2(3'b000),
    .in3(result),
    .sel(w2[5:4])
    );
    
       ALU ALU(
    .result(result),
    .carry(carry),
    .in0(w4),
    .in1(w5),
    .opcode(w2[14:13])
    );
    
    RegFile RegFile(
    .op1(w4),
    .op2(w5),
    .clock(clock),
    .data_write(w3),
    .addr_wrtie(w2[7:6]),
    .write_en(w2[8]),
    .addr_read1(w2[10:9]),
    .addr_read2(w2[12:11])
    );

endmodule
