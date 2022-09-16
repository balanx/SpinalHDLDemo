// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : Mem_1
// Git hash  : 40a09e7801b4d01ff6c67f3e402af9d0310f44f7

`timescale 1ns/1ps

module Mem_1 (
  input               io_Wm_valid,
  input      [7:0]    io_Wm_payload_address,
  input      [31:0]   io_Wm_payload_data,
  input               io_Rm_valid,
  output              io_Rm_ready,
  input      [7:0]    io_Rm_payload,
  output              io_rsp_valid,
  input               io_rsp_ready,
  output     [31:0]   io_rsp_payload,
  input               clk,
  input               reset
);

  reg        [31:0]   _zz_mem_port1;
  wire                _zz_io_Rm_ready;
  wire                _zz_io_Rm_ready_1;
  reg                 _zz_io_Rm_ready_2;
  reg [31:0] mem [0:255];

  always @(posedge clk) begin
    if(io_Wm_valid) begin
      mem[io_Wm_payload_address] <= io_Wm_payload_data;
    end
  end

  always @(posedge clk) begin
    if(io_Rm_ready) begin
      _zz_mem_port1 <= mem[io_Rm_payload];
    end
  end

  assign io_Rm_ready = ((! _zz_io_Rm_ready) || _zz_io_Rm_ready_1);
  assign _zz_io_Rm_ready = _zz_io_Rm_ready_2;
  assign io_rsp_valid = _zz_io_Rm_ready;
  assign _zz_io_Rm_ready_1 = io_rsp_ready;
  assign io_rsp_payload = _zz_mem_port1;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _zz_io_Rm_ready_2 <= 1'b0;
    end else begin
      if(_zz_io_Rm_ready_1) begin
        _zz_io_Rm_ready_2 <= 1'b0;
      end
      if(io_Rm_ready) begin
        _zz_io_Rm_ready_2 <= io_Rm_valid;
      end
    end
  end


endmodule
