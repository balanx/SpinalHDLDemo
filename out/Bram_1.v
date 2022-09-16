// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : Bram_1
// Git hash  : 40a09e7801b4d01ff6c67f3e402af9d0310f44f7

`timescale 1ns/1ps

module Bram_1 (
  input               din_en,
  input      [3:0]    din_we,
  input      [15:0]   din_addr,
  input      [31:0]   din_wrdata,
  output     [31:0]   din_rddata,
  output              do1_en,
  output     [3:0]    do1_we,
  output     [15:0]   do1_addr,
  output     [31:0]   do1_wrdata,
  input      [31:0]   do1_rddata,
  output              do2_en,
  output     [3:0]    do2_we,
  output     [15:0]   do2_addr,
  output     [31:0]   do2_wrdata,
  input      [31:0]   do2_rddata,
  input               clk,
  input               reset
);

  wire       [31:0]   brammux_io_input_rddata;
  wire                brammux_io_outputs_0_en;
  wire       [3:0]    brammux_io_outputs_0_we;
  wire       [15:0]   brammux_io_outputs_0_addr;
  wire       [31:0]   brammux_io_outputs_0_wrdata;
  wire                brammux_io_outputs_1_en;
  wire       [3:0]    brammux_io_outputs_1_we;
  wire       [15:0]   brammux_io_outputs_1_addr;
  wire       [31:0]   brammux_io_outputs_1_wrdata;

  BRAMDecoder brammux (
    .io_input_en         (din_en                           ), //i
    .io_input_we         (din_we[3:0]                      ), //i
    .io_input_addr       (din_addr[15:0]                   ), //i
    .io_input_wrdata     (din_wrdata[31:0]                 ), //i
    .io_input_rddata     (brammux_io_input_rddata[31:0]    ), //o
    .io_outputs_0_en     (brammux_io_outputs_0_en          ), //o
    .io_outputs_0_we     (brammux_io_outputs_0_we[3:0]     ), //o
    .io_outputs_0_addr   (brammux_io_outputs_0_addr[15:0]  ), //o
    .io_outputs_0_wrdata (brammux_io_outputs_0_wrdata[31:0]), //o
    .io_outputs_0_rddata (do1_rddata[31:0]                 ), //i
    .io_outputs_1_en     (brammux_io_outputs_1_en          ), //o
    .io_outputs_1_we     (brammux_io_outputs_1_we[3:0]     ), //o
    .io_outputs_1_addr   (brammux_io_outputs_1_addr[15:0]  ), //o
    .io_outputs_1_wrdata (brammux_io_outputs_1_wrdata[31:0]), //o
    .io_outputs_1_rddata (do2_rddata[31:0]                 ), //i
    .clk                 (clk                              ), //i
    .reset               (reset                            )  //i
  );
  assign din_rddata = brammux_io_input_rddata;
  assign do1_addr = brammux_io_outputs_0_addr;
  assign do1_we = brammux_io_outputs_0_we;
  assign do1_wrdata = brammux_io_outputs_0_wrdata;
  assign do1_en = brammux_io_outputs_0_en;
  assign do2_addr = brammux_io_outputs_1_addr;
  assign do2_we = brammux_io_outputs_1_we;
  assign do2_wrdata = brammux_io_outputs_1_wrdata;
  assign do2_en = brammux_io_outputs_1_en;

endmodule

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
    sel[0] = (((io_input_addr & (~ 16'h03ff)) == 16'h0) && io_input_en);
    sel[1] = (((16'h1000 <= io_input_addr) && (io_input_addr < 16'h1c00)) && io_input_en);
  end

  assign io_input_rddata = _zz_io_input_rddata;
  always @(posedge clk) begin
    selIndex <= _zz_selIndex;
  end


endmodule
