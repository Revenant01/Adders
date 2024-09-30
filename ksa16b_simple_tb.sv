`timescale 1ns / 1ps
module ksa16b_simple_tb ();
  // Parameters
  localparam WIDTH = 16;
  // Signals
  reg [WIDTH-1:0] a_tb, b_tb;
  reg cin_tb;
  wire [WIDTH-1:0] sum_tb;
  wire cout_tb;

  // Instantiate the DUT (Device Under Test)
  ksa16b_simple dut (
      .a(a_tb),
      .b(b_tb),
      .cin(cin_tb),
      .sum(sum_tb),
      .cout(cout_tb)
  );

  // Testbench logic
  initial begin
    // Test case 1
    a_tb   = 16'h1234;
    b_tb   = 16'h5678;
    cin_tb = 1'b0;
    #10;
    if (sum_tb !== 16'h68AC || cout_tb !== 1'b0)
      $display("Test case 1 failed, sum %h, carry %h", sum_tb, cout_tb);
    else $display("Test case 1 passed, sum %h, carry %h", sum_tb, cout_tb);

    // Test case 2
    a_tb   = 16'hFFFF;
    b_tb   = 16'h0001;
    cin_tb = 1'b0;
    #10;
    if (sum_tb !== 16'h0000 || cout_tb !== 1'b1)
      $display("Test case 2 failed, sum %h, carry %h", sum_tb, cout_tb);
    else $display("Test case 2 passed, sum %h, carry %h", sum_tb, cout_tb);

    // Test case 3
    a_tb   = 16'hAAAA;
    b_tb   = 16'h5555;
    cin_tb = 1'b1;
    #10;
    if (sum_tb !== 16'h0000 || cout_tb !== 1'b1)
      $display("Test case 3 failed, sum %h, carry %h", sum_tb, cout_tb);
    else $display("Test case 3 passed, sum %h, carry %h", sum_tb, cout_tb);

    $display("********************All test cases completed********************");
    $stop;
  end
endmodule
