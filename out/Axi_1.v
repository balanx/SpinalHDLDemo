// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : Axi_1
// Git hash  : 23d564a3e9d4d768c2cb1641ec7dc2becc0d2602

`timescale 1ns/1ps

module Axi_1 (
  input               io_s_aw_valid,
  output              io_s_aw_ready,
  input      [31:0]   io_s_aw_payload_addr,
  input      [3:0]    io_s_aw_payload_id,
  input      [3:0]    io_s_aw_payload_region,
  input      [7:0]    io_s_aw_payload_len,
  input      [2:0]    io_s_aw_payload_size,
  input      [1:0]    io_s_aw_payload_burst,
  input      [0:0]    io_s_aw_payload_lock,
  input      [3:0]    io_s_aw_payload_cache,
  input      [3:0]    io_s_aw_payload_qos,
  input      [2:0]    io_s_aw_payload_prot,
  input               io_s_w_valid,
  output              io_s_w_ready,
  input      [31:0]   io_s_w_payload_data,
  input      [3:0]    io_s_w_payload_strb,
  input               io_s_w_payload_last,
  output              io_s_b_valid,
  input               io_s_b_ready,
  output     [3:0]    io_s_b_payload_id,
  output     [1:0]    io_s_b_payload_resp,
  input               io_s_ar_valid,
  output              io_s_ar_ready,
  input      [31:0]   io_s_ar_payload_addr,
  input      [3:0]    io_s_ar_payload_id,
  input      [3:0]    io_s_ar_payload_region,
  input      [7:0]    io_s_ar_payload_len,
  input      [2:0]    io_s_ar_payload_size,
  input      [1:0]    io_s_ar_payload_burst,
  input      [0:0]    io_s_ar_payload_lock,
  input      [3:0]    io_s_ar_payload_cache,
  input      [3:0]    io_s_ar_payload_qos,
  input      [2:0]    io_s_ar_payload_prot,
  output              io_s_r_valid,
  input               io_s_r_ready,
  output     [31:0]   io_s_r_payload_data,
  output     [3:0]    io_s_r_payload_id,
  output     [1:0]    io_s_r_payload_resp,
  output              io_s_r_payload_last,
  output              io_m_aw_valid,
  input               io_m_aw_ready,
  output     [31:0]   io_m_aw_payload_addr,
  output     [3:0]    io_m_aw_payload_id,
  output     [3:0]    io_m_aw_payload_region,
  output     [7:0]    io_m_aw_payload_len,
  output     [2:0]    io_m_aw_payload_size,
  output     [1:0]    io_m_aw_payload_burst,
  output     [0:0]    io_m_aw_payload_lock,
  output     [3:0]    io_m_aw_payload_cache,
  output     [3:0]    io_m_aw_payload_qos,
  output     [2:0]    io_m_aw_payload_prot,
  output              io_m_w_valid,
  input               io_m_w_ready,
  output     [31:0]   io_m_w_payload_data,
  output     [3:0]    io_m_w_payload_strb,
  output              io_m_w_payload_last,
  input               io_m_b_valid,
  output              io_m_b_ready,
  input      [3:0]    io_m_b_payload_id,
  input      [1:0]    io_m_b_payload_resp,
  output              io_m_ar_valid,
  input               io_m_ar_ready,
  output     [31:0]   io_m_ar_payload_addr,
  output     [3:0]    io_m_ar_payload_id,
  output     [3:0]    io_m_ar_payload_region,
  output     [7:0]    io_m_ar_payload_len,
  output     [2:0]    io_m_ar_payload_size,
  output     [1:0]    io_m_ar_payload_burst,
  output     [0:0]    io_m_ar_payload_lock,
  output     [3:0]    io_m_ar_payload_cache,
  output     [3:0]    io_m_ar_payload_qos,
  output     [2:0]    io_m_ar_payload_prot,
  input               io_m_r_valid,
  output              io_m_r_ready,
  input      [31:0]   io_m_r_payload_data,
  input      [3:0]    io_m_r_payload_id,
  input      [1:0]    io_m_r_payload_resp,
  input               io_m_r_payload_last
);


  assign io_m_ar_valid = io_s_ar_valid;
  assign io_s_ar_ready = io_m_ar_ready;
  assign io_m_ar_payload_addr = io_s_ar_payload_addr;
  assign io_m_ar_payload_id = io_s_ar_payload_id;
  assign io_m_ar_payload_region = io_s_ar_payload_region;
  assign io_m_ar_payload_len = io_s_ar_payload_len;
  assign io_m_ar_payload_size = io_s_ar_payload_size;
  assign io_m_ar_payload_burst = io_s_ar_payload_burst;
  assign io_m_ar_payload_lock = io_s_ar_payload_lock;
  assign io_m_ar_payload_cache = io_s_ar_payload_cache;
  assign io_m_ar_payload_qos = io_s_ar_payload_qos;
  assign io_m_ar_payload_prot = io_s_ar_payload_prot;
  assign io_m_aw_valid = io_s_aw_valid;
  assign io_s_aw_ready = io_m_aw_ready;
  assign io_m_aw_payload_addr = io_s_aw_payload_addr;
  assign io_m_aw_payload_id = io_s_aw_payload_id;
  assign io_m_aw_payload_region = io_s_aw_payload_region;
  assign io_m_aw_payload_len = io_s_aw_payload_len;
  assign io_m_aw_payload_size = io_s_aw_payload_size;
  assign io_m_aw_payload_burst = io_s_aw_payload_burst;
  assign io_m_aw_payload_lock = io_s_aw_payload_lock;
  assign io_m_aw_payload_cache = io_s_aw_payload_cache;
  assign io_m_aw_payload_qos = io_s_aw_payload_qos;
  assign io_m_aw_payload_prot = io_s_aw_payload_prot;
  assign io_m_w_valid = io_s_w_valid;
  assign io_s_w_ready = io_m_w_ready;
  assign io_m_w_payload_data = io_s_w_payload_data;
  assign io_m_w_payload_strb = io_s_w_payload_strb;
  assign io_m_w_payload_last = io_s_w_payload_last;
  assign io_s_r_valid = io_m_r_valid;
  assign io_m_r_ready = io_s_r_ready;
  assign io_s_r_payload_data = io_m_r_payload_data;
  assign io_s_r_payload_last = io_m_r_payload_last;
  assign io_s_r_payload_id = io_m_r_payload_id;
  assign io_s_r_payload_resp = io_m_r_payload_resp;
  assign io_s_b_valid = io_m_b_valid;
  assign io_m_b_ready = io_s_b_ready;
  assign io_s_b_payload_id = io_m_b_payload_id;
  assign io_s_b_payload_resp = io_m_b_payload_resp;

endmodule
