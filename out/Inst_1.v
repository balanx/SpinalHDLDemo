// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : Inst_1
// Git hash  : 23d564a3e9d4d768c2cb1641ec7dc2becc0d2602

`timescale 1ns/1ps

module Inst_1 (
  input               io_validIn,
  input      [7:0]    io_data1,
  input      [7:0]    io_data2,
  output     [7:0]    io_sum,
  output              io_sumValid,
  input               clk,
  input               reset
);

  wire       [7:0]    adder_sum;
  wire                adder_sumValid;

  add_1 adder (
    .validIn  (io_validIn    ), //i
    .data1    (io_data1[7:0] ), //i
    .data2    (io_data2[7:0] ), //i
    .sum      (adder_sum[7:0]), //o
    .sumValid (adder_sumValid), //o
    .clk      (clk           ), //i
    .reset    (reset         )  //i
  );
  assign io_sum = adder_sum;
  assign io_sumValid = adder_sumValid;

endmodule

module add_1 (
  input               validIn,
  input      [7:0]    data1,
  input      [7:0]    data2,
  output     [7:0]    sum,
  output              sumValid,
  input               clk,
  input               reset
);

  reg        [7:0]    _zz_sum;
  reg                 validIn_regNext;

  assign sum = _zz_sum;
  assign sumValid = validIn_regNext;
  always @(posedge clk) begin
    if(validIn) begin
      _zz_sum <= (data1 + data2);
    end
  end

  always @(posedge clk or posedge reset) begin
    if(reset) begin
      validIn_regNext <= 1'b0;
    end else begin
      validIn_regNext <= validIn;
    end
  end


endmodule
