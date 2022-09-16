// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : Clock_2
// Git hash  : 40a09e7801b4d01ff6c67f3e402af9d0310f44f7

`timescale 1ns/1ps

module Clock_2 (
  input               io_din,
  output              io_dout,
  input               a_clk,
  input               a_reset,
  input               b_clk,
  input               b_reset
);

  reg                 areaA_bufA;
  (* async_reg = "true" *) reg                 areaB_buf0;
  reg                 areaB_buf1;

  assign io_dout = areaB_buf1;
  always @(posedge a_clk or posedge a_reset) begin
    if(a_reset) begin
      areaA_bufA <= 1'b0;
    end else begin
      areaA_bufA <= io_din;
    end
  end

  always @(posedge b_clk or posedge b_reset) begin
    if(b_reset) begin
      areaB_buf0 <= 1'b0;
      areaB_buf1 <= 1'b0;
    end else begin
      areaB_buf0 <= areaA_bufA;
      areaB_buf1 <= areaB_buf0;
    end
  end


endmodule
