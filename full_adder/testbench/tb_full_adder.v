`timescale 1ps/1ps
module  tb_full_adder;
    reg a , b , cin ;
    wire sum , cout ;
 full_adder fa (
    .a(a) , 
    .b(b) , 
    .cin(cin) , 
    .s(sum) , 
    .cout(cout));

initial begin
  $monitor("At time %t , a = %b , b = %b , cin = %b  , sum = %b , cout = %b" , $time , 
    a , b , cin , sum, cout);
    a = 0 ; b = 0 ; cin = 0;
    #1
    a = 0 ; b = 0 ; cin = 1;    
    #1
    a = 0 ; b = 1 ; cin = 0;
    #1
    a = 1 ; b = 0 ; cin = 0;
    #1
    a = 1 ; b = 1 ; cin = 0;
    #1
    a = 0 ; b = 1 ; cin = 1;
    #1
    a = 1 ; b = 0 ; cin = 1;
    #1
    a = 1 ; b = 1 ; cin = 1;
    #1
    $finish;

end  
    
    initial begin
        $dumpfile("wave.vcd");      // tạo file VCD
        $dumpvars(0, tb_full_adder); // dump toàn bộ tín hiệu
    end
endmodule
