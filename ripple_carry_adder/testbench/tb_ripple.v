`timescale 1ns/1ps
module tb_ripple;
    parameter N = 32;
    reg  [N-1:0] a, b;
    wire [N-1:0] s;
    wire c;

    rippleNbit #(N) uut (
        .a(a),
        .b(b),
        .s(s),
        .c(c)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_ripple);   

        $display("Time |     a      |     b      |    sum     | carry");
        $display("=====================================================");

        repeat(1000) begin
            a = $random; 
            b = $random;
            #5; // Đợi mạch
            
            // In kết quả 
            $display("%4t | %8h | %8h | %8h |   %b", $time, a, b, s, c);
        end
        $finish;    
    end

endmodule
