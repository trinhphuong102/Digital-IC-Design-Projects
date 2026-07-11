module full_adder(a , b , cin , s , cout);
 	input wire a , b , cin;
  	output wire s , cout;
  wire [2:0] w ;
  half_adder ha1(.a(a) , .b(b), .s(w[0]), .cout(w[1]));
  half_adder ha2(.a(w[0]) , .b(cin), .s(s), .cout(w[2]));
  assign cout = w[1] | w[2] ;

endmodule

module half_adder(a , b , s ,cout);
  input wire a , b;
  output reg s , cout;
  always @(a,b) begin
    s = a ^ b ;
    cout = a & b;
  end
endmodule
