// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : assignTest_1
// Git hash  : 40a09e7801b4d01ff6c67f3e402af9d0310f44f7

`timescale 1ns/1ps

module assignTest_1 (
  input      [7:0]    io_din_0,
  input      [7:0]    io_din_1,
  input      [7:0]    io_din_2,
  input      [7:0]    io_din_3,
  output     [7:0]    io_sum
);

  reg        [7:0]    temp_3;
  reg        [7:0]    temp_2;
  reg        [7:0]    temp_1;
  wire       [7:0]    temp;

  always @(*) begin
    temp_3 = temp_2;
    temp_3 = (temp_2 + io_din_3);
  end

  always @(*) begin
    temp_2 = temp_1;
    temp_2 = (temp_1 + io_din_2);
  end

  always @(*) begin
    temp_1 = temp;
    temp_1 = (temp + io_din_1);
  end

  assign temp = io_din_0;
  assign io_sum = temp_3;

endmodule
