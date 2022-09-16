// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : Clock_7
// Git hash  : 40a09e7801b4d01ff6c67f3e402af9d0310f44f7

`timescale 1ns/1ps

module Clock_7 (
  output reg          io_c0,
  output reg          io_c1,
  input               clk,
  input               reset
);


  always @(posedge clk or posedge reset) begin
    if(reset) begin
      io_c0 <= 1'b0;
      io_c1 <= 1'b0;
    end else begin
      io_c0 <= (! io_c0);
      io_c1 <= (! io_c1);
    end
  end


endmodule
