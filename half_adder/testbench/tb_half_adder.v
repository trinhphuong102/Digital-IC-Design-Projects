//testbench
`timescale 1ps/1ps
module tb_half_adder;
  reg atb , btb ;
  wire sumtb , couttb;

  half_adder ha (
    .a(atb) , 
    .b(btb) , 
    .sum(sumtb) ,
    .cout(couttb)
);
initial begin
    $monitor("At time %t ,a = %b , b = %b  , s = %b , cout =%b", $time ,atb , btb ,sumtb , couttb);
    atb = 0 ; btb = 0;
    #1
    atb = 1 ; btb = 0 ;
    #1
    atb = 0 ; btb = 1 ;
    #1
    atb = 1 ; btb = 1 ;
    #2
    $finish;
 end
 initial begin
    $dumpfile("wave_ha.vcd"); 
    $dumpvars(0, tb_half_adder);
 end

endmodule
