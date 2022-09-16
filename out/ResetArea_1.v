// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : ResetArea_1
// Git hash  : 40a09e7801b4d01ff6c67f3e402af9d0310f44f7

`timescale 1ns/1ps

module ResetArea_1 (
  input      [1:0]    din_0,
  input      [1:0]    din_1,
  output reg [1:0]    sum,
  input               rst,
  input               reset,
  input               clk
);

  wire                withRst_newReset;
  reg        [1:0]    withRst_s;
  reg        [1:0]    b_d;

  assign withRst_newReset = (reset || rst);
  always @(posedge clk or posedge withRst_newReset) begin
    if(withRst_newReset) begin
      withRst_s <= 2'b00;
    end else begin
      withRst_s <= (din_0 + 2'b01);
    end
  end

  always @(posedge clk or posedge reset) begin
    if(reset) begin
      b_d <= 2'b00;
    end else begin
      b_d <= din_1;
    end
  end

  always @(posedge clk) begin
    sum <= (withRst_s + b_d);
  end


endmodule
