// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : BRAMDecoder
// Git hash  : 40a09e7801b4d01ff6c67f3e402af9d0310f44f7

`timescale 1ns/1ps

module BRAMDecoder (
  input               io_input_en,
  input      [3:0]    io_input_we,
  input      [15:0]   io_input_addr,
  input      [31:0]   io_input_wrdata,
  output     [31:0]   io_input_rddata,
  output              io_outputs_0_en,
  output     [3:0]    io_outputs_0_we,
  output     [15:0]   io_outputs_0_addr,
  output     [31:0]   io_outputs_0_wrdata,
  input      [31:0]   io_outputs_0_rddata,
  output              io_outputs_1_en,
  output     [3:0]    io_outputs_1_we,
  output     [15:0]   io_outputs_1_addr,
  output     [31:0]   io_outputs_1_wrdata,
  input      [31:0]   io_outputs_1_rddata,
  input               clk,
  input               reset
);

  reg        [31:0]   _zz_io_input_rddata;
  reg        [1:0]    sel;
  wire                _zz_selIndex;
  reg        [0:0]    selIndex;

  always @(*) begin
    case(selIndex)
      1'b0 : _zz_io_input_rddata = io_outputs_0_rddata;
      default : _zz_io_input_rddata = io_outputs_1_rddata;
    endcase
  end

  assign io_outputs_0_addr = io_input_addr;
  assign io_outputs_0_wrdata = io_input_wrdata;
  assign io_outputs_0_we = io_input_we;
  assign io_outputs_0_en = (io_input_en && sel[0]);
  assign io_outputs_1_addr = io_input_addr;
  assign io_outputs_1_wrdata = io_input_wrdata;
  assign io_outputs_1_we = io_input_we;
  assign io_outputs_1_en = (io_input_en && sel[1]);
  assign _zz_selIndex = sel[1];
  always @(*) begin
    sel[0] = ((io_input_addr < 16'h0014) && io_input_en);
    sel[1] = (((io_input_addr & (~ 16'h03ff)) == 16'h1000) && io_input_en);
  end

  assign io_input_rddata = _zz_io_input_rddata;
  always @(posedge clk) begin
    selIndex <= _zz_selIndex;
  end


endmodule
