// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : Clock_5
// Git hash  : 40a09e7801b4d01ff6c67f3e402af9d0310f44f7

`timescale 1ns/1ps

module Clock_5 (
  output reg          io_c0,
  output              io_c1,
  input               clk,
  input               reset,
  input               sys_clk,
  input               sys_reset
);

  reg                 tmp;

  assign io_c1 = tmp;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      io_c0 <= 1'b0;
    end else begin
      io_c0 <= (! io_c0);
    end
  end

  always @(posedge sys_clk or posedge sys_reset) begin
    if(sys_reset) begin
      tmp <= 1'b0;
    end else begin
      tmp <= (! tmp);
    end
  end


endmodule
