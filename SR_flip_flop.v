
module SR_flip_flop(
  input  clk,
  input  s,
  input  r,
  output reg q,
  output reg qbar
);

  always @(posedge clk) begin
    case ({s, r})
      2'b00: begin q <= q; qbar <= qbar; end
      2'b01: begin q <= 0; qbar <= 1; end
      2'b10: begin q <= 1; qbar <= 0; end
      2'b11: begin q <= 0; qbar <= 0; end // invalid state
    endcase
  end

endmodule
