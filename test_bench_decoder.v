//////////////////////////////////////////////////////////////////////////////////
// Design: Test bench for Decoder using combinational logic
// Engineer: kiran
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps


module test_decoder3x8();
    parameter N = 3;
// inputs to the DUT
    reg [N-1:0] in = 3'b000;
// outputs from the DUT
    wire [2**N-1:0] out;




decoder3x8 DUT ( .in(in), .out(out) );

initial
    begin
        $display($time, " << Simulation Results >>");
        $monitor($time, "in = %b, out = %b", in, out);
    end

 initial begin
        for(integer i=0; i<=7; i=i+1) begin
            #2;
            in = in + 3'b001;
        end
        $finish;
    end

endmodule