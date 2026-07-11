module rippleNbit #(parameter N = 4) (a , b , s , c); 
    input wire [N-1:0] a , b ;
    output wire [N-1:0]  s ;
    output wire c;
    wire [N-1:0] carry;
    
    full_adder fa1(.a(a[0]) , .b(b[0]) , .cin(1'b0), .s(s[0]) , .cout(carry[0]));
genvar i ;
generate
    for (i = 1;i < N ; i = i + 1) begin
        full_adder fa(.a(a[i]) , .b(b[i]) , .cin(carry[i-1]), .s(s[i]) , .cout(carry[i]));
    end
endgenerate
    assign c = carry[N-1];

endmodule

module half_adder (a , b , s , c);

    input wire a , b ;
    output reg s , c ;

    always @(a , b) begin
        s = a ^ b ;
        c = a & b;
    end

endmodule

module full_adder (a , b , cin , s , cout);

    input wire a , b , cin ;
    output wire s , cout;

    wire w1 , w2 , w3;

    half_adder ha1 (.a(a) , .b(b) , .s(w1) , .c(w2));
    half_adder ha2 (.a(w1) , .b(cin) , .s(s) , .c(w3));
    assign cout = w2 | w3 ;

endmodule
