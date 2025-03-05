module SR_flip_flop_tb;

  reg clk;
  reg s;
  reg r;
  wire q;
  wire qbar;

  SR_flip_flop dut (
    .clk(clk),
    .s(s),
    .r(r),
    .q(q),
    .qbar(qbar)
  );

  initial begin
    clk = 0;
    s = 0;
    r = 0;
    #10 $display("Clk: %b, S: %b, R: %b, Q: %b, Qbar: %b", clk, s, r, q, qbar);

    // Test case 1: S = 0, R = 0
    #5 clk = 1;
    #10 $display("Clk: %b, S: %b, R: %b, Q: %b, Qbar: %b", clk, s, r, q, qbar);
    #5 clk = 0;

    // Test case 2: S = 1, R = 0
    s = 1;
    #5 clk = 1;
    #10 $display("Clk: %b, S: %b, R: %b, Q: %b, Qbar: %b", clk, s, r, q, qbar);
    #5 clk = 0;

    // Test case 3: S = 0, R = 1
    s = 0;
    r = 1;
    #5 clk = 1;
    #10 $display("Clk: %b, S: %b, R: %b, Q: %b, Qbar: %b", clk, s, r, q, qbar);
    #5 clk = 0;

    #10 $finish;
  end

endmodule



