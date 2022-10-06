// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : CrossbarFactory_1
// Git hash  : 23d564a3e9d4d768c2cb1641ec7dc2becc0d2602

`timescale 1ns/1ps

module CrossbarFactory_1 (
  input               axi4In_0_awvalid,
  output              axi4In_0_awready,
  input      [63:0]   axi4In_0_awaddr,
  input      [3:0]    axi4In_0_awid,
  input      [3:0]    axi4In_0_awregion,
  input      [7:0]    axi4In_0_awlen,
  input      [2:0]    axi4In_0_awsize,
  input      [1:0]    axi4In_0_awburst,
  input      [0:0]    axi4In_0_awlock,
  input      [3:0]    axi4In_0_awcache,
  input      [3:0]    axi4In_0_awqos,
  input      [2:0]    axi4In_0_awprot,
  input               axi4In_0_wvalid,
  output              axi4In_0_wready,
  input      [511:0]  axi4In_0_wdata,
  input      [63:0]   axi4In_0_wstrb,
  input               axi4In_0_wlast,
  output              axi4In_0_bvalid,
  input               axi4In_0_bready,
  output     [3:0]    axi4In_0_bid,
  output     [1:0]    axi4In_0_bresp,
  input               axi4In_0_arvalid,
  output              axi4In_0_arready,
  input      [63:0]   axi4In_0_araddr,
  input      [3:0]    axi4In_0_arid,
  input      [3:0]    axi4In_0_arregion,
  input      [7:0]    axi4In_0_arlen,
  input      [2:0]    axi4In_0_arsize,
  input      [1:0]    axi4In_0_arburst,
  input      [0:0]    axi4In_0_arlock,
  input      [3:0]    axi4In_0_arcache,
  input      [3:0]    axi4In_0_arqos,
  input      [2:0]    axi4In_0_arprot,
  output              axi4In_0_rvalid,
  input               axi4In_0_rready,
  output     [511:0]  axi4In_0_rdata,
  output     [3:0]    axi4In_0_rid,
  output     [1:0]    axi4In_0_rresp,
  output              axi4In_0_rlast,
  input               axi4In_1_awvalid,
  output              axi4In_1_awready,
  input      [63:0]   axi4In_1_awaddr,
  input      [3:0]    axi4In_1_awid,
  input      [3:0]    axi4In_1_awregion,
  input      [7:0]    axi4In_1_awlen,
  input      [2:0]    axi4In_1_awsize,
  input      [1:0]    axi4In_1_awburst,
  input      [0:0]    axi4In_1_awlock,
  input      [3:0]    axi4In_1_awcache,
  input      [3:0]    axi4In_1_awqos,
  input      [2:0]    axi4In_1_awprot,
  input               axi4In_1_wvalid,
  output              axi4In_1_wready,
  input      [511:0]  axi4In_1_wdata,
  input      [63:0]   axi4In_1_wstrb,
  input               axi4In_1_wlast,
  output              axi4In_1_bvalid,
  input               axi4In_1_bready,
  output     [3:0]    axi4In_1_bid,
  output     [1:0]    axi4In_1_bresp,
  input               axi4In_1_arvalid,
  output              axi4In_1_arready,
  input      [63:0]   axi4In_1_araddr,
  input      [3:0]    axi4In_1_arid,
  input      [3:0]    axi4In_1_arregion,
  input      [7:0]    axi4In_1_arlen,
  input      [2:0]    axi4In_1_arsize,
  input      [1:0]    axi4In_1_arburst,
  input      [0:0]    axi4In_1_arlock,
  input      [3:0]    axi4In_1_arcache,
  input      [3:0]    axi4In_1_arqos,
  input      [2:0]    axi4In_1_arprot,
  output              axi4In_1_rvalid,
  input               axi4In_1_rready,
  output     [511:0]  axi4In_1_rdata,
  output     [3:0]    axi4In_1_rid,
  output     [1:0]    axi4In_1_rresp,
  output              axi4In_1_rlast,
  output              axi40ut_0_awvalid,
  input               axi40ut_0_awready,
  output     [63:0]   axi40ut_0_awaddr,
  output     [4:0]    axi40ut_0_awid,
  output     [3:0]    axi40ut_0_awregion,
  output     [7:0]    axi40ut_0_awlen,
  output     [2:0]    axi40ut_0_awsize,
  output     [1:0]    axi40ut_0_awburst,
  output     [0:0]    axi40ut_0_awlock,
  output     [3:0]    axi40ut_0_awcache,
  output     [3:0]    axi40ut_0_awqos,
  output     [2:0]    axi40ut_0_awprot,
  output              axi40ut_0_wvalid,
  input               axi40ut_0_wready,
  output     [511:0]  axi40ut_0_wdata,
  output     [63:0]   axi40ut_0_wstrb,
  output              axi40ut_0_wlast,
  input               axi40ut_0_bvalid,
  output              axi40ut_0_bready,
  input      [4:0]    axi40ut_0_bid,
  input      [1:0]    axi40ut_0_bresp,
  output              axi40ut_0_arvalid,
  input               axi40ut_0_arready,
  output     [63:0]   axi40ut_0_araddr,
  output     [4:0]    axi40ut_0_arid,
  output     [3:0]    axi40ut_0_arregion,
  output     [7:0]    axi40ut_0_arlen,
  output     [2:0]    axi40ut_0_arsize,
  output     [1:0]    axi40ut_0_arburst,
  output     [0:0]    axi40ut_0_arlock,
  output     [3:0]    axi40ut_0_arcache,
  output     [3:0]    axi40ut_0_arqos,
  output     [2:0]    axi40ut_0_arprot,
  input               axi40ut_0_rvalid,
  output              axi40ut_0_rready,
  input      [511:0]  axi40ut_0_rdata,
  input      [4:0]    axi40ut_0_rid,
  input      [1:0]    axi40ut_0_rresp,
  input               axi40ut_0_rlast,
  output              axi40ut_1_awvalid,
  input               axi40ut_1_awready,
  output     [63:0]   axi40ut_1_awaddr,
  output     [4:0]    axi40ut_1_awid,
  output     [3:0]    axi40ut_1_awregion,
  output     [7:0]    axi40ut_1_awlen,
  output     [2:0]    axi40ut_1_awsize,
  output     [1:0]    axi40ut_1_awburst,
  output     [0:0]    axi40ut_1_awlock,
  output     [3:0]    axi40ut_1_awcache,
  output     [3:0]    axi40ut_1_awqos,
  output     [2:0]    axi40ut_1_awprot,
  output              axi40ut_1_wvalid,
  input               axi40ut_1_wready,
  output     [511:0]  axi40ut_1_wdata,
  output     [63:0]   axi40ut_1_wstrb,
  output              axi40ut_1_wlast,
  input               axi40ut_1_bvalid,
  output              axi40ut_1_bready,
  input      [4:0]    axi40ut_1_bid,
  input      [1:0]    axi40ut_1_bresp,
  output              axi40ut_1_arvalid,
  input               axi40ut_1_arready,
  output     [63:0]   axi40ut_1_araddr,
  output     [4:0]    axi40ut_1_arid,
  output     [3:0]    axi40ut_1_arregion,
  output     [7:0]    axi40ut_1_arlen,
  output     [2:0]    axi40ut_1_arsize,
  output     [1:0]    axi40ut_1_arburst,
  output     [0:0]    axi40ut_1_arlock,
  output     [3:0]    axi40ut_1_arcache,
  output     [3:0]    axi40ut_1_arqos,
  output     [2:0]    axi40ut_1_arprot,
  input               axi40ut_1_rvalid,
  output              axi40ut_1_rready,
  input      [511:0]  axi40ut_1_rdata,
  input      [4:0]    axi40ut_1_rid,
  input      [1:0]    axi40ut_1_rresp,
  input               axi40ut_1_rlast,
  input               clk,
  input               reset
);

  reg                 axi4ReadOnlyArbiter_2_io_output_ar_ready;
  reg                 axi4WriteOnlyArbiter_2_io_output_aw_ready;
  reg                 axi4WriteOnlyArbiter_2_io_output_w_ready;
  reg                 axi4ReadOnlyArbiter_3_io_output_ar_ready;
  reg                 axi4WriteOnlyArbiter_3_io_output_aw_ready;
  reg                 axi4WriteOnlyArbiter_3_io_output_w_ready;
  wire                io_axi4In_0_readOnly_decoder_io_input_ar_ready;
  wire                io_axi4In_0_readOnly_decoder_io_input_r_valid;
  wire       [511:0]  io_axi4In_0_readOnly_decoder_io_input_r_payload_data;
  wire       [3:0]    io_axi4In_0_readOnly_decoder_io_input_r_payload_id;
  wire       [1:0]    io_axi4In_0_readOnly_decoder_io_input_r_payload_resp;
  wire                io_axi4In_0_readOnly_decoder_io_input_r_payload_last;
  wire                io_axi4In_0_readOnly_decoder_io_outputs_0_ar_valid;
  wire       [63:0]   io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_addr;
  wire       [3:0]    io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_id;
  wire       [3:0]    io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_region;
  wire       [7:0]    io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_len;
  wire       [2:0]    io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_size;
  wire       [1:0]    io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_burst;
  wire       [0:0]    io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_lock;
  wire       [3:0]    io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_cache;
  wire       [3:0]    io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_qos;
  wire       [2:0]    io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_prot;
  wire                io_axi4In_0_readOnly_decoder_io_outputs_0_r_ready;
  wire                io_axi4In_0_readOnly_decoder_io_outputs_1_ar_valid;
  wire       [63:0]   io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_addr;
  wire       [3:0]    io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_id;
  wire       [3:0]    io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_region;
  wire       [7:0]    io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_len;
  wire       [2:0]    io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_size;
  wire       [1:0]    io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_burst;
  wire       [0:0]    io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_lock;
  wire       [3:0]    io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_cache;
  wire       [3:0]    io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_qos;
  wire       [2:0]    io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_prot;
  wire                io_axi4In_0_readOnly_decoder_io_outputs_1_r_ready;
  wire                io_axi4In_0_writeOnly_decoder_io_input_aw_ready;
  wire                io_axi4In_0_writeOnly_decoder_io_input_w_ready;
  wire                io_axi4In_0_writeOnly_decoder_io_input_b_valid;
  wire       [3:0]    io_axi4In_0_writeOnly_decoder_io_input_b_payload_id;
  wire       [1:0]    io_axi4In_0_writeOnly_decoder_io_input_b_payload_resp;
  wire                io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_valid;
  wire       [63:0]   io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_addr;
  wire       [3:0]    io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_id;
  wire       [3:0]    io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_region;
  wire       [7:0]    io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_len;
  wire       [2:0]    io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_size;
  wire       [1:0]    io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_burst;
  wire       [0:0]    io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_lock;
  wire       [3:0]    io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_cache;
  wire       [3:0]    io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_qos;
  wire       [2:0]    io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_prot;
  wire                io_axi4In_0_writeOnly_decoder_io_outputs_0_w_valid;
  wire       [511:0]  io_axi4In_0_writeOnly_decoder_io_outputs_0_w_payload_data;
  wire       [63:0]   io_axi4In_0_writeOnly_decoder_io_outputs_0_w_payload_strb;
  wire                io_axi4In_0_writeOnly_decoder_io_outputs_0_w_payload_last;
  wire                io_axi4In_0_writeOnly_decoder_io_outputs_0_b_ready;
  wire                io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_valid;
  wire       [63:0]   io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_addr;
  wire       [3:0]    io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_id;
  wire       [3:0]    io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_region;
  wire       [7:0]    io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_len;
  wire       [2:0]    io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_size;
  wire       [1:0]    io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_burst;
  wire       [0:0]    io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_lock;
  wire       [3:0]    io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_cache;
  wire       [3:0]    io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_qos;
  wire       [2:0]    io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_prot;
  wire                io_axi4In_0_writeOnly_decoder_io_outputs_1_w_valid;
  wire       [511:0]  io_axi4In_0_writeOnly_decoder_io_outputs_1_w_payload_data;
  wire       [63:0]   io_axi4In_0_writeOnly_decoder_io_outputs_1_w_payload_strb;
  wire                io_axi4In_0_writeOnly_decoder_io_outputs_1_w_payload_last;
  wire                io_axi4In_0_writeOnly_decoder_io_outputs_1_b_ready;
  wire                io_axi4In_1_readOnly_decoder_io_input_ar_ready;
  wire                io_axi4In_1_readOnly_decoder_io_input_r_valid;
  wire       [511:0]  io_axi4In_1_readOnly_decoder_io_input_r_payload_data;
  wire       [3:0]    io_axi4In_1_readOnly_decoder_io_input_r_payload_id;
  wire       [1:0]    io_axi4In_1_readOnly_decoder_io_input_r_payload_resp;
  wire                io_axi4In_1_readOnly_decoder_io_input_r_payload_last;
  wire                io_axi4In_1_readOnly_decoder_io_outputs_0_ar_valid;
  wire       [63:0]   io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_addr;
  wire       [3:0]    io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_id;
  wire       [3:0]    io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_region;
  wire       [7:0]    io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_len;
  wire       [2:0]    io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_size;
  wire       [1:0]    io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_burst;
  wire       [0:0]    io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_lock;
  wire       [3:0]    io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_cache;
  wire       [3:0]    io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_qos;
  wire       [2:0]    io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_prot;
  wire                io_axi4In_1_readOnly_decoder_io_outputs_0_r_ready;
  wire                io_axi4In_1_readOnly_decoder_io_outputs_1_ar_valid;
  wire       [63:0]   io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_addr;
  wire       [3:0]    io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_id;
  wire       [3:0]    io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_region;
  wire       [7:0]    io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_len;
  wire       [2:0]    io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_size;
  wire       [1:0]    io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_burst;
  wire       [0:0]    io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_lock;
  wire       [3:0]    io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_cache;
  wire       [3:0]    io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_qos;
  wire       [2:0]    io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_prot;
  wire                io_axi4In_1_readOnly_decoder_io_outputs_1_r_ready;
  wire                io_axi4In_1_writeOnly_decoder_io_input_aw_ready;
  wire                io_axi4In_1_writeOnly_decoder_io_input_w_ready;
  wire                io_axi4In_1_writeOnly_decoder_io_input_b_valid;
  wire       [3:0]    io_axi4In_1_writeOnly_decoder_io_input_b_payload_id;
  wire       [1:0]    io_axi4In_1_writeOnly_decoder_io_input_b_payload_resp;
  wire                io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_valid;
  wire       [63:0]   io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_addr;
  wire       [3:0]    io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_id;
  wire       [3:0]    io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_region;
  wire       [7:0]    io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_len;
  wire       [2:0]    io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_size;
  wire       [1:0]    io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_burst;
  wire       [0:0]    io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_lock;
  wire       [3:0]    io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_cache;
  wire       [3:0]    io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_qos;
  wire       [2:0]    io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_prot;
  wire                io_axi4In_1_writeOnly_decoder_io_outputs_0_w_valid;
  wire       [511:0]  io_axi4In_1_writeOnly_decoder_io_outputs_0_w_payload_data;
  wire       [63:0]   io_axi4In_1_writeOnly_decoder_io_outputs_0_w_payload_strb;
  wire                io_axi4In_1_writeOnly_decoder_io_outputs_0_w_payload_last;
  wire                io_axi4In_1_writeOnly_decoder_io_outputs_0_b_ready;
  wire                io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_valid;
  wire       [63:0]   io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_addr;
  wire       [3:0]    io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_id;
  wire       [3:0]    io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_region;
  wire       [7:0]    io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_len;
  wire       [2:0]    io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_size;
  wire       [1:0]    io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_burst;
  wire       [0:0]    io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_lock;
  wire       [3:0]    io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_cache;
  wire       [3:0]    io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_qos;
  wire       [2:0]    io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_prot;
  wire                io_axi4In_1_writeOnly_decoder_io_outputs_1_w_valid;
  wire       [511:0]  io_axi4In_1_writeOnly_decoder_io_outputs_1_w_payload_data;
  wire       [63:0]   io_axi4In_1_writeOnly_decoder_io_outputs_1_w_payload_strb;
  wire                io_axi4In_1_writeOnly_decoder_io_outputs_1_w_payload_last;
  wire                io_axi4In_1_writeOnly_decoder_io_outputs_1_b_ready;
  wire                axi4ReadOnlyArbiter_2_io_inputs_0_ar_ready;
  wire                axi4ReadOnlyArbiter_2_io_inputs_0_r_valid;
  wire       [511:0]  axi4ReadOnlyArbiter_2_io_inputs_0_r_payload_data;
  wire       [3:0]    axi4ReadOnlyArbiter_2_io_inputs_0_r_payload_id;
  wire       [1:0]    axi4ReadOnlyArbiter_2_io_inputs_0_r_payload_resp;
  wire                axi4ReadOnlyArbiter_2_io_inputs_0_r_payload_last;
  wire                axi4ReadOnlyArbiter_2_io_inputs_1_ar_ready;
  wire                axi4ReadOnlyArbiter_2_io_inputs_1_r_valid;
  wire       [511:0]  axi4ReadOnlyArbiter_2_io_inputs_1_r_payload_data;
  wire       [3:0]    axi4ReadOnlyArbiter_2_io_inputs_1_r_payload_id;
  wire       [1:0]    axi4ReadOnlyArbiter_2_io_inputs_1_r_payload_resp;
  wire                axi4ReadOnlyArbiter_2_io_inputs_1_r_payload_last;
  wire                axi4ReadOnlyArbiter_2_io_output_ar_valid;
  wire       [63:0]   axi4ReadOnlyArbiter_2_io_output_ar_payload_addr;
  wire       [4:0]    axi4ReadOnlyArbiter_2_io_output_ar_payload_id;
  wire       [3:0]    axi4ReadOnlyArbiter_2_io_output_ar_payload_region;
  wire       [7:0]    axi4ReadOnlyArbiter_2_io_output_ar_payload_len;
  wire       [2:0]    axi4ReadOnlyArbiter_2_io_output_ar_payload_size;
  wire       [1:0]    axi4ReadOnlyArbiter_2_io_output_ar_payload_burst;
  wire       [0:0]    axi4ReadOnlyArbiter_2_io_output_ar_payload_lock;
  wire       [3:0]    axi4ReadOnlyArbiter_2_io_output_ar_payload_cache;
  wire       [3:0]    axi4ReadOnlyArbiter_2_io_output_ar_payload_qos;
  wire       [2:0]    axi4ReadOnlyArbiter_2_io_output_ar_payload_prot;
  wire                axi4ReadOnlyArbiter_2_io_output_r_ready;
  wire                axi4WriteOnlyArbiter_2_io_inputs_0_aw_ready;
  wire                axi4WriteOnlyArbiter_2_io_inputs_0_w_ready;
  wire                axi4WriteOnlyArbiter_2_io_inputs_0_b_valid;
  wire       [3:0]    axi4WriteOnlyArbiter_2_io_inputs_0_b_payload_id;
  wire       [1:0]    axi4WriteOnlyArbiter_2_io_inputs_0_b_payload_resp;
  wire                axi4WriteOnlyArbiter_2_io_inputs_1_aw_ready;
  wire                axi4WriteOnlyArbiter_2_io_inputs_1_w_ready;
  wire                axi4WriteOnlyArbiter_2_io_inputs_1_b_valid;
  wire       [3:0]    axi4WriteOnlyArbiter_2_io_inputs_1_b_payload_id;
  wire       [1:0]    axi4WriteOnlyArbiter_2_io_inputs_1_b_payload_resp;
  wire                axi4WriteOnlyArbiter_2_io_output_aw_valid;
  wire       [63:0]   axi4WriteOnlyArbiter_2_io_output_aw_payload_addr;
  wire       [4:0]    axi4WriteOnlyArbiter_2_io_output_aw_payload_id;
  wire       [3:0]    axi4WriteOnlyArbiter_2_io_output_aw_payload_region;
  wire       [7:0]    axi4WriteOnlyArbiter_2_io_output_aw_payload_len;
  wire       [2:0]    axi4WriteOnlyArbiter_2_io_output_aw_payload_size;
  wire       [1:0]    axi4WriteOnlyArbiter_2_io_output_aw_payload_burst;
  wire       [0:0]    axi4WriteOnlyArbiter_2_io_output_aw_payload_lock;
  wire       [3:0]    axi4WriteOnlyArbiter_2_io_output_aw_payload_cache;
  wire       [3:0]    axi4WriteOnlyArbiter_2_io_output_aw_payload_qos;
  wire       [2:0]    axi4WriteOnlyArbiter_2_io_output_aw_payload_prot;
  wire                axi4WriteOnlyArbiter_2_io_output_w_valid;
  wire       [511:0]  axi4WriteOnlyArbiter_2_io_output_w_payload_data;
  wire       [63:0]   axi4WriteOnlyArbiter_2_io_output_w_payload_strb;
  wire                axi4WriteOnlyArbiter_2_io_output_w_payload_last;
  wire                axi4WriteOnlyArbiter_2_io_output_b_ready;
  wire                axi4ReadOnlyArbiter_3_io_inputs_0_ar_ready;
  wire                axi4ReadOnlyArbiter_3_io_inputs_0_r_valid;
  wire       [511:0]  axi4ReadOnlyArbiter_3_io_inputs_0_r_payload_data;
  wire       [3:0]    axi4ReadOnlyArbiter_3_io_inputs_0_r_payload_id;
  wire       [1:0]    axi4ReadOnlyArbiter_3_io_inputs_0_r_payload_resp;
  wire                axi4ReadOnlyArbiter_3_io_inputs_0_r_payload_last;
  wire                axi4ReadOnlyArbiter_3_io_inputs_1_ar_ready;
  wire                axi4ReadOnlyArbiter_3_io_inputs_1_r_valid;
  wire       [511:0]  axi4ReadOnlyArbiter_3_io_inputs_1_r_payload_data;
  wire       [3:0]    axi4ReadOnlyArbiter_3_io_inputs_1_r_payload_id;
  wire       [1:0]    axi4ReadOnlyArbiter_3_io_inputs_1_r_payload_resp;
  wire                axi4ReadOnlyArbiter_3_io_inputs_1_r_payload_last;
  wire                axi4ReadOnlyArbiter_3_io_output_ar_valid;
  wire       [63:0]   axi4ReadOnlyArbiter_3_io_output_ar_payload_addr;
  wire       [4:0]    axi4ReadOnlyArbiter_3_io_output_ar_payload_id;
  wire       [3:0]    axi4ReadOnlyArbiter_3_io_output_ar_payload_region;
  wire       [7:0]    axi4ReadOnlyArbiter_3_io_output_ar_payload_len;
  wire       [2:0]    axi4ReadOnlyArbiter_3_io_output_ar_payload_size;
  wire       [1:0]    axi4ReadOnlyArbiter_3_io_output_ar_payload_burst;
  wire       [0:0]    axi4ReadOnlyArbiter_3_io_output_ar_payload_lock;
  wire       [3:0]    axi4ReadOnlyArbiter_3_io_output_ar_payload_cache;
  wire       [3:0]    axi4ReadOnlyArbiter_3_io_output_ar_payload_qos;
  wire       [2:0]    axi4ReadOnlyArbiter_3_io_output_ar_payload_prot;
  wire                axi4ReadOnlyArbiter_3_io_output_r_ready;
  wire                axi4WriteOnlyArbiter_3_io_inputs_0_aw_ready;
  wire                axi4WriteOnlyArbiter_3_io_inputs_0_w_ready;
  wire                axi4WriteOnlyArbiter_3_io_inputs_0_b_valid;
  wire       [3:0]    axi4WriteOnlyArbiter_3_io_inputs_0_b_payload_id;
  wire       [1:0]    axi4WriteOnlyArbiter_3_io_inputs_0_b_payload_resp;
  wire                axi4WriteOnlyArbiter_3_io_inputs_1_aw_ready;
  wire                axi4WriteOnlyArbiter_3_io_inputs_1_w_ready;
  wire                axi4WriteOnlyArbiter_3_io_inputs_1_b_valid;
  wire       [3:0]    axi4WriteOnlyArbiter_3_io_inputs_1_b_payload_id;
  wire       [1:0]    axi4WriteOnlyArbiter_3_io_inputs_1_b_payload_resp;
  wire                axi4WriteOnlyArbiter_3_io_output_aw_valid;
  wire       [63:0]   axi4WriteOnlyArbiter_3_io_output_aw_payload_addr;
  wire       [4:0]    axi4WriteOnlyArbiter_3_io_output_aw_payload_id;
  wire       [3:0]    axi4WriteOnlyArbiter_3_io_output_aw_payload_region;
  wire       [7:0]    axi4WriteOnlyArbiter_3_io_output_aw_payload_len;
  wire       [2:0]    axi4WriteOnlyArbiter_3_io_output_aw_payload_size;
  wire       [1:0]    axi4WriteOnlyArbiter_3_io_output_aw_payload_burst;
  wire       [0:0]    axi4WriteOnlyArbiter_3_io_output_aw_payload_lock;
  wire       [3:0]    axi4WriteOnlyArbiter_3_io_output_aw_payload_cache;
  wire       [3:0]    axi4WriteOnlyArbiter_3_io_output_aw_payload_qos;
  wire       [2:0]    axi4WriteOnlyArbiter_3_io_output_aw_payload_prot;
  wire                axi4WriteOnlyArbiter_3_io_output_w_valid;
  wire       [511:0]  axi4WriteOnlyArbiter_3_io_output_w_payload_data;
  wire       [63:0]   axi4WriteOnlyArbiter_3_io_output_w_payload_strb;
  wire                axi4WriteOnlyArbiter_3_io_output_w_payload_last;
  wire                axi4WriteOnlyArbiter_3_io_output_b_ready;
  reg                 _zz_axi40ut_0_rready;
  reg                 _zz_axi40ut_0_bready;
  reg                 _zz_axi40ut_1_rready;
  reg                 _zz_axi40ut_1_bready;
  wire                io_axi4In_0_readOnly_ar_valid;
  wire                io_axi4In_0_readOnly_ar_ready;
  wire       [63:0]   io_axi4In_0_readOnly_ar_payload_addr;
  wire       [3:0]    io_axi4In_0_readOnly_ar_payload_id;
  wire       [3:0]    io_axi4In_0_readOnly_ar_payload_region;
  wire       [7:0]    io_axi4In_0_readOnly_ar_payload_len;
  wire       [2:0]    io_axi4In_0_readOnly_ar_payload_size;
  wire       [1:0]    io_axi4In_0_readOnly_ar_payload_burst;
  wire       [0:0]    io_axi4In_0_readOnly_ar_payload_lock;
  wire       [3:0]    io_axi4In_0_readOnly_ar_payload_cache;
  wire       [3:0]    io_axi4In_0_readOnly_ar_payload_qos;
  wire       [2:0]    io_axi4In_0_readOnly_ar_payload_prot;
  wire                io_axi4In_0_readOnly_r_valid;
  wire                io_axi4In_0_readOnly_r_ready;
  wire       [511:0]  io_axi4In_0_readOnly_r_payload_data;
  wire       [3:0]    io_axi4In_0_readOnly_r_payload_id;
  wire       [1:0]    io_axi4In_0_readOnly_r_payload_resp;
  wire                io_axi4In_0_readOnly_r_payload_last;
  wire                io_axi4In_0_writeOnly_aw_valid;
  wire                io_axi4In_0_writeOnly_aw_ready;
  wire       [63:0]   io_axi4In_0_writeOnly_aw_payload_addr;
  wire       [3:0]    io_axi4In_0_writeOnly_aw_payload_id;
  wire       [3:0]    io_axi4In_0_writeOnly_aw_payload_region;
  wire       [7:0]    io_axi4In_0_writeOnly_aw_payload_len;
  wire       [2:0]    io_axi4In_0_writeOnly_aw_payload_size;
  wire       [1:0]    io_axi4In_0_writeOnly_aw_payload_burst;
  wire       [0:0]    io_axi4In_0_writeOnly_aw_payload_lock;
  wire       [3:0]    io_axi4In_0_writeOnly_aw_payload_cache;
  wire       [3:0]    io_axi4In_0_writeOnly_aw_payload_qos;
  wire       [2:0]    io_axi4In_0_writeOnly_aw_payload_prot;
  wire                io_axi4In_0_writeOnly_w_valid;
  wire                io_axi4In_0_writeOnly_w_ready;
  wire       [511:0]  io_axi4In_0_writeOnly_w_payload_data;
  wire       [63:0]   io_axi4In_0_writeOnly_w_payload_strb;
  wire                io_axi4In_0_writeOnly_w_payload_last;
  wire                io_axi4In_0_writeOnly_b_valid;
  wire                io_axi4In_0_writeOnly_b_ready;
  wire       [3:0]    io_axi4In_0_writeOnly_b_payload_id;
  wire       [1:0]    io_axi4In_0_writeOnly_b_payload_resp;
  wire                io_axi4In_1_readOnly_ar_valid;
  wire                io_axi4In_1_readOnly_ar_ready;
  wire       [63:0]   io_axi4In_1_readOnly_ar_payload_addr;
  wire       [3:0]    io_axi4In_1_readOnly_ar_payload_id;
  wire       [3:0]    io_axi4In_1_readOnly_ar_payload_region;
  wire       [7:0]    io_axi4In_1_readOnly_ar_payload_len;
  wire       [2:0]    io_axi4In_1_readOnly_ar_payload_size;
  wire       [1:0]    io_axi4In_1_readOnly_ar_payload_burst;
  wire       [0:0]    io_axi4In_1_readOnly_ar_payload_lock;
  wire       [3:0]    io_axi4In_1_readOnly_ar_payload_cache;
  wire       [3:0]    io_axi4In_1_readOnly_ar_payload_qos;
  wire       [2:0]    io_axi4In_1_readOnly_ar_payload_prot;
  wire                io_axi4In_1_readOnly_r_valid;
  wire                io_axi4In_1_readOnly_r_ready;
  wire       [511:0]  io_axi4In_1_readOnly_r_payload_data;
  wire       [3:0]    io_axi4In_1_readOnly_r_payload_id;
  wire       [1:0]    io_axi4In_1_readOnly_r_payload_resp;
  wire                io_axi4In_1_readOnly_r_payload_last;
  wire                io_axi4In_1_writeOnly_aw_valid;
  wire                io_axi4In_1_writeOnly_aw_ready;
  wire       [63:0]   io_axi4In_1_writeOnly_aw_payload_addr;
  wire       [3:0]    io_axi4In_1_writeOnly_aw_payload_id;
  wire       [3:0]    io_axi4In_1_writeOnly_aw_payload_region;
  wire       [7:0]    io_axi4In_1_writeOnly_aw_payload_len;
  wire       [2:0]    io_axi4In_1_writeOnly_aw_payload_size;
  wire       [1:0]    io_axi4In_1_writeOnly_aw_payload_burst;
  wire       [0:0]    io_axi4In_1_writeOnly_aw_payload_lock;
  wire       [3:0]    io_axi4In_1_writeOnly_aw_payload_cache;
  wire       [3:0]    io_axi4In_1_writeOnly_aw_payload_qos;
  wire       [2:0]    io_axi4In_1_writeOnly_aw_payload_prot;
  wire                io_axi4In_1_writeOnly_w_valid;
  wire                io_axi4In_1_writeOnly_w_ready;
  wire       [511:0]  io_axi4In_1_writeOnly_w_payload_data;
  wire       [63:0]   io_axi4In_1_writeOnly_w_payload_strb;
  wire                io_axi4In_1_writeOnly_w_payload_last;
  wire                io_axi4In_1_writeOnly_b_valid;
  wire                io_axi4In_1_writeOnly_b_ready;
  wire       [3:0]    io_axi4In_1_writeOnly_b_payload_id;
  wire       [1:0]    io_axi4In_1_writeOnly_b_payload_resp;
  wire                io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_valid;
  wire                io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_ready;
  wire       [63:0]   io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_addr;
  wire       [3:0]    io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_id;
  wire       [3:0]    io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_region;
  wire       [7:0]    io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_len;
  wire       [2:0]    io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_size;
  wire       [1:0]    io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_burst;
  wire       [0:0]    io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_lock;
  wire       [3:0]    io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_cache;
  wire       [3:0]    io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_qos;
  wire       [2:0]    io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_prot;
  reg                 io_axi4In_0_readOnly_decoder_io_outputs_0_ar_rValid;
  wire                io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_fire;
  wire                io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_fire_1;
  wire                io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_valid;
  wire                io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_ready;
  wire       [63:0]   io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_addr;
  wire       [3:0]    io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_id;
  wire       [3:0]    io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_region;
  wire       [7:0]    io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_len;
  wire       [2:0]    io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_size;
  wire       [1:0]    io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_burst;
  wire       [0:0]    io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_lock;
  wire       [3:0]    io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_cache;
  wire       [3:0]    io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_qos;
  wire       [2:0]    io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_prot;
  reg                 io_axi4In_0_readOnly_decoder_io_outputs_1_ar_rValid;
  wire                io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_fire;
  wire                io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_fire_1;
  wire                io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_valid;
  wire                io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_ready;
  wire       [63:0]   io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_addr;
  wire       [3:0]    io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_id;
  wire       [3:0]    io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_region;
  wire       [7:0]    io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_len;
  wire       [2:0]    io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_size;
  wire       [1:0]    io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_burst;
  wire       [0:0]    io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_lock;
  wire       [3:0]    io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_cache;
  wire       [3:0]    io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_qos;
  wire       [2:0]    io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_prot;
  reg                 io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_rValid;
  wire                io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_fire;
  wire                io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_fire_1;
  wire                io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_valid;
  wire                io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_ready;
  wire       [63:0]   io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_addr;
  wire       [3:0]    io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_id;
  wire       [3:0]    io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_region;
  wire       [7:0]    io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_len;
  wire       [2:0]    io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_size;
  wire       [1:0]    io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_burst;
  wire       [0:0]    io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_lock;
  wire       [3:0]    io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_cache;
  wire       [3:0]    io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_qos;
  wire       [2:0]    io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_prot;
  reg                 io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_rValid;
  wire                io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_fire;
  wire                io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_fire_1;
  wire                io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_valid;
  wire                io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_ready;
  wire       [63:0]   io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_addr;
  wire       [3:0]    io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_id;
  wire       [3:0]    io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_region;
  wire       [7:0]    io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_len;
  wire       [2:0]    io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_size;
  wire       [1:0]    io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_burst;
  wire       [0:0]    io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_lock;
  wire       [3:0]    io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_cache;
  wire       [3:0]    io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_qos;
  wire       [2:0]    io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_prot;
  reg                 io_axi4In_1_readOnly_decoder_io_outputs_0_ar_rValid;
  wire                io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_fire;
  wire                io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_fire_1;
  wire                io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_valid;
  wire                io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_ready;
  wire       [63:0]   io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_addr;
  wire       [3:0]    io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_id;
  wire       [3:0]    io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_region;
  wire       [7:0]    io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_len;
  wire       [2:0]    io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_size;
  wire       [1:0]    io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_burst;
  wire       [0:0]    io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_lock;
  wire       [3:0]    io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_cache;
  wire       [3:0]    io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_qos;
  wire       [2:0]    io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_prot;
  reg                 io_axi4In_1_readOnly_decoder_io_outputs_1_ar_rValid;
  wire                io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_fire;
  wire                io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_fire_1;
  wire                io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_valid;
  wire                io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_ready;
  wire       [63:0]   io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_addr;
  wire       [3:0]    io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_id;
  wire       [3:0]    io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_region;
  wire       [7:0]    io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_len;
  wire       [2:0]    io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_size;
  wire       [1:0]    io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_burst;
  wire       [0:0]    io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_lock;
  wire       [3:0]    io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_cache;
  wire       [3:0]    io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_qos;
  wire       [2:0]    io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_prot;
  reg                 io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_rValid;
  wire                io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_fire;
  wire                io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_fire_1;
  wire                io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_valid;
  wire                io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_ready;
  wire       [63:0]   io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_addr;
  wire       [3:0]    io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_id;
  wire       [3:0]    io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_region;
  wire       [7:0]    io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_len;
  wire       [2:0]    io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_size;
  wire       [1:0]    io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_burst;
  wire       [0:0]    io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_lock;
  wire       [3:0]    io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_cache;
  wire       [3:0]    io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_qos;
  wire       [2:0]    io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_prot;
  reg                 io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_rValid;
  wire                io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_fire;
  wire                io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_fire_1;
  wire                axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_valid;
  wire                axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_ready;
  wire       [63:0]   axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_addr;
  wire       [4:0]    axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_id;
  wire       [3:0]    axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_region;
  wire       [7:0]    axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_len;
  wire       [2:0]    axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_size;
  wire       [1:0]    axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_burst;
  wire       [0:0]    axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_lock;
  wire       [3:0]    axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_cache;
  wire       [3:0]    axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_qos;
  wire       [2:0]    axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_prot;
  reg                 axi4ReadOnlyArbiter_2_io_output_ar_rValid;
  reg        [63:0]   axi4ReadOnlyArbiter_2_io_output_ar_rData_addr;
  reg        [4:0]    axi4ReadOnlyArbiter_2_io_output_ar_rData_id;
  reg        [3:0]    axi4ReadOnlyArbiter_2_io_output_ar_rData_region;
  reg        [7:0]    axi4ReadOnlyArbiter_2_io_output_ar_rData_len;
  reg        [2:0]    axi4ReadOnlyArbiter_2_io_output_ar_rData_size;
  reg        [1:0]    axi4ReadOnlyArbiter_2_io_output_ar_rData_burst;
  reg        [0:0]    axi4ReadOnlyArbiter_2_io_output_ar_rData_lock;
  reg        [3:0]    axi4ReadOnlyArbiter_2_io_output_ar_rData_cache;
  reg        [3:0]    axi4ReadOnlyArbiter_2_io_output_ar_rData_qos;
  reg        [2:0]    axi4ReadOnlyArbiter_2_io_output_ar_rData_prot;
  wire                when_Stream_l368;
  wire                _zz_when_Stream_l368;
  reg                 _zz_when_Stream_l368_1;
  reg        [511:0]  _zz_io_output_r_payload_data;
  reg        [4:0]    _zz_io_output_r_payload_id;
  reg        [1:0]    _zz_io_output_r_payload_resp;
  reg                 _zz_io_output_r_payload_last;
  wire                when_Stream_l368_1;
  wire                axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_valid;
  wire                axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_ready;
  wire       [63:0]   axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_addr;
  wire       [4:0]    axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_id;
  wire       [3:0]    axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_region;
  wire       [7:0]    axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_len;
  wire       [2:0]    axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_size;
  wire       [1:0]    axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_burst;
  wire       [0:0]    axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_lock;
  wire       [3:0]    axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_cache;
  wire       [3:0]    axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_qos;
  wire       [2:0]    axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_prot;
  reg                 axi4WriteOnlyArbiter_2_io_output_aw_rValid;
  reg        [63:0]   axi4WriteOnlyArbiter_2_io_output_aw_rData_addr;
  reg        [4:0]    axi4WriteOnlyArbiter_2_io_output_aw_rData_id;
  reg        [3:0]    axi4WriteOnlyArbiter_2_io_output_aw_rData_region;
  reg        [7:0]    axi4WriteOnlyArbiter_2_io_output_aw_rData_len;
  reg        [2:0]    axi4WriteOnlyArbiter_2_io_output_aw_rData_size;
  reg        [1:0]    axi4WriteOnlyArbiter_2_io_output_aw_rData_burst;
  reg        [0:0]    axi4WriteOnlyArbiter_2_io_output_aw_rData_lock;
  reg        [3:0]    axi4WriteOnlyArbiter_2_io_output_aw_rData_cache;
  reg        [3:0]    axi4WriteOnlyArbiter_2_io_output_aw_rData_qos;
  reg        [2:0]    axi4WriteOnlyArbiter_2_io_output_aw_rData_prot;
  wire                when_Stream_l368_2;
  wire                axi4WriteOnlyArbiter_2_io_output_w_m2sPipe_valid;
  wire                axi4WriteOnlyArbiter_2_io_output_w_m2sPipe_ready;
  wire       [511:0]  axi4WriteOnlyArbiter_2_io_output_w_m2sPipe_payload_data;
  wire       [63:0]   axi4WriteOnlyArbiter_2_io_output_w_m2sPipe_payload_strb;
  wire                axi4WriteOnlyArbiter_2_io_output_w_m2sPipe_payload_last;
  reg                 axi4WriteOnlyArbiter_2_io_output_w_rValid;
  reg        [511:0]  axi4WriteOnlyArbiter_2_io_output_w_rData_data;
  reg        [63:0]   axi4WriteOnlyArbiter_2_io_output_w_rData_strb;
  reg                 axi4WriteOnlyArbiter_2_io_output_w_rData_last;
  wire                when_Stream_l368_3;
  wire                _zz_when_Stream_l368_2;
  reg                 _zz_when_Stream_l368_3;
  reg        [4:0]    _zz_io_output_b_payload_id;
  reg        [1:0]    _zz_io_output_b_payload_resp;
  wire                when_Stream_l368_4;
  wire                axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_valid;
  wire                axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_ready;
  wire       [63:0]   axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_addr;
  wire       [4:0]    axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_id;
  wire       [3:0]    axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_region;
  wire       [7:0]    axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_len;
  wire       [2:0]    axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_size;
  wire       [1:0]    axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_burst;
  wire       [0:0]    axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_lock;
  wire       [3:0]    axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_cache;
  wire       [3:0]    axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_qos;
  wire       [2:0]    axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_prot;
  reg                 axi4ReadOnlyArbiter_3_io_output_ar_rValid;
  reg        [63:0]   axi4ReadOnlyArbiter_3_io_output_ar_rData_addr;
  reg        [4:0]    axi4ReadOnlyArbiter_3_io_output_ar_rData_id;
  reg        [3:0]    axi4ReadOnlyArbiter_3_io_output_ar_rData_region;
  reg        [7:0]    axi4ReadOnlyArbiter_3_io_output_ar_rData_len;
  reg        [2:0]    axi4ReadOnlyArbiter_3_io_output_ar_rData_size;
  reg        [1:0]    axi4ReadOnlyArbiter_3_io_output_ar_rData_burst;
  reg        [0:0]    axi4ReadOnlyArbiter_3_io_output_ar_rData_lock;
  reg        [3:0]    axi4ReadOnlyArbiter_3_io_output_ar_rData_cache;
  reg        [3:0]    axi4ReadOnlyArbiter_3_io_output_ar_rData_qos;
  reg        [2:0]    axi4ReadOnlyArbiter_3_io_output_ar_rData_prot;
  wire                when_Stream_l368_5;
  wire                _zz_when_Stream_l368_4;
  reg                 _zz_when_Stream_l368_5;
  reg        [511:0]  _zz_io_output_r_payload_data_1;
  reg        [4:0]    _zz_io_output_r_payload_id_1;
  reg        [1:0]    _zz_io_output_r_payload_resp_1;
  reg                 _zz_io_output_r_payload_last_1;
  wire                when_Stream_l368_6;
  wire                axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_valid;
  wire                axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_ready;
  wire       [63:0]   axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_addr;
  wire       [4:0]    axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_id;
  wire       [3:0]    axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_region;
  wire       [7:0]    axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_len;
  wire       [2:0]    axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_size;
  wire       [1:0]    axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_burst;
  wire       [0:0]    axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_lock;
  wire       [3:0]    axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_cache;
  wire       [3:0]    axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_qos;
  wire       [2:0]    axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_prot;
  reg                 axi4WriteOnlyArbiter_3_io_output_aw_rValid;
  reg        [63:0]   axi4WriteOnlyArbiter_3_io_output_aw_rData_addr;
  reg        [4:0]    axi4WriteOnlyArbiter_3_io_output_aw_rData_id;
  reg        [3:0]    axi4WriteOnlyArbiter_3_io_output_aw_rData_region;
  reg        [7:0]    axi4WriteOnlyArbiter_3_io_output_aw_rData_len;
  reg        [2:0]    axi4WriteOnlyArbiter_3_io_output_aw_rData_size;
  reg        [1:0]    axi4WriteOnlyArbiter_3_io_output_aw_rData_burst;
  reg        [0:0]    axi4WriteOnlyArbiter_3_io_output_aw_rData_lock;
  reg        [3:0]    axi4WriteOnlyArbiter_3_io_output_aw_rData_cache;
  reg        [3:0]    axi4WriteOnlyArbiter_3_io_output_aw_rData_qos;
  reg        [2:0]    axi4WriteOnlyArbiter_3_io_output_aw_rData_prot;
  wire                when_Stream_l368_7;
  wire                axi4WriteOnlyArbiter_3_io_output_w_m2sPipe_valid;
  wire                axi4WriteOnlyArbiter_3_io_output_w_m2sPipe_ready;
  wire       [511:0]  axi4WriteOnlyArbiter_3_io_output_w_m2sPipe_payload_data;
  wire       [63:0]   axi4WriteOnlyArbiter_3_io_output_w_m2sPipe_payload_strb;
  wire                axi4WriteOnlyArbiter_3_io_output_w_m2sPipe_payload_last;
  reg                 axi4WriteOnlyArbiter_3_io_output_w_rValid;
  reg        [511:0]  axi4WriteOnlyArbiter_3_io_output_w_rData_data;
  reg        [63:0]   axi4WriteOnlyArbiter_3_io_output_w_rData_strb;
  reg                 axi4WriteOnlyArbiter_3_io_output_w_rData_last;
  wire                when_Stream_l368_8;
  wire                _zz_when_Stream_l368_6;
  reg                 _zz_when_Stream_l368_7;
  reg        [4:0]    _zz_io_output_b_payload_id_1;
  reg        [1:0]    _zz_io_output_b_payload_resp_1;
  wire                when_Stream_l368_9;

  Axi4ReadOnlyDecoder io_axi4In_0_readOnly_decoder (
    .io_input_ar_valid              (io_axi4In_0_readOnly_ar_valid                                   ), //i
    .io_input_ar_ready              (io_axi4In_0_readOnly_decoder_io_input_ar_ready                  ), //o
    .io_input_ar_payload_addr       (io_axi4In_0_readOnly_ar_payload_addr[63:0]                      ), //i
    .io_input_ar_payload_id         (io_axi4In_0_readOnly_ar_payload_id[3:0]                         ), //i
    .io_input_ar_payload_region     (io_axi4In_0_readOnly_ar_payload_region[3:0]                     ), //i
    .io_input_ar_payload_len        (io_axi4In_0_readOnly_ar_payload_len[7:0]                        ), //i
    .io_input_ar_payload_size       (io_axi4In_0_readOnly_ar_payload_size[2:0]                       ), //i
    .io_input_ar_payload_burst      (io_axi4In_0_readOnly_ar_payload_burst[1:0]                      ), //i
    .io_input_ar_payload_lock       (io_axi4In_0_readOnly_ar_payload_lock                            ), //i
    .io_input_ar_payload_cache      (io_axi4In_0_readOnly_ar_payload_cache[3:0]                      ), //i
    .io_input_ar_payload_qos        (io_axi4In_0_readOnly_ar_payload_qos[3:0]                        ), //i
    .io_input_ar_payload_prot       (io_axi4In_0_readOnly_ar_payload_prot[2:0]                       ), //i
    .io_input_r_valid               (io_axi4In_0_readOnly_decoder_io_input_r_valid                   ), //o
    .io_input_r_ready               (io_axi4In_0_readOnly_r_ready                                    ), //i
    .io_input_r_payload_data        (io_axi4In_0_readOnly_decoder_io_input_r_payload_data[511:0]     ), //o
    .io_input_r_payload_id          (io_axi4In_0_readOnly_decoder_io_input_r_payload_id[3:0]         ), //o
    .io_input_r_payload_resp        (io_axi4In_0_readOnly_decoder_io_input_r_payload_resp[1:0]       ), //o
    .io_input_r_payload_last        (io_axi4In_0_readOnly_decoder_io_input_r_payload_last            ), //o
    .io_outputs_0_ar_valid          (io_axi4In_0_readOnly_decoder_io_outputs_0_ar_valid              ), //o
    .io_outputs_0_ar_ready          (io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_fire_1   ), //i
    .io_outputs_0_ar_payload_addr   (io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_addr[63:0] ), //o
    .io_outputs_0_ar_payload_id     (io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_id[3:0]    ), //o
    .io_outputs_0_ar_payload_region (io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_region[3:0]), //o
    .io_outputs_0_ar_payload_len    (io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_len[7:0]   ), //o
    .io_outputs_0_ar_payload_size   (io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_size[2:0]  ), //o
    .io_outputs_0_ar_payload_burst  (io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_burst[1:0] ), //o
    .io_outputs_0_ar_payload_lock   (io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_lock       ), //o
    .io_outputs_0_ar_payload_cache  (io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_cache[3:0] ), //o
    .io_outputs_0_ar_payload_qos    (io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_qos[3:0]   ), //o
    .io_outputs_0_ar_payload_prot   (io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_prot[2:0]  ), //o
    .io_outputs_0_r_valid           (axi4ReadOnlyArbiter_2_io_inputs_0_r_valid                       ), //i
    .io_outputs_0_r_ready           (io_axi4In_0_readOnly_decoder_io_outputs_0_r_ready               ), //o
    .io_outputs_0_r_payload_data    (axi4ReadOnlyArbiter_2_io_inputs_0_r_payload_data[511:0]         ), //i
    .io_outputs_0_r_payload_id      (axi4ReadOnlyArbiter_2_io_inputs_0_r_payload_id[3:0]             ), //i
    .io_outputs_0_r_payload_resp    (axi4ReadOnlyArbiter_2_io_inputs_0_r_payload_resp[1:0]           ), //i
    .io_outputs_0_r_payload_last    (axi4ReadOnlyArbiter_2_io_inputs_0_r_payload_last                ), //i
    .io_outputs_1_ar_valid          (io_axi4In_0_readOnly_decoder_io_outputs_1_ar_valid              ), //o
    .io_outputs_1_ar_ready          (io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_fire_1   ), //i
    .io_outputs_1_ar_payload_addr   (io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_addr[63:0] ), //o
    .io_outputs_1_ar_payload_id     (io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_id[3:0]    ), //o
    .io_outputs_1_ar_payload_region (io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_region[3:0]), //o
    .io_outputs_1_ar_payload_len    (io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_len[7:0]   ), //o
    .io_outputs_1_ar_payload_size   (io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_size[2:0]  ), //o
    .io_outputs_1_ar_payload_burst  (io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_burst[1:0] ), //o
    .io_outputs_1_ar_payload_lock   (io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_lock       ), //o
    .io_outputs_1_ar_payload_cache  (io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_cache[3:0] ), //o
    .io_outputs_1_ar_payload_qos    (io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_qos[3:0]   ), //o
    .io_outputs_1_ar_payload_prot   (io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_prot[2:0]  ), //o
    .io_outputs_1_r_valid           (axi4ReadOnlyArbiter_3_io_inputs_0_r_valid                       ), //i
    .io_outputs_1_r_ready           (io_axi4In_0_readOnly_decoder_io_outputs_1_r_ready               ), //o
    .io_outputs_1_r_payload_data    (axi4ReadOnlyArbiter_3_io_inputs_0_r_payload_data[511:0]         ), //i
    .io_outputs_1_r_payload_id      (axi4ReadOnlyArbiter_3_io_inputs_0_r_payload_id[3:0]             ), //i
    .io_outputs_1_r_payload_resp    (axi4ReadOnlyArbiter_3_io_inputs_0_r_payload_resp[1:0]           ), //i
    .io_outputs_1_r_payload_last    (axi4ReadOnlyArbiter_3_io_inputs_0_r_payload_last                ), //i
    .clk                            (clk                                                             ), //i
    .reset                          (reset                                                           )  //i
  );
  Axi4WriteOnlyDecoder io_axi4In_0_writeOnly_decoder (
    .io_input_aw_valid              (io_axi4In_0_writeOnly_aw_valid                                   ), //i
    .io_input_aw_ready              (io_axi4In_0_writeOnly_decoder_io_input_aw_ready                  ), //o
    .io_input_aw_payload_addr       (io_axi4In_0_writeOnly_aw_payload_addr[63:0]                      ), //i
    .io_input_aw_payload_id         (io_axi4In_0_writeOnly_aw_payload_id[3:0]                         ), //i
    .io_input_aw_payload_region     (io_axi4In_0_writeOnly_aw_payload_region[3:0]                     ), //i
    .io_input_aw_payload_len        (io_axi4In_0_writeOnly_aw_payload_len[7:0]                        ), //i
    .io_input_aw_payload_size       (io_axi4In_0_writeOnly_aw_payload_size[2:0]                       ), //i
    .io_input_aw_payload_burst      (io_axi4In_0_writeOnly_aw_payload_burst[1:0]                      ), //i
    .io_input_aw_payload_lock       (io_axi4In_0_writeOnly_aw_payload_lock                            ), //i
    .io_input_aw_payload_cache      (io_axi4In_0_writeOnly_aw_payload_cache[3:0]                      ), //i
    .io_input_aw_payload_qos        (io_axi4In_0_writeOnly_aw_payload_qos[3:0]                        ), //i
    .io_input_aw_payload_prot       (io_axi4In_0_writeOnly_aw_payload_prot[2:0]                       ), //i
    .io_input_w_valid               (io_axi4In_0_writeOnly_w_valid                                    ), //i
    .io_input_w_ready               (io_axi4In_0_writeOnly_decoder_io_input_w_ready                   ), //o
    .io_input_w_payload_data        (io_axi4In_0_writeOnly_w_payload_data[511:0]                      ), //i
    .io_input_w_payload_strb        (io_axi4In_0_writeOnly_w_payload_strb[63:0]                       ), //i
    .io_input_w_payload_last        (io_axi4In_0_writeOnly_w_payload_last                             ), //i
    .io_input_b_valid               (io_axi4In_0_writeOnly_decoder_io_input_b_valid                   ), //o
    .io_input_b_ready               (io_axi4In_0_writeOnly_b_ready                                    ), //i
    .io_input_b_payload_id          (io_axi4In_0_writeOnly_decoder_io_input_b_payload_id[3:0]         ), //o
    .io_input_b_payload_resp        (io_axi4In_0_writeOnly_decoder_io_input_b_payload_resp[1:0]       ), //o
    .io_outputs_0_aw_valid          (io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_valid              ), //o
    .io_outputs_0_aw_ready          (io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_fire_1   ), //i
    .io_outputs_0_aw_payload_addr   (io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_addr[63:0] ), //o
    .io_outputs_0_aw_payload_id     (io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_id[3:0]    ), //o
    .io_outputs_0_aw_payload_region (io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_region[3:0]), //o
    .io_outputs_0_aw_payload_len    (io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_len[7:0]   ), //o
    .io_outputs_0_aw_payload_size   (io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_size[2:0]  ), //o
    .io_outputs_0_aw_payload_burst  (io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_burst[1:0] ), //o
    .io_outputs_0_aw_payload_lock   (io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_lock       ), //o
    .io_outputs_0_aw_payload_cache  (io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_cache[3:0] ), //o
    .io_outputs_0_aw_payload_qos    (io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_qos[3:0]   ), //o
    .io_outputs_0_aw_payload_prot   (io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_prot[2:0]  ), //o
    .io_outputs_0_w_valid           (io_axi4In_0_writeOnly_decoder_io_outputs_0_w_valid               ), //o
    .io_outputs_0_w_ready           (axi4WriteOnlyArbiter_2_io_inputs_0_w_ready                       ), //i
    .io_outputs_0_w_payload_data    (io_axi4In_0_writeOnly_decoder_io_outputs_0_w_payload_data[511:0] ), //o
    .io_outputs_0_w_payload_strb    (io_axi4In_0_writeOnly_decoder_io_outputs_0_w_payload_strb[63:0]  ), //o
    .io_outputs_0_w_payload_last    (io_axi4In_0_writeOnly_decoder_io_outputs_0_w_payload_last        ), //o
    .io_outputs_0_b_valid           (axi4WriteOnlyArbiter_2_io_inputs_0_b_valid                       ), //i
    .io_outputs_0_b_ready           (io_axi4In_0_writeOnly_decoder_io_outputs_0_b_ready               ), //o
    .io_outputs_0_b_payload_id      (axi4WriteOnlyArbiter_2_io_inputs_0_b_payload_id[3:0]             ), //i
    .io_outputs_0_b_payload_resp    (axi4WriteOnlyArbiter_2_io_inputs_0_b_payload_resp[1:0]           ), //i
    .io_outputs_1_aw_valid          (io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_valid              ), //o
    .io_outputs_1_aw_ready          (io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_fire_1   ), //i
    .io_outputs_1_aw_payload_addr   (io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_addr[63:0] ), //o
    .io_outputs_1_aw_payload_id     (io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_id[3:0]    ), //o
    .io_outputs_1_aw_payload_region (io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_region[3:0]), //o
    .io_outputs_1_aw_payload_len    (io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_len[7:0]   ), //o
    .io_outputs_1_aw_payload_size   (io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_size[2:0]  ), //o
    .io_outputs_1_aw_payload_burst  (io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_burst[1:0] ), //o
    .io_outputs_1_aw_payload_lock   (io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_lock       ), //o
    .io_outputs_1_aw_payload_cache  (io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_cache[3:0] ), //o
    .io_outputs_1_aw_payload_qos    (io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_qos[3:0]   ), //o
    .io_outputs_1_aw_payload_prot   (io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_prot[2:0]  ), //o
    .io_outputs_1_w_valid           (io_axi4In_0_writeOnly_decoder_io_outputs_1_w_valid               ), //o
    .io_outputs_1_w_ready           (axi4WriteOnlyArbiter_3_io_inputs_0_w_ready                       ), //i
    .io_outputs_1_w_payload_data    (io_axi4In_0_writeOnly_decoder_io_outputs_1_w_payload_data[511:0] ), //o
    .io_outputs_1_w_payload_strb    (io_axi4In_0_writeOnly_decoder_io_outputs_1_w_payload_strb[63:0]  ), //o
    .io_outputs_1_w_payload_last    (io_axi4In_0_writeOnly_decoder_io_outputs_1_w_payload_last        ), //o
    .io_outputs_1_b_valid           (axi4WriteOnlyArbiter_3_io_inputs_0_b_valid                       ), //i
    .io_outputs_1_b_ready           (io_axi4In_0_writeOnly_decoder_io_outputs_1_b_ready               ), //o
    .io_outputs_1_b_payload_id      (axi4WriteOnlyArbiter_3_io_inputs_0_b_payload_id[3:0]             ), //i
    .io_outputs_1_b_payload_resp    (axi4WriteOnlyArbiter_3_io_inputs_0_b_payload_resp[1:0]           ), //i
    .clk                            (clk                                                              ), //i
    .reset                          (reset                                                            )  //i
  );
  Axi4ReadOnlyDecoder io_axi4In_1_readOnly_decoder (
    .io_input_ar_valid              (io_axi4In_1_readOnly_ar_valid                                   ), //i
    .io_input_ar_ready              (io_axi4In_1_readOnly_decoder_io_input_ar_ready                  ), //o
    .io_input_ar_payload_addr       (io_axi4In_1_readOnly_ar_payload_addr[63:0]                      ), //i
    .io_input_ar_payload_id         (io_axi4In_1_readOnly_ar_payload_id[3:0]                         ), //i
    .io_input_ar_payload_region     (io_axi4In_1_readOnly_ar_payload_region[3:0]                     ), //i
    .io_input_ar_payload_len        (io_axi4In_1_readOnly_ar_payload_len[7:0]                        ), //i
    .io_input_ar_payload_size       (io_axi4In_1_readOnly_ar_payload_size[2:0]                       ), //i
    .io_input_ar_payload_burst      (io_axi4In_1_readOnly_ar_payload_burst[1:0]                      ), //i
    .io_input_ar_payload_lock       (io_axi4In_1_readOnly_ar_payload_lock                            ), //i
    .io_input_ar_payload_cache      (io_axi4In_1_readOnly_ar_payload_cache[3:0]                      ), //i
    .io_input_ar_payload_qos        (io_axi4In_1_readOnly_ar_payload_qos[3:0]                        ), //i
    .io_input_ar_payload_prot       (io_axi4In_1_readOnly_ar_payload_prot[2:0]                       ), //i
    .io_input_r_valid               (io_axi4In_1_readOnly_decoder_io_input_r_valid                   ), //o
    .io_input_r_ready               (io_axi4In_1_readOnly_r_ready                                    ), //i
    .io_input_r_payload_data        (io_axi4In_1_readOnly_decoder_io_input_r_payload_data[511:0]     ), //o
    .io_input_r_payload_id          (io_axi4In_1_readOnly_decoder_io_input_r_payload_id[3:0]         ), //o
    .io_input_r_payload_resp        (io_axi4In_1_readOnly_decoder_io_input_r_payload_resp[1:0]       ), //o
    .io_input_r_payload_last        (io_axi4In_1_readOnly_decoder_io_input_r_payload_last            ), //o
    .io_outputs_0_ar_valid          (io_axi4In_1_readOnly_decoder_io_outputs_0_ar_valid              ), //o
    .io_outputs_0_ar_ready          (io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_fire_1   ), //i
    .io_outputs_0_ar_payload_addr   (io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_addr[63:0] ), //o
    .io_outputs_0_ar_payload_id     (io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_id[3:0]    ), //o
    .io_outputs_0_ar_payload_region (io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_region[3:0]), //o
    .io_outputs_0_ar_payload_len    (io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_len[7:0]   ), //o
    .io_outputs_0_ar_payload_size   (io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_size[2:0]  ), //o
    .io_outputs_0_ar_payload_burst  (io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_burst[1:0] ), //o
    .io_outputs_0_ar_payload_lock   (io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_lock       ), //o
    .io_outputs_0_ar_payload_cache  (io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_cache[3:0] ), //o
    .io_outputs_0_ar_payload_qos    (io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_qos[3:0]   ), //o
    .io_outputs_0_ar_payload_prot   (io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_prot[2:0]  ), //o
    .io_outputs_0_r_valid           (axi4ReadOnlyArbiter_2_io_inputs_1_r_valid                       ), //i
    .io_outputs_0_r_ready           (io_axi4In_1_readOnly_decoder_io_outputs_0_r_ready               ), //o
    .io_outputs_0_r_payload_data    (axi4ReadOnlyArbiter_2_io_inputs_1_r_payload_data[511:0]         ), //i
    .io_outputs_0_r_payload_id      (axi4ReadOnlyArbiter_2_io_inputs_1_r_payload_id[3:0]             ), //i
    .io_outputs_0_r_payload_resp    (axi4ReadOnlyArbiter_2_io_inputs_1_r_payload_resp[1:0]           ), //i
    .io_outputs_0_r_payload_last    (axi4ReadOnlyArbiter_2_io_inputs_1_r_payload_last                ), //i
    .io_outputs_1_ar_valid          (io_axi4In_1_readOnly_decoder_io_outputs_1_ar_valid              ), //o
    .io_outputs_1_ar_ready          (io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_fire_1   ), //i
    .io_outputs_1_ar_payload_addr   (io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_addr[63:0] ), //o
    .io_outputs_1_ar_payload_id     (io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_id[3:0]    ), //o
    .io_outputs_1_ar_payload_region (io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_region[3:0]), //o
    .io_outputs_1_ar_payload_len    (io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_len[7:0]   ), //o
    .io_outputs_1_ar_payload_size   (io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_size[2:0]  ), //o
    .io_outputs_1_ar_payload_burst  (io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_burst[1:0] ), //o
    .io_outputs_1_ar_payload_lock   (io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_lock       ), //o
    .io_outputs_1_ar_payload_cache  (io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_cache[3:0] ), //o
    .io_outputs_1_ar_payload_qos    (io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_qos[3:0]   ), //o
    .io_outputs_1_ar_payload_prot   (io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_prot[2:0]  ), //o
    .io_outputs_1_r_valid           (axi4ReadOnlyArbiter_3_io_inputs_1_r_valid                       ), //i
    .io_outputs_1_r_ready           (io_axi4In_1_readOnly_decoder_io_outputs_1_r_ready               ), //o
    .io_outputs_1_r_payload_data    (axi4ReadOnlyArbiter_3_io_inputs_1_r_payload_data[511:0]         ), //i
    .io_outputs_1_r_payload_id      (axi4ReadOnlyArbiter_3_io_inputs_1_r_payload_id[3:0]             ), //i
    .io_outputs_1_r_payload_resp    (axi4ReadOnlyArbiter_3_io_inputs_1_r_payload_resp[1:0]           ), //i
    .io_outputs_1_r_payload_last    (axi4ReadOnlyArbiter_3_io_inputs_1_r_payload_last                ), //i
    .clk                            (clk                                                             ), //i
    .reset                          (reset                                                           )  //i
  );
  Axi4WriteOnlyDecoder io_axi4In_1_writeOnly_decoder (
    .io_input_aw_valid              (io_axi4In_1_writeOnly_aw_valid                                   ), //i
    .io_input_aw_ready              (io_axi4In_1_writeOnly_decoder_io_input_aw_ready                  ), //o
    .io_input_aw_payload_addr       (io_axi4In_1_writeOnly_aw_payload_addr[63:0]                      ), //i
    .io_input_aw_payload_id         (io_axi4In_1_writeOnly_aw_payload_id[3:0]                         ), //i
    .io_input_aw_payload_region     (io_axi4In_1_writeOnly_aw_payload_region[3:0]                     ), //i
    .io_input_aw_payload_len        (io_axi4In_1_writeOnly_aw_payload_len[7:0]                        ), //i
    .io_input_aw_payload_size       (io_axi4In_1_writeOnly_aw_payload_size[2:0]                       ), //i
    .io_input_aw_payload_burst      (io_axi4In_1_writeOnly_aw_payload_burst[1:0]                      ), //i
    .io_input_aw_payload_lock       (io_axi4In_1_writeOnly_aw_payload_lock                            ), //i
    .io_input_aw_payload_cache      (io_axi4In_1_writeOnly_aw_payload_cache[3:0]                      ), //i
    .io_input_aw_payload_qos        (io_axi4In_1_writeOnly_aw_payload_qos[3:0]                        ), //i
    .io_input_aw_payload_prot       (io_axi4In_1_writeOnly_aw_payload_prot[2:0]                       ), //i
    .io_input_w_valid               (io_axi4In_1_writeOnly_w_valid                                    ), //i
    .io_input_w_ready               (io_axi4In_1_writeOnly_decoder_io_input_w_ready                   ), //o
    .io_input_w_payload_data        (io_axi4In_1_writeOnly_w_payload_data[511:0]                      ), //i
    .io_input_w_payload_strb        (io_axi4In_1_writeOnly_w_payload_strb[63:0]                       ), //i
    .io_input_w_payload_last        (io_axi4In_1_writeOnly_w_payload_last                             ), //i
    .io_input_b_valid               (io_axi4In_1_writeOnly_decoder_io_input_b_valid                   ), //o
    .io_input_b_ready               (io_axi4In_1_writeOnly_b_ready                                    ), //i
    .io_input_b_payload_id          (io_axi4In_1_writeOnly_decoder_io_input_b_payload_id[3:0]         ), //o
    .io_input_b_payload_resp        (io_axi4In_1_writeOnly_decoder_io_input_b_payload_resp[1:0]       ), //o
    .io_outputs_0_aw_valid          (io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_valid              ), //o
    .io_outputs_0_aw_ready          (io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_fire_1   ), //i
    .io_outputs_0_aw_payload_addr   (io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_addr[63:0] ), //o
    .io_outputs_0_aw_payload_id     (io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_id[3:0]    ), //o
    .io_outputs_0_aw_payload_region (io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_region[3:0]), //o
    .io_outputs_0_aw_payload_len    (io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_len[7:0]   ), //o
    .io_outputs_0_aw_payload_size   (io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_size[2:0]  ), //o
    .io_outputs_0_aw_payload_burst  (io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_burst[1:0] ), //o
    .io_outputs_0_aw_payload_lock   (io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_lock       ), //o
    .io_outputs_0_aw_payload_cache  (io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_cache[3:0] ), //o
    .io_outputs_0_aw_payload_qos    (io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_qos[3:0]   ), //o
    .io_outputs_0_aw_payload_prot   (io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_prot[2:0]  ), //o
    .io_outputs_0_w_valid           (io_axi4In_1_writeOnly_decoder_io_outputs_0_w_valid               ), //o
    .io_outputs_0_w_ready           (axi4WriteOnlyArbiter_2_io_inputs_1_w_ready                       ), //i
    .io_outputs_0_w_payload_data    (io_axi4In_1_writeOnly_decoder_io_outputs_0_w_payload_data[511:0] ), //o
    .io_outputs_0_w_payload_strb    (io_axi4In_1_writeOnly_decoder_io_outputs_0_w_payload_strb[63:0]  ), //o
    .io_outputs_0_w_payload_last    (io_axi4In_1_writeOnly_decoder_io_outputs_0_w_payload_last        ), //o
    .io_outputs_0_b_valid           (axi4WriteOnlyArbiter_2_io_inputs_1_b_valid                       ), //i
    .io_outputs_0_b_ready           (io_axi4In_1_writeOnly_decoder_io_outputs_0_b_ready               ), //o
    .io_outputs_0_b_payload_id      (axi4WriteOnlyArbiter_2_io_inputs_1_b_payload_id[3:0]             ), //i
    .io_outputs_0_b_payload_resp    (axi4WriteOnlyArbiter_2_io_inputs_1_b_payload_resp[1:0]           ), //i
    .io_outputs_1_aw_valid          (io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_valid              ), //o
    .io_outputs_1_aw_ready          (io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_fire_1   ), //i
    .io_outputs_1_aw_payload_addr   (io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_addr[63:0] ), //o
    .io_outputs_1_aw_payload_id     (io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_id[3:0]    ), //o
    .io_outputs_1_aw_payload_region (io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_region[3:0]), //o
    .io_outputs_1_aw_payload_len    (io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_len[7:0]   ), //o
    .io_outputs_1_aw_payload_size   (io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_size[2:0]  ), //o
    .io_outputs_1_aw_payload_burst  (io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_burst[1:0] ), //o
    .io_outputs_1_aw_payload_lock   (io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_lock       ), //o
    .io_outputs_1_aw_payload_cache  (io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_cache[3:0] ), //o
    .io_outputs_1_aw_payload_qos    (io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_qos[3:0]   ), //o
    .io_outputs_1_aw_payload_prot   (io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_prot[2:0]  ), //o
    .io_outputs_1_w_valid           (io_axi4In_1_writeOnly_decoder_io_outputs_1_w_valid               ), //o
    .io_outputs_1_w_ready           (axi4WriteOnlyArbiter_3_io_inputs_1_w_ready                       ), //i
    .io_outputs_1_w_payload_data    (io_axi4In_1_writeOnly_decoder_io_outputs_1_w_payload_data[511:0] ), //o
    .io_outputs_1_w_payload_strb    (io_axi4In_1_writeOnly_decoder_io_outputs_1_w_payload_strb[63:0]  ), //o
    .io_outputs_1_w_payload_last    (io_axi4In_1_writeOnly_decoder_io_outputs_1_w_payload_last        ), //o
    .io_outputs_1_b_valid           (axi4WriteOnlyArbiter_3_io_inputs_1_b_valid                       ), //i
    .io_outputs_1_b_ready           (io_axi4In_1_writeOnly_decoder_io_outputs_1_b_ready               ), //o
    .io_outputs_1_b_payload_id      (axi4WriteOnlyArbiter_3_io_inputs_1_b_payload_id[3:0]             ), //i
    .io_outputs_1_b_payload_resp    (axi4WriteOnlyArbiter_3_io_inputs_1_b_payload_resp[1:0]           ), //i
    .clk                            (clk                                                              ), //i
    .reset                          (reset                                                            )  //i
  );
  Axi4ReadOnlyArbiter axi4ReadOnlyArbiter_2 (
    .io_inputs_0_ar_valid          (io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_valid              ), //i
    .io_inputs_0_ar_ready          (axi4ReadOnlyArbiter_2_io_inputs_0_ar_ready                                ), //o
    .io_inputs_0_ar_payload_addr   (io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_addr[63:0] ), //i
    .io_inputs_0_ar_payload_id     (io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_id[3:0]    ), //i
    .io_inputs_0_ar_payload_region (io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_region[3:0]), //i
    .io_inputs_0_ar_payload_len    (io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_len[7:0]   ), //i
    .io_inputs_0_ar_payload_size   (io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_size[2:0]  ), //i
    .io_inputs_0_ar_payload_burst  (io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_burst[1:0] ), //i
    .io_inputs_0_ar_payload_lock   (io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_lock       ), //i
    .io_inputs_0_ar_payload_cache  (io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_cache[3:0] ), //i
    .io_inputs_0_ar_payload_qos    (io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_qos[3:0]   ), //i
    .io_inputs_0_ar_payload_prot   (io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_prot[2:0]  ), //i
    .io_inputs_0_r_valid           (axi4ReadOnlyArbiter_2_io_inputs_0_r_valid                                 ), //o
    .io_inputs_0_r_ready           (io_axi4In_0_readOnly_decoder_io_outputs_0_r_ready                         ), //i
    .io_inputs_0_r_payload_data    (axi4ReadOnlyArbiter_2_io_inputs_0_r_payload_data[511:0]                   ), //o
    .io_inputs_0_r_payload_id      (axi4ReadOnlyArbiter_2_io_inputs_0_r_payload_id[3:0]                       ), //o
    .io_inputs_0_r_payload_resp    (axi4ReadOnlyArbiter_2_io_inputs_0_r_payload_resp[1:0]                     ), //o
    .io_inputs_0_r_payload_last    (axi4ReadOnlyArbiter_2_io_inputs_0_r_payload_last                          ), //o
    .io_inputs_1_ar_valid          (io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_valid              ), //i
    .io_inputs_1_ar_ready          (axi4ReadOnlyArbiter_2_io_inputs_1_ar_ready                                ), //o
    .io_inputs_1_ar_payload_addr   (io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_addr[63:0] ), //i
    .io_inputs_1_ar_payload_id     (io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_id[3:0]    ), //i
    .io_inputs_1_ar_payload_region (io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_region[3:0]), //i
    .io_inputs_1_ar_payload_len    (io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_len[7:0]   ), //i
    .io_inputs_1_ar_payload_size   (io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_size[2:0]  ), //i
    .io_inputs_1_ar_payload_burst  (io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_burst[1:0] ), //i
    .io_inputs_1_ar_payload_lock   (io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_lock       ), //i
    .io_inputs_1_ar_payload_cache  (io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_cache[3:0] ), //i
    .io_inputs_1_ar_payload_qos    (io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_qos[3:0]   ), //i
    .io_inputs_1_ar_payload_prot   (io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_prot[2:0]  ), //i
    .io_inputs_1_r_valid           (axi4ReadOnlyArbiter_2_io_inputs_1_r_valid                                 ), //o
    .io_inputs_1_r_ready           (io_axi4In_1_readOnly_decoder_io_outputs_0_r_ready                         ), //i
    .io_inputs_1_r_payload_data    (axi4ReadOnlyArbiter_2_io_inputs_1_r_payload_data[511:0]                   ), //o
    .io_inputs_1_r_payload_id      (axi4ReadOnlyArbiter_2_io_inputs_1_r_payload_id[3:0]                       ), //o
    .io_inputs_1_r_payload_resp    (axi4ReadOnlyArbiter_2_io_inputs_1_r_payload_resp[1:0]                     ), //o
    .io_inputs_1_r_payload_last    (axi4ReadOnlyArbiter_2_io_inputs_1_r_payload_last                          ), //o
    .io_output_ar_valid            (axi4ReadOnlyArbiter_2_io_output_ar_valid                                  ), //o
    .io_output_ar_ready            (axi4ReadOnlyArbiter_2_io_output_ar_ready                                  ), //i
    .io_output_ar_payload_addr     (axi4ReadOnlyArbiter_2_io_output_ar_payload_addr[63:0]                     ), //o
    .io_output_ar_payload_id       (axi4ReadOnlyArbiter_2_io_output_ar_payload_id[4:0]                        ), //o
    .io_output_ar_payload_region   (axi4ReadOnlyArbiter_2_io_output_ar_payload_region[3:0]                    ), //o
    .io_output_ar_payload_len      (axi4ReadOnlyArbiter_2_io_output_ar_payload_len[7:0]                       ), //o
    .io_output_ar_payload_size     (axi4ReadOnlyArbiter_2_io_output_ar_payload_size[2:0]                      ), //o
    .io_output_ar_payload_burst    (axi4ReadOnlyArbiter_2_io_output_ar_payload_burst[1:0]                     ), //o
    .io_output_ar_payload_lock     (axi4ReadOnlyArbiter_2_io_output_ar_payload_lock                           ), //o
    .io_output_ar_payload_cache    (axi4ReadOnlyArbiter_2_io_output_ar_payload_cache[3:0]                     ), //o
    .io_output_ar_payload_qos      (axi4ReadOnlyArbiter_2_io_output_ar_payload_qos[3:0]                       ), //o
    .io_output_ar_payload_prot     (axi4ReadOnlyArbiter_2_io_output_ar_payload_prot[2:0]                      ), //o
    .io_output_r_valid             (_zz_when_Stream_l368                                                      ), //i
    .io_output_r_ready             (axi4ReadOnlyArbiter_2_io_output_r_ready                                   ), //o
    .io_output_r_payload_data      (_zz_io_output_r_payload_data[511:0]                                       ), //i
    .io_output_r_payload_id        (_zz_io_output_r_payload_id[4:0]                                           ), //i
    .io_output_r_payload_resp      (_zz_io_output_r_payload_resp[1:0]                                         ), //i
    .io_output_r_payload_last      (_zz_io_output_r_payload_last                                              ), //i
    .clk                           (clk                                                                       ), //i
    .reset                         (reset                                                                     )  //i
  );
  Axi4WriteOnlyArbiter axi4WriteOnlyArbiter_2 (
    .io_inputs_0_aw_valid          (io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_valid              ), //i
    .io_inputs_0_aw_ready          (axi4WriteOnlyArbiter_2_io_inputs_0_aw_ready                                ), //o
    .io_inputs_0_aw_payload_addr   (io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_addr[63:0] ), //i
    .io_inputs_0_aw_payload_id     (io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_id[3:0]    ), //i
    .io_inputs_0_aw_payload_region (io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_region[3:0]), //i
    .io_inputs_0_aw_payload_len    (io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_len[7:0]   ), //i
    .io_inputs_0_aw_payload_size   (io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_size[2:0]  ), //i
    .io_inputs_0_aw_payload_burst  (io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_burst[1:0] ), //i
    .io_inputs_0_aw_payload_lock   (io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_lock       ), //i
    .io_inputs_0_aw_payload_cache  (io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_cache[3:0] ), //i
    .io_inputs_0_aw_payload_qos    (io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_qos[3:0]   ), //i
    .io_inputs_0_aw_payload_prot   (io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_prot[2:0]  ), //i
    .io_inputs_0_w_valid           (io_axi4In_0_writeOnly_decoder_io_outputs_0_w_valid                         ), //i
    .io_inputs_0_w_ready           (axi4WriteOnlyArbiter_2_io_inputs_0_w_ready                                 ), //o
    .io_inputs_0_w_payload_data    (io_axi4In_0_writeOnly_decoder_io_outputs_0_w_payload_data[511:0]           ), //i
    .io_inputs_0_w_payload_strb    (io_axi4In_0_writeOnly_decoder_io_outputs_0_w_payload_strb[63:0]            ), //i
    .io_inputs_0_w_payload_last    (io_axi4In_0_writeOnly_decoder_io_outputs_0_w_payload_last                  ), //i
    .io_inputs_0_b_valid           (axi4WriteOnlyArbiter_2_io_inputs_0_b_valid                                 ), //o
    .io_inputs_0_b_ready           (io_axi4In_0_writeOnly_decoder_io_outputs_0_b_ready                         ), //i
    .io_inputs_0_b_payload_id      (axi4WriteOnlyArbiter_2_io_inputs_0_b_payload_id[3:0]                       ), //o
    .io_inputs_0_b_payload_resp    (axi4WriteOnlyArbiter_2_io_inputs_0_b_payload_resp[1:0]                     ), //o
    .io_inputs_1_aw_valid          (io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_valid              ), //i
    .io_inputs_1_aw_ready          (axi4WriteOnlyArbiter_2_io_inputs_1_aw_ready                                ), //o
    .io_inputs_1_aw_payload_addr   (io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_addr[63:0] ), //i
    .io_inputs_1_aw_payload_id     (io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_id[3:0]    ), //i
    .io_inputs_1_aw_payload_region (io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_region[3:0]), //i
    .io_inputs_1_aw_payload_len    (io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_len[7:0]   ), //i
    .io_inputs_1_aw_payload_size   (io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_size[2:0]  ), //i
    .io_inputs_1_aw_payload_burst  (io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_burst[1:0] ), //i
    .io_inputs_1_aw_payload_lock   (io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_lock       ), //i
    .io_inputs_1_aw_payload_cache  (io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_cache[3:0] ), //i
    .io_inputs_1_aw_payload_qos    (io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_qos[3:0]   ), //i
    .io_inputs_1_aw_payload_prot   (io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_prot[2:0]  ), //i
    .io_inputs_1_w_valid           (io_axi4In_1_writeOnly_decoder_io_outputs_0_w_valid                         ), //i
    .io_inputs_1_w_ready           (axi4WriteOnlyArbiter_2_io_inputs_1_w_ready                                 ), //o
    .io_inputs_1_w_payload_data    (io_axi4In_1_writeOnly_decoder_io_outputs_0_w_payload_data[511:0]           ), //i
    .io_inputs_1_w_payload_strb    (io_axi4In_1_writeOnly_decoder_io_outputs_0_w_payload_strb[63:0]            ), //i
    .io_inputs_1_w_payload_last    (io_axi4In_1_writeOnly_decoder_io_outputs_0_w_payload_last                  ), //i
    .io_inputs_1_b_valid           (axi4WriteOnlyArbiter_2_io_inputs_1_b_valid                                 ), //o
    .io_inputs_1_b_ready           (io_axi4In_1_writeOnly_decoder_io_outputs_0_b_ready                         ), //i
    .io_inputs_1_b_payload_id      (axi4WriteOnlyArbiter_2_io_inputs_1_b_payload_id[3:0]                       ), //o
    .io_inputs_1_b_payload_resp    (axi4WriteOnlyArbiter_2_io_inputs_1_b_payload_resp[1:0]                     ), //o
    .io_output_aw_valid            (axi4WriteOnlyArbiter_2_io_output_aw_valid                                  ), //o
    .io_output_aw_ready            (axi4WriteOnlyArbiter_2_io_output_aw_ready                                  ), //i
    .io_output_aw_payload_addr     (axi4WriteOnlyArbiter_2_io_output_aw_payload_addr[63:0]                     ), //o
    .io_output_aw_payload_id       (axi4WriteOnlyArbiter_2_io_output_aw_payload_id[4:0]                        ), //o
    .io_output_aw_payload_region   (axi4WriteOnlyArbiter_2_io_output_aw_payload_region[3:0]                    ), //o
    .io_output_aw_payload_len      (axi4WriteOnlyArbiter_2_io_output_aw_payload_len[7:0]                       ), //o
    .io_output_aw_payload_size     (axi4WriteOnlyArbiter_2_io_output_aw_payload_size[2:0]                      ), //o
    .io_output_aw_payload_burst    (axi4WriteOnlyArbiter_2_io_output_aw_payload_burst[1:0]                     ), //o
    .io_output_aw_payload_lock     (axi4WriteOnlyArbiter_2_io_output_aw_payload_lock                           ), //o
    .io_output_aw_payload_cache    (axi4WriteOnlyArbiter_2_io_output_aw_payload_cache[3:0]                     ), //o
    .io_output_aw_payload_qos      (axi4WriteOnlyArbiter_2_io_output_aw_payload_qos[3:0]                       ), //o
    .io_output_aw_payload_prot     (axi4WriteOnlyArbiter_2_io_output_aw_payload_prot[2:0]                      ), //o
    .io_output_w_valid             (axi4WriteOnlyArbiter_2_io_output_w_valid                                   ), //o
    .io_output_w_ready             (axi4WriteOnlyArbiter_2_io_output_w_ready                                   ), //i
    .io_output_w_payload_data      (axi4WriteOnlyArbiter_2_io_output_w_payload_data[511:0]                     ), //o
    .io_output_w_payload_strb      (axi4WriteOnlyArbiter_2_io_output_w_payload_strb[63:0]                      ), //o
    .io_output_w_payload_last      (axi4WriteOnlyArbiter_2_io_output_w_payload_last                            ), //o
    .io_output_b_valid             (_zz_when_Stream_l368_2                                                     ), //i
    .io_output_b_ready             (axi4WriteOnlyArbiter_2_io_output_b_ready                                   ), //o
    .io_output_b_payload_id        (_zz_io_output_b_payload_id[4:0]                                            ), //i
    .io_output_b_payload_resp      (_zz_io_output_b_payload_resp[1:0]                                          ), //i
    .clk                           (clk                                                                        ), //i
    .reset                         (reset                                                                      )  //i
  );
  Axi4ReadOnlyArbiter axi4ReadOnlyArbiter_3 (
    .io_inputs_0_ar_valid          (io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_valid              ), //i
    .io_inputs_0_ar_ready          (axi4ReadOnlyArbiter_3_io_inputs_0_ar_ready                                ), //o
    .io_inputs_0_ar_payload_addr   (io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_addr[63:0] ), //i
    .io_inputs_0_ar_payload_id     (io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_id[3:0]    ), //i
    .io_inputs_0_ar_payload_region (io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_region[3:0]), //i
    .io_inputs_0_ar_payload_len    (io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_len[7:0]   ), //i
    .io_inputs_0_ar_payload_size   (io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_size[2:0]  ), //i
    .io_inputs_0_ar_payload_burst  (io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_burst[1:0] ), //i
    .io_inputs_0_ar_payload_lock   (io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_lock       ), //i
    .io_inputs_0_ar_payload_cache  (io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_cache[3:0] ), //i
    .io_inputs_0_ar_payload_qos    (io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_qos[3:0]   ), //i
    .io_inputs_0_ar_payload_prot   (io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_prot[2:0]  ), //i
    .io_inputs_0_r_valid           (axi4ReadOnlyArbiter_3_io_inputs_0_r_valid                                 ), //o
    .io_inputs_0_r_ready           (io_axi4In_0_readOnly_decoder_io_outputs_1_r_ready                         ), //i
    .io_inputs_0_r_payload_data    (axi4ReadOnlyArbiter_3_io_inputs_0_r_payload_data[511:0]                   ), //o
    .io_inputs_0_r_payload_id      (axi4ReadOnlyArbiter_3_io_inputs_0_r_payload_id[3:0]                       ), //o
    .io_inputs_0_r_payload_resp    (axi4ReadOnlyArbiter_3_io_inputs_0_r_payload_resp[1:0]                     ), //o
    .io_inputs_0_r_payload_last    (axi4ReadOnlyArbiter_3_io_inputs_0_r_payload_last                          ), //o
    .io_inputs_1_ar_valid          (io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_valid              ), //i
    .io_inputs_1_ar_ready          (axi4ReadOnlyArbiter_3_io_inputs_1_ar_ready                                ), //o
    .io_inputs_1_ar_payload_addr   (io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_addr[63:0] ), //i
    .io_inputs_1_ar_payload_id     (io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_id[3:0]    ), //i
    .io_inputs_1_ar_payload_region (io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_region[3:0]), //i
    .io_inputs_1_ar_payload_len    (io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_len[7:0]   ), //i
    .io_inputs_1_ar_payload_size   (io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_size[2:0]  ), //i
    .io_inputs_1_ar_payload_burst  (io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_burst[1:0] ), //i
    .io_inputs_1_ar_payload_lock   (io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_lock       ), //i
    .io_inputs_1_ar_payload_cache  (io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_cache[3:0] ), //i
    .io_inputs_1_ar_payload_qos    (io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_qos[3:0]   ), //i
    .io_inputs_1_ar_payload_prot   (io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_prot[2:0]  ), //i
    .io_inputs_1_r_valid           (axi4ReadOnlyArbiter_3_io_inputs_1_r_valid                                 ), //o
    .io_inputs_1_r_ready           (io_axi4In_1_readOnly_decoder_io_outputs_1_r_ready                         ), //i
    .io_inputs_1_r_payload_data    (axi4ReadOnlyArbiter_3_io_inputs_1_r_payload_data[511:0]                   ), //o
    .io_inputs_1_r_payload_id      (axi4ReadOnlyArbiter_3_io_inputs_1_r_payload_id[3:0]                       ), //o
    .io_inputs_1_r_payload_resp    (axi4ReadOnlyArbiter_3_io_inputs_1_r_payload_resp[1:0]                     ), //o
    .io_inputs_1_r_payload_last    (axi4ReadOnlyArbiter_3_io_inputs_1_r_payload_last                          ), //o
    .io_output_ar_valid            (axi4ReadOnlyArbiter_3_io_output_ar_valid                                  ), //o
    .io_output_ar_ready            (axi4ReadOnlyArbiter_3_io_output_ar_ready                                  ), //i
    .io_output_ar_payload_addr     (axi4ReadOnlyArbiter_3_io_output_ar_payload_addr[63:0]                     ), //o
    .io_output_ar_payload_id       (axi4ReadOnlyArbiter_3_io_output_ar_payload_id[4:0]                        ), //o
    .io_output_ar_payload_region   (axi4ReadOnlyArbiter_3_io_output_ar_payload_region[3:0]                    ), //o
    .io_output_ar_payload_len      (axi4ReadOnlyArbiter_3_io_output_ar_payload_len[7:0]                       ), //o
    .io_output_ar_payload_size     (axi4ReadOnlyArbiter_3_io_output_ar_payload_size[2:0]                      ), //o
    .io_output_ar_payload_burst    (axi4ReadOnlyArbiter_3_io_output_ar_payload_burst[1:0]                     ), //o
    .io_output_ar_payload_lock     (axi4ReadOnlyArbiter_3_io_output_ar_payload_lock                           ), //o
    .io_output_ar_payload_cache    (axi4ReadOnlyArbiter_3_io_output_ar_payload_cache[3:0]                     ), //o
    .io_output_ar_payload_qos      (axi4ReadOnlyArbiter_3_io_output_ar_payload_qos[3:0]                       ), //o
    .io_output_ar_payload_prot     (axi4ReadOnlyArbiter_3_io_output_ar_payload_prot[2:0]                      ), //o
    .io_output_r_valid             (_zz_when_Stream_l368_4                                                    ), //i
    .io_output_r_ready             (axi4ReadOnlyArbiter_3_io_output_r_ready                                   ), //o
    .io_output_r_payload_data      (_zz_io_output_r_payload_data_1[511:0]                                     ), //i
    .io_output_r_payload_id        (_zz_io_output_r_payload_id_1[4:0]                                         ), //i
    .io_output_r_payload_resp      (_zz_io_output_r_payload_resp_1[1:0]                                       ), //i
    .io_output_r_payload_last      (_zz_io_output_r_payload_last_1                                            ), //i
    .clk                           (clk                                                                       ), //i
    .reset                         (reset                                                                     )  //i
  );
  Axi4WriteOnlyArbiter axi4WriteOnlyArbiter_3 (
    .io_inputs_0_aw_valid          (io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_valid              ), //i
    .io_inputs_0_aw_ready          (axi4WriteOnlyArbiter_3_io_inputs_0_aw_ready                                ), //o
    .io_inputs_0_aw_payload_addr   (io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_addr[63:0] ), //i
    .io_inputs_0_aw_payload_id     (io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_id[3:0]    ), //i
    .io_inputs_0_aw_payload_region (io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_region[3:0]), //i
    .io_inputs_0_aw_payload_len    (io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_len[7:0]   ), //i
    .io_inputs_0_aw_payload_size   (io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_size[2:0]  ), //i
    .io_inputs_0_aw_payload_burst  (io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_burst[1:0] ), //i
    .io_inputs_0_aw_payload_lock   (io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_lock       ), //i
    .io_inputs_0_aw_payload_cache  (io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_cache[3:0] ), //i
    .io_inputs_0_aw_payload_qos    (io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_qos[3:0]   ), //i
    .io_inputs_0_aw_payload_prot   (io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_prot[2:0]  ), //i
    .io_inputs_0_w_valid           (io_axi4In_0_writeOnly_decoder_io_outputs_1_w_valid                         ), //i
    .io_inputs_0_w_ready           (axi4WriteOnlyArbiter_3_io_inputs_0_w_ready                                 ), //o
    .io_inputs_0_w_payload_data    (io_axi4In_0_writeOnly_decoder_io_outputs_1_w_payload_data[511:0]           ), //i
    .io_inputs_0_w_payload_strb    (io_axi4In_0_writeOnly_decoder_io_outputs_1_w_payload_strb[63:0]            ), //i
    .io_inputs_0_w_payload_last    (io_axi4In_0_writeOnly_decoder_io_outputs_1_w_payload_last                  ), //i
    .io_inputs_0_b_valid           (axi4WriteOnlyArbiter_3_io_inputs_0_b_valid                                 ), //o
    .io_inputs_0_b_ready           (io_axi4In_0_writeOnly_decoder_io_outputs_1_b_ready                         ), //i
    .io_inputs_0_b_payload_id      (axi4WriteOnlyArbiter_3_io_inputs_0_b_payload_id[3:0]                       ), //o
    .io_inputs_0_b_payload_resp    (axi4WriteOnlyArbiter_3_io_inputs_0_b_payload_resp[1:0]                     ), //o
    .io_inputs_1_aw_valid          (io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_valid              ), //i
    .io_inputs_1_aw_ready          (axi4WriteOnlyArbiter_3_io_inputs_1_aw_ready                                ), //o
    .io_inputs_1_aw_payload_addr   (io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_addr[63:0] ), //i
    .io_inputs_1_aw_payload_id     (io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_id[3:0]    ), //i
    .io_inputs_1_aw_payload_region (io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_region[3:0]), //i
    .io_inputs_1_aw_payload_len    (io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_len[7:0]   ), //i
    .io_inputs_1_aw_payload_size   (io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_size[2:0]  ), //i
    .io_inputs_1_aw_payload_burst  (io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_burst[1:0] ), //i
    .io_inputs_1_aw_payload_lock   (io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_lock       ), //i
    .io_inputs_1_aw_payload_cache  (io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_cache[3:0] ), //i
    .io_inputs_1_aw_payload_qos    (io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_qos[3:0]   ), //i
    .io_inputs_1_aw_payload_prot   (io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_prot[2:0]  ), //i
    .io_inputs_1_w_valid           (io_axi4In_1_writeOnly_decoder_io_outputs_1_w_valid                         ), //i
    .io_inputs_1_w_ready           (axi4WriteOnlyArbiter_3_io_inputs_1_w_ready                                 ), //o
    .io_inputs_1_w_payload_data    (io_axi4In_1_writeOnly_decoder_io_outputs_1_w_payload_data[511:0]           ), //i
    .io_inputs_1_w_payload_strb    (io_axi4In_1_writeOnly_decoder_io_outputs_1_w_payload_strb[63:0]            ), //i
    .io_inputs_1_w_payload_last    (io_axi4In_1_writeOnly_decoder_io_outputs_1_w_payload_last                  ), //i
    .io_inputs_1_b_valid           (axi4WriteOnlyArbiter_3_io_inputs_1_b_valid                                 ), //o
    .io_inputs_1_b_ready           (io_axi4In_1_writeOnly_decoder_io_outputs_1_b_ready                         ), //i
    .io_inputs_1_b_payload_id      (axi4WriteOnlyArbiter_3_io_inputs_1_b_payload_id[3:0]                       ), //o
    .io_inputs_1_b_payload_resp    (axi4WriteOnlyArbiter_3_io_inputs_1_b_payload_resp[1:0]                     ), //o
    .io_output_aw_valid            (axi4WriteOnlyArbiter_3_io_output_aw_valid                                  ), //o
    .io_output_aw_ready            (axi4WriteOnlyArbiter_3_io_output_aw_ready                                  ), //i
    .io_output_aw_payload_addr     (axi4WriteOnlyArbiter_3_io_output_aw_payload_addr[63:0]                     ), //o
    .io_output_aw_payload_id       (axi4WriteOnlyArbiter_3_io_output_aw_payload_id[4:0]                        ), //o
    .io_output_aw_payload_region   (axi4WriteOnlyArbiter_3_io_output_aw_payload_region[3:0]                    ), //o
    .io_output_aw_payload_len      (axi4WriteOnlyArbiter_3_io_output_aw_payload_len[7:0]                       ), //o
    .io_output_aw_payload_size     (axi4WriteOnlyArbiter_3_io_output_aw_payload_size[2:0]                      ), //o
    .io_output_aw_payload_burst    (axi4WriteOnlyArbiter_3_io_output_aw_payload_burst[1:0]                     ), //o
    .io_output_aw_payload_lock     (axi4WriteOnlyArbiter_3_io_output_aw_payload_lock                           ), //o
    .io_output_aw_payload_cache    (axi4WriteOnlyArbiter_3_io_output_aw_payload_cache[3:0]                     ), //o
    .io_output_aw_payload_qos      (axi4WriteOnlyArbiter_3_io_output_aw_payload_qos[3:0]                       ), //o
    .io_output_aw_payload_prot     (axi4WriteOnlyArbiter_3_io_output_aw_payload_prot[2:0]                      ), //o
    .io_output_w_valid             (axi4WriteOnlyArbiter_3_io_output_w_valid                                   ), //o
    .io_output_w_ready             (axi4WriteOnlyArbiter_3_io_output_w_ready                                   ), //i
    .io_output_w_payload_data      (axi4WriteOnlyArbiter_3_io_output_w_payload_data[511:0]                     ), //o
    .io_output_w_payload_strb      (axi4WriteOnlyArbiter_3_io_output_w_payload_strb[63:0]                      ), //o
    .io_output_w_payload_last      (axi4WriteOnlyArbiter_3_io_output_w_payload_last                            ), //o
    .io_output_b_valid             (_zz_when_Stream_l368_6                                                     ), //i
    .io_output_b_ready             (axi4WriteOnlyArbiter_3_io_output_b_ready                                   ), //o
    .io_output_b_payload_id        (_zz_io_output_b_payload_id_1[4:0]                                          ), //i
    .io_output_b_payload_resp      (_zz_io_output_b_payload_resp_1[1:0]                                        ), //i
    .clk                           (clk                                                                        ), //i
    .reset                         (reset                                                                      )  //i
  );
  assign axi40ut_0_arvalid = axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_valid;
  assign axi40ut_0_araddr = axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_addr;
  assign axi40ut_0_arid = axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_id;
  assign axi40ut_0_arregion = axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_region;
  assign axi40ut_0_arlen = axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_len;
  assign axi40ut_0_arsize = axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_size;
  assign axi40ut_0_arburst = axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_burst;
  assign axi40ut_0_arlock = axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_lock;
  assign axi40ut_0_arcache = axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_cache;
  assign axi40ut_0_arqos = axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_qos;
  assign axi40ut_0_arprot = axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_prot;
  assign axi40ut_0_rready = _zz_axi40ut_0_rready;
  assign axi40ut_0_awvalid = axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_valid;
  assign axi40ut_0_awaddr = axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_addr;
  assign axi40ut_0_awid = axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_id;
  assign axi40ut_0_awregion = axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_region;
  assign axi40ut_0_awlen = axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_len;
  assign axi40ut_0_awsize = axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_size;
  assign axi40ut_0_awburst = axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_burst;
  assign axi40ut_0_awlock = axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_lock;
  assign axi40ut_0_awcache = axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_cache;
  assign axi40ut_0_awqos = axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_qos;
  assign axi40ut_0_awprot = axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_prot;
  assign axi40ut_0_wvalid = axi4WriteOnlyArbiter_2_io_output_w_m2sPipe_valid;
  assign axi40ut_0_wdata = axi4WriteOnlyArbiter_2_io_output_w_m2sPipe_payload_data;
  assign axi40ut_0_wstrb = axi4WriteOnlyArbiter_2_io_output_w_m2sPipe_payload_strb;
  assign axi40ut_0_wlast = axi4WriteOnlyArbiter_2_io_output_w_m2sPipe_payload_last;
  assign axi40ut_0_bready = _zz_axi40ut_0_bready;
  assign axi40ut_1_arvalid = axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_valid;
  assign axi40ut_1_araddr = axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_addr;
  assign axi40ut_1_arid = axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_id;
  assign axi40ut_1_arregion = axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_region;
  assign axi40ut_1_arlen = axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_len;
  assign axi40ut_1_arsize = axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_size;
  assign axi40ut_1_arburst = axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_burst;
  assign axi40ut_1_arlock = axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_lock;
  assign axi40ut_1_arcache = axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_cache;
  assign axi40ut_1_arqos = axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_qos;
  assign axi40ut_1_arprot = axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_prot;
  assign axi40ut_1_rready = _zz_axi40ut_1_rready;
  assign axi40ut_1_awvalid = axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_valid;
  assign axi40ut_1_awaddr = axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_addr;
  assign axi40ut_1_awid = axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_id;
  assign axi40ut_1_awregion = axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_region;
  assign axi40ut_1_awlen = axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_len;
  assign axi40ut_1_awsize = axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_size;
  assign axi40ut_1_awburst = axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_burst;
  assign axi40ut_1_awlock = axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_lock;
  assign axi40ut_1_awcache = axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_cache;
  assign axi40ut_1_awqos = axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_qos;
  assign axi40ut_1_awprot = axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_prot;
  assign axi40ut_1_wvalid = axi4WriteOnlyArbiter_3_io_output_w_m2sPipe_valid;
  assign axi40ut_1_wdata = axi4WriteOnlyArbiter_3_io_output_w_m2sPipe_payload_data;
  assign axi40ut_1_wstrb = axi4WriteOnlyArbiter_3_io_output_w_m2sPipe_payload_strb;
  assign axi40ut_1_wlast = axi4WriteOnlyArbiter_3_io_output_w_m2sPipe_payload_last;
  assign axi40ut_1_bready = _zz_axi40ut_1_bready;
  assign io_axi4In_0_readOnly_ar_valid = axi4In_0_arvalid;
  assign axi4In_0_arready = io_axi4In_0_readOnly_ar_ready;
  assign io_axi4In_0_readOnly_ar_payload_addr = axi4In_0_araddr;
  assign io_axi4In_0_readOnly_ar_payload_id = axi4In_0_arid;
  assign io_axi4In_0_readOnly_ar_payload_region = axi4In_0_arregion;
  assign io_axi4In_0_readOnly_ar_payload_len = axi4In_0_arlen;
  assign io_axi4In_0_readOnly_ar_payload_size = axi4In_0_arsize;
  assign io_axi4In_0_readOnly_ar_payload_burst = axi4In_0_arburst;
  assign io_axi4In_0_readOnly_ar_payload_lock = axi4In_0_arlock;
  assign io_axi4In_0_readOnly_ar_payload_cache = axi4In_0_arcache;
  assign io_axi4In_0_readOnly_ar_payload_qos = axi4In_0_arqos;
  assign io_axi4In_0_readOnly_ar_payload_prot = axi4In_0_arprot;
  assign axi4In_0_rvalid = io_axi4In_0_readOnly_r_valid;
  assign io_axi4In_0_readOnly_r_ready = axi4In_0_rready;
  assign axi4In_0_rdata = io_axi4In_0_readOnly_r_payload_data;
  assign axi4In_0_rlast = io_axi4In_0_readOnly_r_payload_last;
  assign axi4In_0_rid = io_axi4In_0_readOnly_r_payload_id;
  assign axi4In_0_rresp = io_axi4In_0_readOnly_r_payload_resp;
  assign io_axi4In_0_writeOnly_aw_valid = axi4In_0_awvalid;
  assign axi4In_0_awready = io_axi4In_0_writeOnly_aw_ready;
  assign io_axi4In_0_writeOnly_aw_payload_addr = axi4In_0_awaddr;
  assign io_axi4In_0_writeOnly_aw_payload_id = axi4In_0_awid;
  assign io_axi4In_0_writeOnly_aw_payload_region = axi4In_0_awregion;
  assign io_axi4In_0_writeOnly_aw_payload_len = axi4In_0_awlen;
  assign io_axi4In_0_writeOnly_aw_payload_size = axi4In_0_awsize;
  assign io_axi4In_0_writeOnly_aw_payload_burst = axi4In_0_awburst;
  assign io_axi4In_0_writeOnly_aw_payload_lock = axi4In_0_awlock;
  assign io_axi4In_0_writeOnly_aw_payload_cache = axi4In_0_awcache;
  assign io_axi4In_0_writeOnly_aw_payload_qos = axi4In_0_awqos;
  assign io_axi4In_0_writeOnly_aw_payload_prot = axi4In_0_awprot;
  assign io_axi4In_0_writeOnly_w_valid = axi4In_0_wvalid;
  assign axi4In_0_wready = io_axi4In_0_writeOnly_w_ready;
  assign io_axi4In_0_writeOnly_w_payload_data = axi4In_0_wdata;
  assign io_axi4In_0_writeOnly_w_payload_strb = axi4In_0_wstrb;
  assign io_axi4In_0_writeOnly_w_payload_last = axi4In_0_wlast;
  assign axi4In_0_bvalid = io_axi4In_0_writeOnly_b_valid;
  assign io_axi4In_0_writeOnly_b_ready = axi4In_0_bready;
  assign axi4In_0_bid = io_axi4In_0_writeOnly_b_payload_id;
  assign axi4In_0_bresp = io_axi4In_0_writeOnly_b_payload_resp;
  assign io_axi4In_1_readOnly_ar_valid = axi4In_1_arvalid;
  assign axi4In_1_arready = io_axi4In_1_readOnly_ar_ready;
  assign io_axi4In_1_readOnly_ar_payload_addr = axi4In_1_araddr;
  assign io_axi4In_1_readOnly_ar_payload_id = axi4In_1_arid;
  assign io_axi4In_1_readOnly_ar_payload_region = axi4In_1_arregion;
  assign io_axi4In_1_readOnly_ar_payload_len = axi4In_1_arlen;
  assign io_axi4In_1_readOnly_ar_payload_size = axi4In_1_arsize;
  assign io_axi4In_1_readOnly_ar_payload_burst = axi4In_1_arburst;
  assign io_axi4In_1_readOnly_ar_payload_lock = axi4In_1_arlock;
  assign io_axi4In_1_readOnly_ar_payload_cache = axi4In_1_arcache;
  assign io_axi4In_1_readOnly_ar_payload_qos = axi4In_1_arqos;
  assign io_axi4In_1_readOnly_ar_payload_prot = axi4In_1_arprot;
  assign axi4In_1_rvalid = io_axi4In_1_readOnly_r_valid;
  assign io_axi4In_1_readOnly_r_ready = axi4In_1_rready;
  assign axi4In_1_rdata = io_axi4In_1_readOnly_r_payload_data;
  assign axi4In_1_rlast = io_axi4In_1_readOnly_r_payload_last;
  assign axi4In_1_rid = io_axi4In_1_readOnly_r_payload_id;
  assign axi4In_1_rresp = io_axi4In_1_readOnly_r_payload_resp;
  assign io_axi4In_1_writeOnly_aw_valid = axi4In_1_awvalid;
  assign axi4In_1_awready = io_axi4In_1_writeOnly_aw_ready;
  assign io_axi4In_1_writeOnly_aw_payload_addr = axi4In_1_awaddr;
  assign io_axi4In_1_writeOnly_aw_payload_id = axi4In_1_awid;
  assign io_axi4In_1_writeOnly_aw_payload_region = axi4In_1_awregion;
  assign io_axi4In_1_writeOnly_aw_payload_len = axi4In_1_awlen;
  assign io_axi4In_1_writeOnly_aw_payload_size = axi4In_1_awsize;
  assign io_axi4In_1_writeOnly_aw_payload_burst = axi4In_1_awburst;
  assign io_axi4In_1_writeOnly_aw_payload_lock = axi4In_1_awlock;
  assign io_axi4In_1_writeOnly_aw_payload_cache = axi4In_1_awcache;
  assign io_axi4In_1_writeOnly_aw_payload_qos = axi4In_1_awqos;
  assign io_axi4In_1_writeOnly_aw_payload_prot = axi4In_1_awprot;
  assign io_axi4In_1_writeOnly_w_valid = axi4In_1_wvalid;
  assign axi4In_1_wready = io_axi4In_1_writeOnly_w_ready;
  assign io_axi4In_1_writeOnly_w_payload_data = axi4In_1_wdata;
  assign io_axi4In_1_writeOnly_w_payload_strb = axi4In_1_wstrb;
  assign io_axi4In_1_writeOnly_w_payload_last = axi4In_1_wlast;
  assign axi4In_1_bvalid = io_axi4In_1_writeOnly_b_valid;
  assign io_axi4In_1_writeOnly_b_ready = axi4In_1_bready;
  assign axi4In_1_bid = io_axi4In_1_writeOnly_b_payload_id;
  assign axi4In_1_bresp = io_axi4In_1_writeOnly_b_payload_resp;
  assign io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_fire = (io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_valid && io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_ready);
  assign io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_fire_1 = (io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_valid && io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_ready);
  assign io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_valid = io_axi4In_0_readOnly_decoder_io_outputs_0_ar_rValid;
  assign io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_addr = io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_addr;
  assign io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_id = io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_id;
  assign io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_region = io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_region;
  assign io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_len = io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_len;
  assign io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_size = io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_size;
  assign io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_burst = io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_burst;
  assign io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_lock = io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_lock;
  assign io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_cache = io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_cache;
  assign io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_qos = io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_qos;
  assign io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_payload_prot = io_axi4In_0_readOnly_decoder_io_outputs_0_ar_payload_prot;
  assign io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_ready = axi4ReadOnlyArbiter_2_io_inputs_0_ar_ready;
  assign io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_fire = (io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_valid && io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_ready);
  assign io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_fire_1 = (io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_valid && io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_ready);
  assign io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_valid = io_axi4In_0_readOnly_decoder_io_outputs_1_ar_rValid;
  assign io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_addr = io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_addr;
  assign io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_id = io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_id;
  assign io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_region = io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_region;
  assign io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_len = io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_len;
  assign io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_size = io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_size;
  assign io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_burst = io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_burst;
  assign io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_lock = io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_lock;
  assign io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_cache = io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_cache;
  assign io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_qos = io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_qos;
  assign io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_payload_prot = io_axi4In_0_readOnly_decoder_io_outputs_1_ar_payload_prot;
  assign io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_ready = axi4ReadOnlyArbiter_3_io_inputs_0_ar_ready;
  assign io_axi4In_0_readOnly_ar_ready = io_axi4In_0_readOnly_decoder_io_input_ar_ready;
  assign io_axi4In_0_readOnly_r_valid = io_axi4In_0_readOnly_decoder_io_input_r_valid;
  assign io_axi4In_0_readOnly_r_payload_data = io_axi4In_0_readOnly_decoder_io_input_r_payload_data;
  assign io_axi4In_0_readOnly_r_payload_last = io_axi4In_0_readOnly_decoder_io_input_r_payload_last;
  assign io_axi4In_0_readOnly_r_payload_id = io_axi4In_0_readOnly_decoder_io_input_r_payload_id;
  assign io_axi4In_0_readOnly_r_payload_resp = io_axi4In_0_readOnly_decoder_io_input_r_payload_resp;
  assign io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_fire = (io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_valid && io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_ready);
  assign io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_fire_1 = (io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_valid && io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_ready);
  assign io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_valid = io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_rValid;
  assign io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_addr = io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_addr;
  assign io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_id = io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_id;
  assign io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_region = io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_region;
  assign io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_len = io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_len;
  assign io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_size = io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_size;
  assign io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_burst = io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_burst;
  assign io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_lock = io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_lock;
  assign io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_cache = io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_cache;
  assign io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_qos = io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_qos;
  assign io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_prot = io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_payload_prot;
  assign io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_ready = axi4WriteOnlyArbiter_2_io_inputs_0_aw_ready;
  assign io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_fire = (io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_valid && io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_ready);
  assign io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_fire_1 = (io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_valid && io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_ready);
  assign io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_valid = io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_rValid;
  assign io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_addr = io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_addr;
  assign io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_id = io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_id;
  assign io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_region = io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_region;
  assign io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_len = io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_len;
  assign io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_size = io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_size;
  assign io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_burst = io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_burst;
  assign io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_lock = io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_lock;
  assign io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_cache = io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_cache;
  assign io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_qos = io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_qos;
  assign io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_prot = io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_payload_prot;
  assign io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_ready = axi4WriteOnlyArbiter_3_io_inputs_0_aw_ready;
  assign io_axi4In_0_writeOnly_aw_ready = io_axi4In_0_writeOnly_decoder_io_input_aw_ready;
  assign io_axi4In_0_writeOnly_w_ready = io_axi4In_0_writeOnly_decoder_io_input_w_ready;
  assign io_axi4In_0_writeOnly_b_valid = io_axi4In_0_writeOnly_decoder_io_input_b_valid;
  assign io_axi4In_0_writeOnly_b_payload_id = io_axi4In_0_writeOnly_decoder_io_input_b_payload_id;
  assign io_axi4In_0_writeOnly_b_payload_resp = io_axi4In_0_writeOnly_decoder_io_input_b_payload_resp;
  assign io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_fire = (io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_valid && io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_ready);
  assign io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_fire_1 = (io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_valid && io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_ready);
  assign io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_valid = io_axi4In_1_readOnly_decoder_io_outputs_0_ar_rValid;
  assign io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_addr = io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_addr;
  assign io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_id = io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_id;
  assign io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_region = io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_region;
  assign io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_len = io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_len;
  assign io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_size = io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_size;
  assign io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_burst = io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_burst;
  assign io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_lock = io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_lock;
  assign io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_cache = io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_cache;
  assign io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_qos = io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_qos;
  assign io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_payload_prot = io_axi4In_1_readOnly_decoder_io_outputs_0_ar_payload_prot;
  assign io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_ready = axi4ReadOnlyArbiter_2_io_inputs_1_ar_ready;
  assign io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_fire = (io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_valid && io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_ready);
  assign io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_fire_1 = (io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_valid && io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_ready);
  assign io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_valid = io_axi4In_1_readOnly_decoder_io_outputs_1_ar_rValid;
  assign io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_addr = io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_addr;
  assign io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_id = io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_id;
  assign io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_region = io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_region;
  assign io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_len = io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_len;
  assign io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_size = io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_size;
  assign io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_burst = io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_burst;
  assign io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_lock = io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_lock;
  assign io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_cache = io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_cache;
  assign io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_qos = io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_qos;
  assign io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_payload_prot = io_axi4In_1_readOnly_decoder_io_outputs_1_ar_payload_prot;
  assign io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_ready = axi4ReadOnlyArbiter_3_io_inputs_1_ar_ready;
  assign io_axi4In_1_readOnly_ar_ready = io_axi4In_1_readOnly_decoder_io_input_ar_ready;
  assign io_axi4In_1_readOnly_r_valid = io_axi4In_1_readOnly_decoder_io_input_r_valid;
  assign io_axi4In_1_readOnly_r_payload_data = io_axi4In_1_readOnly_decoder_io_input_r_payload_data;
  assign io_axi4In_1_readOnly_r_payload_last = io_axi4In_1_readOnly_decoder_io_input_r_payload_last;
  assign io_axi4In_1_readOnly_r_payload_id = io_axi4In_1_readOnly_decoder_io_input_r_payload_id;
  assign io_axi4In_1_readOnly_r_payload_resp = io_axi4In_1_readOnly_decoder_io_input_r_payload_resp;
  assign io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_fire = (io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_valid && io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_ready);
  assign io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_fire_1 = (io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_valid && io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_ready);
  assign io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_valid = io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_rValid;
  assign io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_addr = io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_addr;
  assign io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_id = io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_id;
  assign io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_region = io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_region;
  assign io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_len = io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_len;
  assign io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_size = io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_size;
  assign io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_burst = io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_burst;
  assign io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_lock = io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_lock;
  assign io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_cache = io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_cache;
  assign io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_qos = io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_qos;
  assign io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_payload_prot = io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_payload_prot;
  assign io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_ready = axi4WriteOnlyArbiter_2_io_inputs_1_aw_ready;
  assign io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_fire = (io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_valid && io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_ready);
  assign io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_fire_1 = (io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_valid && io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_ready);
  assign io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_valid = io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_rValid;
  assign io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_addr = io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_addr;
  assign io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_id = io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_id;
  assign io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_region = io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_region;
  assign io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_len = io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_len;
  assign io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_size = io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_size;
  assign io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_burst = io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_burst;
  assign io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_lock = io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_lock;
  assign io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_cache = io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_cache;
  assign io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_qos = io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_qos;
  assign io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_payload_prot = io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_payload_prot;
  assign io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_ready = axi4WriteOnlyArbiter_3_io_inputs_1_aw_ready;
  assign io_axi4In_1_writeOnly_aw_ready = io_axi4In_1_writeOnly_decoder_io_input_aw_ready;
  assign io_axi4In_1_writeOnly_w_ready = io_axi4In_1_writeOnly_decoder_io_input_w_ready;
  assign io_axi4In_1_writeOnly_b_valid = io_axi4In_1_writeOnly_decoder_io_input_b_valid;
  assign io_axi4In_1_writeOnly_b_payload_id = io_axi4In_1_writeOnly_decoder_io_input_b_payload_id;
  assign io_axi4In_1_writeOnly_b_payload_resp = io_axi4In_1_writeOnly_decoder_io_input_b_payload_resp;
  always @(*) begin
    axi4ReadOnlyArbiter_2_io_output_ar_ready = axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_ready;
    if(when_Stream_l368) begin
      axi4ReadOnlyArbiter_2_io_output_ar_ready = 1'b1;
    end
  end

  assign when_Stream_l368 = (! axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_valid);
  assign axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_valid = axi4ReadOnlyArbiter_2_io_output_ar_rValid;
  assign axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_addr = axi4ReadOnlyArbiter_2_io_output_ar_rData_addr;
  assign axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_id = axi4ReadOnlyArbiter_2_io_output_ar_rData_id;
  assign axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_region = axi4ReadOnlyArbiter_2_io_output_ar_rData_region;
  assign axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_len = axi4ReadOnlyArbiter_2_io_output_ar_rData_len;
  assign axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_size = axi4ReadOnlyArbiter_2_io_output_ar_rData_size;
  assign axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_burst = axi4ReadOnlyArbiter_2_io_output_ar_rData_burst;
  assign axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_lock = axi4ReadOnlyArbiter_2_io_output_ar_rData_lock;
  assign axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_cache = axi4ReadOnlyArbiter_2_io_output_ar_rData_cache;
  assign axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_qos = axi4ReadOnlyArbiter_2_io_output_ar_rData_qos;
  assign axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_payload_prot = axi4ReadOnlyArbiter_2_io_output_ar_rData_prot;
  assign axi4ReadOnlyArbiter_2_io_output_ar_m2sPipe_ready = axi40ut_0_arready;
  always @(*) begin
    _zz_axi40ut_0_rready = axi4ReadOnlyArbiter_2_io_output_r_ready;
    if(when_Stream_l368_1) begin
      _zz_axi40ut_0_rready = 1'b1;
    end
  end

  assign when_Stream_l368_1 = (! _zz_when_Stream_l368);
  assign _zz_when_Stream_l368 = _zz_when_Stream_l368_1;
  always @(*) begin
    axi4WriteOnlyArbiter_2_io_output_aw_ready = axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_ready;
    if(when_Stream_l368_2) begin
      axi4WriteOnlyArbiter_2_io_output_aw_ready = 1'b1;
    end
  end

  assign when_Stream_l368_2 = (! axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_valid);
  assign axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_valid = axi4WriteOnlyArbiter_2_io_output_aw_rValid;
  assign axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_addr = axi4WriteOnlyArbiter_2_io_output_aw_rData_addr;
  assign axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_id = axi4WriteOnlyArbiter_2_io_output_aw_rData_id;
  assign axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_region = axi4WriteOnlyArbiter_2_io_output_aw_rData_region;
  assign axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_len = axi4WriteOnlyArbiter_2_io_output_aw_rData_len;
  assign axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_size = axi4WriteOnlyArbiter_2_io_output_aw_rData_size;
  assign axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_burst = axi4WriteOnlyArbiter_2_io_output_aw_rData_burst;
  assign axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_lock = axi4WriteOnlyArbiter_2_io_output_aw_rData_lock;
  assign axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_cache = axi4WriteOnlyArbiter_2_io_output_aw_rData_cache;
  assign axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_qos = axi4WriteOnlyArbiter_2_io_output_aw_rData_qos;
  assign axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_payload_prot = axi4WriteOnlyArbiter_2_io_output_aw_rData_prot;
  assign axi4WriteOnlyArbiter_2_io_output_aw_m2sPipe_ready = axi40ut_0_awready;
  always @(*) begin
    axi4WriteOnlyArbiter_2_io_output_w_ready = axi4WriteOnlyArbiter_2_io_output_w_m2sPipe_ready;
    if(when_Stream_l368_3) begin
      axi4WriteOnlyArbiter_2_io_output_w_ready = 1'b1;
    end
  end

  assign when_Stream_l368_3 = (! axi4WriteOnlyArbiter_2_io_output_w_m2sPipe_valid);
  assign axi4WriteOnlyArbiter_2_io_output_w_m2sPipe_valid = axi4WriteOnlyArbiter_2_io_output_w_rValid;
  assign axi4WriteOnlyArbiter_2_io_output_w_m2sPipe_payload_data = axi4WriteOnlyArbiter_2_io_output_w_rData_data;
  assign axi4WriteOnlyArbiter_2_io_output_w_m2sPipe_payload_strb = axi4WriteOnlyArbiter_2_io_output_w_rData_strb;
  assign axi4WriteOnlyArbiter_2_io_output_w_m2sPipe_payload_last = axi4WriteOnlyArbiter_2_io_output_w_rData_last;
  assign axi4WriteOnlyArbiter_2_io_output_w_m2sPipe_ready = axi40ut_0_wready;
  always @(*) begin
    _zz_axi40ut_0_bready = axi4WriteOnlyArbiter_2_io_output_b_ready;
    if(when_Stream_l368_4) begin
      _zz_axi40ut_0_bready = 1'b1;
    end
  end

  assign when_Stream_l368_4 = (! _zz_when_Stream_l368_2);
  assign _zz_when_Stream_l368_2 = _zz_when_Stream_l368_3;
  always @(*) begin
    axi4ReadOnlyArbiter_3_io_output_ar_ready = axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_ready;
    if(when_Stream_l368_5) begin
      axi4ReadOnlyArbiter_3_io_output_ar_ready = 1'b1;
    end
  end

  assign when_Stream_l368_5 = (! axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_valid);
  assign axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_valid = axi4ReadOnlyArbiter_3_io_output_ar_rValid;
  assign axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_addr = axi4ReadOnlyArbiter_3_io_output_ar_rData_addr;
  assign axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_id = axi4ReadOnlyArbiter_3_io_output_ar_rData_id;
  assign axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_region = axi4ReadOnlyArbiter_3_io_output_ar_rData_region;
  assign axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_len = axi4ReadOnlyArbiter_3_io_output_ar_rData_len;
  assign axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_size = axi4ReadOnlyArbiter_3_io_output_ar_rData_size;
  assign axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_burst = axi4ReadOnlyArbiter_3_io_output_ar_rData_burst;
  assign axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_lock = axi4ReadOnlyArbiter_3_io_output_ar_rData_lock;
  assign axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_cache = axi4ReadOnlyArbiter_3_io_output_ar_rData_cache;
  assign axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_qos = axi4ReadOnlyArbiter_3_io_output_ar_rData_qos;
  assign axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_payload_prot = axi4ReadOnlyArbiter_3_io_output_ar_rData_prot;
  assign axi4ReadOnlyArbiter_3_io_output_ar_m2sPipe_ready = axi40ut_1_arready;
  always @(*) begin
    _zz_axi40ut_1_rready = axi4ReadOnlyArbiter_3_io_output_r_ready;
    if(when_Stream_l368_6) begin
      _zz_axi40ut_1_rready = 1'b1;
    end
  end

  assign when_Stream_l368_6 = (! _zz_when_Stream_l368_4);
  assign _zz_when_Stream_l368_4 = _zz_when_Stream_l368_5;
  always @(*) begin
    axi4WriteOnlyArbiter_3_io_output_aw_ready = axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_ready;
    if(when_Stream_l368_7) begin
      axi4WriteOnlyArbiter_3_io_output_aw_ready = 1'b1;
    end
  end

  assign when_Stream_l368_7 = (! axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_valid);
  assign axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_valid = axi4WriteOnlyArbiter_3_io_output_aw_rValid;
  assign axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_addr = axi4WriteOnlyArbiter_3_io_output_aw_rData_addr;
  assign axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_id = axi4WriteOnlyArbiter_3_io_output_aw_rData_id;
  assign axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_region = axi4WriteOnlyArbiter_3_io_output_aw_rData_region;
  assign axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_len = axi4WriteOnlyArbiter_3_io_output_aw_rData_len;
  assign axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_size = axi4WriteOnlyArbiter_3_io_output_aw_rData_size;
  assign axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_burst = axi4WriteOnlyArbiter_3_io_output_aw_rData_burst;
  assign axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_lock = axi4WriteOnlyArbiter_3_io_output_aw_rData_lock;
  assign axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_cache = axi4WriteOnlyArbiter_3_io_output_aw_rData_cache;
  assign axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_qos = axi4WriteOnlyArbiter_3_io_output_aw_rData_qos;
  assign axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_payload_prot = axi4WriteOnlyArbiter_3_io_output_aw_rData_prot;
  assign axi4WriteOnlyArbiter_3_io_output_aw_m2sPipe_ready = axi40ut_1_awready;
  always @(*) begin
    axi4WriteOnlyArbiter_3_io_output_w_ready = axi4WriteOnlyArbiter_3_io_output_w_m2sPipe_ready;
    if(when_Stream_l368_8) begin
      axi4WriteOnlyArbiter_3_io_output_w_ready = 1'b1;
    end
  end

  assign when_Stream_l368_8 = (! axi4WriteOnlyArbiter_3_io_output_w_m2sPipe_valid);
  assign axi4WriteOnlyArbiter_3_io_output_w_m2sPipe_valid = axi4WriteOnlyArbiter_3_io_output_w_rValid;
  assign axi4WriteOnlyArbiter_3_io_output_w_m2sPipe_payload_data = axi4WriteOnlyArbiter_3_io_output_w_rData_data;
  assign axi4WriteOnlyArbiter_3_io_output_w_m2sPipe_payload_strb = axi4WriteOnlyArbiter_3_io_output_w_rData_strb;
  assign axi4WriteOnlyArbiter_3_io_output_w_m2sPipe_payload_last = axi4WriteOnlyArbiter_3_io_output_w_rData_last;
  assign axi4WriteOnlyArbiter_3_io_output_w_m2sPipe_ready = axi40ut_1_wready;
  always @(*) begin
    _zz_axi40ut_1_bready = axi4WriteOnlyArbiter_3_io_output_b_ready;
    if(when_Stream_l368_9) begin
      _zz_axi40ut_1_bready = 1'b1;
    end
  end

  assign when_Stream_l368_9 = (! _zz_when_Stream_l368_6);
  assign _zz_when_Stream_l368_6 = _zz_when_Stream_l368_7;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      io_axi4In_0_readOnly_decoder_io_outputs_0_ar_rValid <= 1'b0;
      io_axi4In_0_readOnly_decoder_io_outputs_1_ar_rValid <= 1'b0;
      io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_rValid <= 1'b0;
      io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_rValid <= 1'b0;
      io_axi4In_1_readOnly_decoder_io_outputs_0_ar_rValid <= 1'b0;
      io_axi4In_1_readOnly_decoder_io_outputs_1_ar_rValid <= 1'b0;
      io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_rValid <= 1'b0;
      io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_rValid <= 1'b0;
      axi4ReadOnlyArbiter_2_io_output_ar_rValid <= 1'b0;
      _zz_when_Stream_l368_1 <= 1'b0;
      axi4WriteOnlyArbiter_2_io_output_aw_rValid <= 1'b0;
      axi4WriteOnlyArbiter_2_io_output_w_rValid <= 1'b0;
      _zz_when_Stream_l368_3 <= 1'b0;
      axi4ReadOnlyArbiter_3_io_output_ar_rValid <= 1'b0;
      _zz_when_Stream_l368_5 <= 1'b0;
      axi4WriteOnlyArbiter_3_io_output_aw_rValid <= 1'b0;
      axi4WriteOnlyArbiter_3_io_output_w_rValid <= 1'b0;
      _zz_when_Stream_l368_7 <= 1'b0;
    end else begin
      if(io_axi4In_0_readOnly_decoder_io_outputs_0_ar_valid) begin
        io_axi4In_0_readOnly_decoder_io_outputs_0_ar_rValid <= 1'b1;
      end
      if(io_axi4In_0_readOnly_decoder_io_outputs_0_ar_validPipe_fire) begin
        io_axi4In_0_readOnly_decoder_io_outputs_0_ar_rValid <= 1'b0;
      end
      if(io_axi4In_0_readOnly_decoder_io_outputs_1_ar_valid) begin
        io_axi4In_0_readOnly_decoder_io_outputs_1_ar_rValid <= 1'b1;
      end
      if(io_axi4In_0_readOnly_decoder_io_outputs_1_ar_validPipe_fire) begin
        io_axi4In_0_readOnly_decoder_io_outputs_1_ar_rValid <= 1'b0;
      end
      if(io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_valid) begin
        io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_rValid <= 1'b1;
      end
      if(io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_validPipe_fire) begin
        io_axi4In_0_writeOnly_decoder_io_outputs_0_aw_rValid <= 1'b0;
      end
      if(io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_valid) begin
        io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_rValid <= 1'b1;
      end
      if(io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_validPipe_fire) begin
        io_axi4In_0_writeOnly_decoder_io_outputs_1_aw_rValid <= 1'b0;
      end
      if(io_axi4In_1_readOnly_decoder_io_outputs_0_ar_valid) begin
        io_axi4In_1_readOnly_decoder_io_outputs_0_ar_rValid <= 1'b1;
      end
      if(io_axi4In_1_readOnly_decoder_io_outputs_0_ar_validPipe_fire) begin
        io_axi4In_1_readOnly_decoder_io_outputs_0_ar_rValid <= 1'b0;
      end
      if(io_axi4In_1_readOnly_decoder_io_outputs_1_ar_valid) begin
        io_axi4In_1_readOnly_decoder_io_outputs_1_ar_rValid <= 1'b1;
      end
      if(io_axi4In_1_readOnly_decoder_io_outputs_1_ar_validPipe_fire) begin
        io_axi4In_1_readOnly_decoder_io_outputs_1_ar_rValid <= 1'b0;
      end
      if(io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_valid) begin
        io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_rValid <= 1'b1;
      end
      if(io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_validPipe_fire) begin
        io_axi4In_1_writeOnly_decoder_io_outputs_0_aw_rValid <= 1'b0;
      end
      if(io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_valid) begin
        io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_rValid <= 1'b1;
      end
      if(io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_validPipe_fire) begin
        io_axi4In_1_writeOnly_decoder_io_outputs_1_aw_rValid <= 1'b0;
      end
      if(axi4ReadOnlyArbiter_2_io_output_ar_ready) begin
        axi4ReadOnlyArbiter_2_io_output_ar_rValid <= axi4ReadOnlyArbiter_2_io_output_ar_valid;
      end
      if(_zz_axi40ut_0_rready) begin
        _zz_when_Stream_l368_1 <= axi40ut_0_rvalid;
      end
      if(axi4WriteOnlyArbiter_2_io_output_aw_ready) begin
        axi4WriteOnlyArbiter_2_io_output_aw_rValid <= axi4WriteOnlyArbiter_2_io_output_aw_valid;
      end
      if(axi4WriteOnlyArbiter_2_io_output_w_ready) begin
        axi4WriteOnlyArbiter_2_io_output_w_rValid <= axi4WriteOnlyArbiter_2_io_output_w_valid;
      end
      if(_zz_axi40ut_0_bready) begin
        _zz_when_Stream_l368_3 <= axi40ut_0_bvalid;
      end
      if(axi4ReadOnlyArbiter_3_io_output_ar_ready) begin
        axi4ReadOnlyArbiter_3_io_output_ar_rValid <= axi4ReadOnlyArbiter_3_io_output_ar_valid;
      end
      if(_zz_axi40ut_1_rready) begin
        _zz_when_Stream_l368_5 <= axi40ut_1_rvalid;
      end
      if(axi4WriteOnlyArbiter_3_io_output_aw_ready) begin
        axi4WriteOnlyArbiter_3_io_output_aw_rValid <= axi4WriteOnlyArbiter_3_io_output_aw_valid;
      end
      if(axi4WriteOnlyArbiter_3_io_output_w_ready) begin
        axi4WriteOnlyArbiter_3_io_output_w_rValid <= axi4WriteOnlyArbiter_3_io_output_w_valid;
      end
      if(_zz_axi40ut_1_bready) begin
        _zz_when_Stream_l368_7 <= axi40ut_1_bvalid;
      end
    end
  end

  always @(posedge clk) begin
    if(axi4ReadOnlyArbiter_2_io_output_ar_ready) begin
      axi4ReadOnlyArbiter_2_io_output_ar_rData_addr <= axi4ReadOnlyArbiter_2_io_output_ar_payload_addr;
      axi4ReadOnlyArbiter_2_io_output_ar_rData_id <= axi4ReadOnlyArbiter_2_io_output_ar_payload_id;
      axi4ReadOnlyArbiter_2_io_output_ar_rData_region <= axi4ReadOnlyArbiter_2_io_output_ar_payload_region;
      axi4ReadOnlyArbiter_2_io_output_ar_rData_len <= axi4ReadOnlyArbiter_2_io_output_ar_payload_len;
      axi4ReadOnlyArbiter_2_io_output_ar_rData_size <= axi4ReadOnlyArbiter_2_io_output_ar_payload_size;
      axi4ReadOnlyArbiter_2_io_output_ar_rData_burst <= axi4ReadOnlyArbiter_2_io_output_ar_payload_burst;
      axi4ReadOnlyArbiter_2_io_output_ar_rData_lock <= axi4ReadOnlyArbiter_2_io_output_ar_payload_lock;
      axi4ReadOnlyArbiter_2_io_output_ar_rData_cache <= axi4ReadOnlyArbiter_2_io_output_ar_payload_cache;
      axi4ReadOnlyArbiter_2_io_output_ar_rData_qos <= axi4ReadOnlyArbiter_2_io_output_ar_payload_qos;
      axi4ReadOnlyArbiter_2_io_output_ar_rData_prot <= axi4ReadOnlyArbiter_2_io_output_ar_payload_prot;
    end
    if(_zz_axi40ut_0_rready) begin
      _zz_io_output_r_payload_data <= axi40ut_0_rdata;
      _zz_io_output_r_payload_id <= axi40ut_0_rid;
      _zz_io_output_r_payload_resp <= axi40ut_0_rresp;
      _zz_io_output_r_payload_last <= axi40ut_0_rlast;
    end
    if(axi4WriteOnlyArbiter_2_io_output_aw_ready) begin
      axi4WriteOnlyArbiter_2_io_output_aw_rData_addr <= axi4WriteOnlyArbiter_2_io_output_aw_payload_addr;
      axi4WriteOnlyArbiter_2_io_output_aw_rData_id <= axi4WriteOnlyArbiter_2_io_output_aw_payload_id;
      axi4WriteOnlyArbiter_2_io_output_aw_rData_region <= axi4WriteOnlyArbiter_2_io_output_aw_payload_region;
      axi4WriteOnlyArbiter_2_io_output_aw_rData_len <= axi4WriteOnlyArbiter_2_io_output_aw_payload_len;
      axi4WriteOnlyArbiter_2_io_output_aw_rData_size <= axi4WriteOnlyArbiter_2_io_output_aw_payload_size;
      axi4WriteOnlyArbiter_2_io_output_aw_rData_burst <= axi4WriteOnlyArbiter_2_io_output_aw_payload_burst;
      axi4WriteOnlyArbiter_2_io_output_aw_rData_lock <= axi4WriteOnlyArbiter_2_io_output_aw_payload_lock;
      axi4WriteOnlyArbiter_2_io_output_aw_rData_cache <= axi4WriteOnlyArbiter_2_io_output_aw_payload_cache;
      axi4WriteOnlyArbiter_2_io_output_aw_rData_qos <= axi4WriteOnlyArbiter_2_io_output_aw_payload_qos;
      axi4WriteOnlyArbiter_2_io_output_aw_rData_prot <= axi4WriteOnlyArbiter_2_io_output_aw_payload_prot;
    end
    if(axi4WriteOnlyArbiter_2_io_output_w_ready) begin
      axi4WriteOnlyArbiter_2_io_output_w_rData_data <= axi4WriteOnlyArbiter_2_io_output_w_payload_data;
      axi4WriteOnlyArbiter_2_io_output_w_rData_strb <= axi4WriteOnlyArbiter_2_io_output_w_payload_strb;
      axi4WriteOnlyArbiter_2_io_output_w_rData_last <= axi4WriteOnlyArbiter_2_io_output_w_payload_last;
    end
    if(_zz_axi40ut_0_bready) begin
      _zz_io_output_b_payload_id <= axi40ut_0_bid;
      _zz_io_output_b_payload_resp <= axi40ut_0_bresp;
    end
    if(axi4ReadOnlyArbiter_3_io_output_ar_ready) begin
      axi4ReadOnlyArbiter_3_io_output_ar_rData_addr <= axi4ReadOnlyArbiter_3_io_output_ar_payload_addr;
      axi4ReadOnlyArbiter_3_io_output_ar_rData_id <= axi4ReadOnlyArbiter_3_io_output_ar_payload_id;
      axi4ReadOnlyArbiter_3_io_output_ar_rData_region <= axi4ReadOnlyArbiter_3_io_output_ar_payload_region;
      axi4ReadOnlyArbiter_3_io_output_ar_rData_len <= axi4ReadOnlyArbiter_3_io_output_ar_payload_len;
      axi4ReadOnlyArbiter_3_io_output_ar_rData_size <= axi4ReadOnlyArbiter_3_io_output_ar_payload_size;
      axi4ReadOnlyArbiter_3_io_output_ar_rData_burst <= axi4ReadOnlyArbiter_3_io_output_ar_payload_burst;
      axi4ReadOnlyArbiter_3_io_output_ar_rData_lock <= axi4ReadOnlyArbiter_3_io_output_ar_payload_lock;
      axi4ReadOnlyArbiter_3_io_output_ar_rData_cache <= axi4ReadOnlyArbiter_3_io_output_ar_payload_cache;
      axi4ReadOnlyArbiter_3_io_output_ar_rData_qos <= axi4ReadOnlyArbiter_3_io_output_ar_payload_qos;
      axi4ReadOnlyArbiter_3_io_output_ar_rData_prot <= axi4ReadOnlyArbiter_3_io_output_ar_payload_prot;
    end
    if(_zz_axi40ut_1_rready) begin
      _zz_io_output_r_payload_data_1 <= axi40ut_1_rdata;
      _zz_io_output_r_payload_id_1 <= axi40ut_1_rid;
      _zz_io_output_r_payload_resp_1 <= axi40ut_1_rresp;
      _zz_io_output_r_payload_last_1 <= axi40ut_1_rlast;
    end
    if(axi4WriteOnlyArbiter_3_io_output_aw_ready) begin
      axi4WriteOnlyArbiter_3_io_output_aw_rData_addr <= axi4WriteOnlyArbiter_3_io_output_aw_payload_addr;
      axi4WriteOnlyArbiter_3_io_output_aw_rData_id <= axi4WriteOnlyArbiter_3_io_output_aw_payload_id;
      axi4WriteOnlyArbiter_3_io_output_aw_rData_region <= axi4WriteOnlyArbiter_3_io_output_aw_payload_region;
      axi4WriteOnlyArbiter_3_io_output_aw_rData_len <= axi4WriteOnlyArbiter_3_io_output_aw_payload_len;
      axi4WriteOnlyArbiter_3_io_output_aw_rData_size <= axi4WriteOnlyArbiter_3_io_output_aw_payload_size;
      axi4WriteOnlyArbiter_3_io_output_aw_rData_burst <= axi4WriteOnlyArbiter_3_io_output_aw_payload_burst;
      axi4WriteOnlyArbiter_3_io_output_aw_rData_lock <= axi4WriteOnlyArbiter_3_io_output_aw_payload_lock;
      axi4WriteOnlyArbiter_3_io_output_aw_rData_cache <= axi4WriteOnlyArbiter_3_io_output_aw_payload_cache;
      axi4WriteOnlyArbiter_3_io_output_aw_rData_qos <= axi4WriteOnlyArbiter_3_io_output_aw_payload_qos;
      axi4WriteOnlyArbiter_3_io_output_aw_rData_prot <= axi4WriteOnlyArbiter_3_io_output_aw_payload_prot;
    end
    if(axi4WriteOnlyArbiter_3_io_output_w_ready) begin
      axi4WriteOnlyArbiter_3_io_output_w_rData_data <= axi4WriteOnlyArbiter_3_io_output_w_payload_data;
      axi4WriteOnlyArbiter_3_io_output_w_rData_strb <= axi4WriteOnlyArbiter_3_io_output_w_payload_strb;
      axi4WriteOnlyArbiter_3_io_output_w_rData_last <= axi4WriteOnlyArbiter_3_io_output_w_payload_last;
    end
    if(_zz_axi40ut_1_bready) begin
      _zz_io_output_b_payload_id_1 <= axi40ut_1_bid;
      _zz_io_output_b_payload_resp_1 <= axi40ut_1_bresp;
    end
  end


endmodule

//Axi4WriteOnlyArbiter replaced by Axi4WriteOnlyArbiter

//Axi4ReadOnlyArbiter replaced by Axi4ReadOnlyArbiter

module Axi4WriteOnlyArbiter (
  input               io_inputs_0_aw_valid,
  output              io_inputs_0_aw_ready,
  input      [63:0]   io_inputs_0_aw_payload_addr,
  input      [3:0]    io_inputs_0_aw_payload_id,
  input      [3:0]    io_inputs_0_aw_payload_region,
  input      [7:0]    io_inputs_0_aw_payload_len,
  input      [2:0]    io_inputs_0_aw_payload_size,
  input      [1:0]    io_inputs_0_aw_payload_burst,
  input      [0:0]    io_inputs_0_aw_payload_lock,
  input      [3:0]    io_inputs_0_aw_payload_cache,
  input      [3:0]    io_inputs_0_aw_payload_qos,
  input      [2:0]    io_inputs_0_aw_payload_prot,
  input               io_inputs_0_w_valid,
  output              io_inputs_0_w_ready,
  input      [511:0]  io_inputs_0_w_payload_data,
  input      [63:0]   io_inputs_0_w_payload_strb,
  input               io_inputs_0_w_payload_last,
  output              io_inputs_0_b_valid,
  input               io_inputs_0_b_ready,
  output     [3:0]    io_inputs_0_b_payload_id,
  output     [1:0]    io_inputs_0_b_payload_resp,
  input               io_inputs_1_aw_valid,
  output              io_inputs_1_aw_ready,
  input      [63:0]   io_inputs_1_aw_payload_addr,
  input      [3:0]    io_inputs_1_aw_payload_id,
  input      [3:0]    io_inputs_1_aw_payload_region,
  input      [7:0]    io_inputs_1_aw_payload_len,
  input      [2:0]    io_inputs_1_aw_payload_size,
  input      [1:0]    io_inputs_1_aw_payload_burst,
  input      [0:0]    io_inputs_1_aw_payload_lock,
  input      [3:0]    io_inputs_1_aw_payload_cache,
  input      [3:0]    io_inputs_1_aw_payload_qos,
  input      [2:0]    io_inputs_1_aw_payload_prot,
  input               io_inputs_1_w_valid,
  output              io_inputs_1_w_ready,
  input      [511:0]  io_inputs_1_w_payload_data,
  input      [63:0]   io_inputs_1_w_payload_strb,
  input               io_inputs_1_w_payload_last,
  output              io_inputs_1_b_valid,
  input               io_inputs_1_b_ready,
  output     [3:0]    io_inputs_1_b_payload_id,
  output     [1:0]    io_inputs_1_b_payload_resp,
  output              io_output_aw_valid,
  input               io_output_aw_ready,
  output     [63:0]   io_output_aw_payload_addr,
  output     [4:0]    io_output_aw_payload_id,
  output     [3:0]    io_output_aw_payload_region,
  output     [7:0]    io_output_aw_payload_len,
  output     [2:0]    io_output_aw_payload_size,
  output     [1:0]    io_output_aw_payload_burst,
  output     [0:0]    io_output_aw_payload_lock,
  output     [3:0]    io_output_aw_payload_cache,
  output     [3:0]    io_output_aw_payload_qos,
  output     [2:0]    io_output_aw_payload_prot,
  output              io_output_w_valid,
  input               io_output_w_ready,
  output     [511:0]  io_output_w_payload_data,
  output     [63:0]   io_output_w_payload_strb,
  output              io_output_w_payload_last,
  input               io_output_b_valid,
  output              io_output_b_ready,
  input      [4:0]    io_output_b_payload_id,
  input      [1:0]    io_output_b_payload_resp,
  input               clk,
  input               reset
);

  reg                 cmdArbiter_io_output_ready;
  wire                cmdRouteFork_translated_fifo_io_pop_ready;
  wire                cmdArbiter_io_inputs_0_ready;
  wire                cmdArbiter_io_inputs_1_ready;
  wire                cmdArbiter_io_output_valid;
  wire       [63:0]   cmdArbiter_io_output_payload_addr;
  wire       [3:0]    cmdArbiter_io_output_payload_id;
  wire       [3:0]    cmdArbiter_io_output_payload_region;
  wire       [7:0]    cmdArbiter_io_output_payload_len;
  wire       [2:0]    cmdArbiter_io_output_payload_size;
  wire       [1:0]    cmdArbiter_io_output_payload_burst;
  wire       [0:0]    cmdArbiter_io_output_payload_lock;
  wire       [3:0]    cmdArbiter_io_output_payload_cache;
  wire       [3:0]    cmdArbiter_io_output_payload_qos;
  wire       [2:0]    cmdArbiter_io_output_payload_prot;
  wire       [0:0]    cmdArbiter_io_chosen;
  wire       [1:0]    cmdArbiter_io_chosenOH;
  wire                cmdRouteFork_translated_fifo_io_push_ready;
  wire                cmdRouteFork_translated_fifo_io_pop_valid;
  wire       [0:0]    cmdRouteFork_translated_fifo_io_pop_payload;
  wire       [2:0]    cmdRouteFork_translated_fifo_io_occupancy;
  reg                 _zz_io_output_w_valid;
  reg        [511:0]  _zz_io_output_w_payload_data;
  reg        [63:0]   _zz_io_output_w_payload_strb;
  reg                 _zz_io_output_w_payload_last;
  reg                 _zz_io_output_b_ready;
  wire                cmdOutputFork_valid;
  wire                cmdOutputFork_ready;
  wire       [63:0]   cmdOutputFork_payload_addr;
  wire       [3:0]    cmdOutputFork_payload_id;
  wire       [3:0]    cmdOutputFork_payload_region;
  wire       [7:0]    cmdOutputFork_payload_len;
  wire       [2:0]    cmdOutputFork_payload_size;
  wire       [1:0]    cmdOutputFork_payload_burst;
  wire       [0:0]    cmdOutputFork_payload_lock;
  wire       [3:0]    cmdOutputFork_payload_cache;
  wire       [3:0]    cmdOutputFork_payload_qos;
  wire       [2:0]    cmdOutputFork_payload_prot;
  wire                cmdRouteFork_valid;
  wire                cmdRouteFork_ready;
  wire       [63:0]   cmdRouteFork_payload_addr;
  wire       [3:0]    cmdRouteFork_payload_id;
  wire       [3:0]    cmdRouteFork_payload_region;
  wire       [7:0]    cmdRouteFork_payload_len;
  wire       [2:0]    cmdRouteFork_payload_size;
  wire       [1:0]    cmdRouteFork_payload_burst;
  wire       [0:0]    cmdRouteFork_payload_lock;
  wire       [3:0]    cmdRouteFork_payload_cache;
  wire       [3:0]    cmdRouteFork_payload_qos;
  wire       [2:0]    cmdRouteFork_payload_prot;
  reg                 _zz_cmdOutputFork_valid;
  reg                 _zz_cmdRouteFork_valid;
  wire                when_Stream_l948;
  wire                when_Stream_l948_1;
  wire                cmdOutputFork_fire;
  wire                cmdRouteFork_fire;
  wire                cmdRouteFork_translated_valid;
  wire                cmdRouteFork_translated_ready;
  wire       [0:0]    cmdRouteFork_translated_payload;
  wire                io_output_w_fire;
  wire       [0:0]    writeRspIndex;
  wire                writeRspSels_0;
  wire                writeRspSels_1;

  StreamArbiter cmdArbiter (
    .io_inputs_0_valid          (io_inputs_0_aw_valid                    ), //i
    .io_inputs_0_ready          (cmdArbiter_io_inputs_0_ready            ), //o
    .io_inputs_0_payload_addr   (io_inputs_0_aw_payload_addr[63:0]       ), //i
    .io_inputs_0_payload_id     (io_inputs_0_aw_payload_id[3:0]          ), //i
    .io_inputs_0_payload_region (io_inputs_0_aw_payload_region[3:0]      ), //i
    .io_inputs_0_payload_len    (io_inputs_0_aw_payload_len[7:0]         ), //i
    .io_inputs_0_payload_size   (io_inputs_0_aw_payload_size[2:0]        ), //i
    .io_inputs_0_payload_burst  (io_inputs_0_aw_payload_burst[1:0]       ), //i
    .io_inputs_0_payload_lock   (io_inputs_0_aw_payload_lock             ), //i
    .io_inputs_0_payload_cache  (io_inputs_0_aw_payload_cache[3:0]       ), //i
    .io_inputs_0_payload_qos    (io_inputs_0_aw_payload_qos[3:0]         ), //i
    .io_inputs_0_payload_prot   (io_inputs_0_aw_payload_prot[2:0]        ), //i
    .io_inputs_1_valid          (io_inputs_1_aw_valid                    ), //i
    .io_inputs_1_ready          (cmdArbiter_io_inputs_1_ready            ), //o
    .io_inputs_1_payload_addr   (io_inputs_1_aw_payload_addr[63:0]       ), //i
    .io_inputs_1_payload_id     (io_inputs_1_aw_payload_id[3:0]          ), //i
    .io_inputs_1_payload_region (io_inputs_1_aw_payload_region[3:0]      ), //i
    .io_inputs_1_payload_len    (io_inputs_1_aw_payload_len[7:0]         ), //i
    .io_inputs_1_payload_size   (io_inputs_1_aw_payload_size[2:0]        ), //i
    .io_inputs_1_payload_burst  (io_inputs_1_aw_payload_burst[1:0]       ), //i
    .io_inputs_1_payload_lock   (io_inputs_1_aw_payload_lock             ), //i
    .io_inputs_1_payload_cache  (io_inputs_1_aw_payload_cache[3:0]       ), //i
    .io_inputs_1_payload_qos    (io_inputs_1_aw_payload_qos[3:0]         ), //i
    .io_inputs_1_payload_prot   (io_inputs_1_aw_payload_prot[2:0]        ), //i
    .io_output_valid            (cmdArbiter_io_output_valid              ), //o
    .io_output_ready            (cmdArbiter_io_output_ready              ), //i
    .io_output_payload_addr     (cmdArbiter_io_output_payload_addr[63:0] ), //o
    .io_output_payload_id       (cmdArbiter_io_output_payload_id[3:0]    ), //o
    .io_output_payload_region   (cmdArbiter_io_output_payload_region[3:0]), //o
    .io_output_payload_len      (cmdArbiter_io_output_payload_len[7:0]   ), //o
    .io_output_payload_size     (cmdArbiter_io_output_payload_size[2:0]  ), //o
    .io_output_payload_burst    (cmdArbiter_io_output_payload_burst[1:0] ), //o
    .io_output_payload_lock     (cmdArbiter_io_output_payload_lock       ), //o
    .io_output_payload_cache    (cmdArbiter_io_output_payload_cache[3:0] ), //o
    .io_output_payload_qos      (cmdArbiter_io_output_payload_qos[3:0]   ), //o
    .io_output_payload_prot     (cmdArbiter_io_output_payload_prot[2:0]  ), //o
    .io_chosen                  (cmdArbiter_io_chosen                    ), //o
    .io_chosenOH                (cmdArbiter_io_chosenOH[1:0]             ), //o
    .clk                        (clk                                     ), //i
    .reset                      (reset                                   )  //i
  );
  StreamFifoLowLatency cmdRouteFork_translated_fifo (
    .io_push_valid   (cmdRouteFork_translated_valid                 ), //i
    .io_push_ready   (cmdRouteFork_translated_fifo_io_push_ready    ), //o
    .io_push_payload (cmdRouteFork_translated_payload               ), //i
    .io_pop_valid    (cmdRouteFork_translated_fifo_io_pop_valid     ), //o
    .io_pop_ready    (cmdRouteFork_translated_fifo_io_pop_ready     ), //i
    .io_pop_payload  (cmdRouteFork_translated_fifo_io_pop_payload   ), //o
    .io_flush        (1'b0                                          ), //i
    .io_occupancy    (cmdRouteFork_translated_fifo_io_occupancy[2:0]), //o
    .clk             (clk                                           ), //i
    .reset           (reset                                         )  //i
  );
  always @(*) begin
    case(cmdRouteFork_translated_fifo_io_pop_payload)
      1'b0 : begin
        _zz_io_output_w_valid = io_inputs_0_w_valid;
        _zz_io_output_w_payload_data = io_inputs_0_w_payload_data;
        _zz_io_output_w_payload_strb = io_inputs_0_w_payload_strb;
        _zz_io_output_w_payload_last = io_inputs_0_w_payload_last;
      end
      default : begin
        _zz_io_output_w_valid = io_inputs_1_w_valid;
        _zz_io_output_w_payload_data = io_inputs_1_w_payload_data;
        _zz_io_output_w_payload_strb = io_inputs_1_w_payload_strb;
        _zz_io_output_w_payload_last = io_inputs_1_w_payload_last;
      end
    endcase
  end

  always @(*) begin
    case(writeRspIndex)
      1'b0 : _zz_io_output_b_ready = io_inputs_0_b_ready;
      default : _zz_io_output_b_ready = io_inputs_1_b_ready;
    endcase
  end

  assign io_inputs_0_aw_ready = cmdArbiter_io_inputs_0_ready;
  assign io_inputs_1_aw_ready = cmdArbiter_io_inputs_1_ready;
  always @(*) begin
    cmdArbiter_io_output_ready = 1'b1;
    if(when_Stream_l948) begin
      cmdArbiter_io_output_ready = 1'b0;
    end
    if(when_Stream_l948_1) begin
      cmdArbiter_io_output_ready = 1'b0;
    end
  end

  assign when_Stream_l948 = ((! cmdOutputFork_ready) && _zz_cmdOutputFork_valid);
  assign when_Stream_l948_1 = ((! cmdRouteFork_ready) && _zz_cmdRouteFork_valid);
  assign cmdOutputFork_valid = (cmdArbiter_io_output_valid && _zz_cmdOutputFork_valid);
  assign cmdOutputFork_payload_addr = cmdArbiter_io_output_payload_addr;
  assign cmdOutputFork_payload_id = cmdArbiter_io_output_payload_id;
  assign cmdOutputFork_payload_region = cmdArbiter_io_output_payload_region;
  assign cmdOutputFork_payload_len = cmdArbiter_io_output_payload_len;
  assign cmdOutputFork_payload_size = cmdArbiter_io_output_payload_size;
  assign cmdOutputFork_payload_burst = cmdArbiter_io_output_payload_burst;
  assign cmdOutputFork_payload_lock = cmdArbiter_io_output_payload_lock;
  assign cmdOutputFork_payload_cache = cmdArbiter_io_output_payload_cache;
  assign cmdOutputFork_payload_qos = cmdArbiter_io_output_payload_qos;
  assign cmdOutputFork_payload_prot = cmdArbiter_io_output_payload_prot;
  assign cmdOutputFork_fire = (cmdOutputFork_valid && cmdOutputFork_ready);
  assign cmdRouteFork_valid = (cmdArbiter_io_output_valid && _zz_cmdRouteFork_valid);
  assign cmdRouteFork_payload_addr = cmdArbiter_io_output_payload_addr;
  assign cmdRouteFork_payload_id = cmdArbiter_io_output_payload_id;
  assign cmdRouteFork_payload_region = cmdArbiter_io_output_payload_region;
  assign cmdRouteFork_payload_len = cmdArbiter_io_output_payload_len;
  assign cmdRouteFork_payload_size = cmdArbiter_io_output_payload_size;
  assign cmdRouteFork_payload_burst = cmdArbiter_io_output_payload_burst;
  assign cmdRouteFork_payload_lock = cmdArbiter_io_output_payload_lock;
  assign cmdRouteFork_payload_cache = cmdArbiter_io_output_payload_cache;
  assign cmdRouteFork_payload_qos = cmdArbiter_io_output_payload_qos;
  assign cmdRouteFork_payload_prot = cmdArbiter_io_output_payload_prot;
  assign cmdRouteFork_fire = (cmdRouteFork_valid && cmdRouteFork_ready);
  assign io_output_aw_valid = cmdOutputFork_valid;
  assign cmdOutputFork_ready = io_output_aw_ready;
  assign io_output_aw_payload_addr = cmdOutputFork_payload_addr;
  assign io_output_aw_payload_region = cmdOutputFork_payload_region;
  assign io_output_aw_payload_len = cmdOutputFork_payload_len;
  assign io_output_aw_payload_size = cmdOutputFork_payload_size;
  assign io_output_aw_payload_burst = cmdOutputFork_payload_burst;
  assign io_output_aw_payload_lock = cmdOutputFork_payload_lock;
  assign io_output_aw_payload_cache = cmdOutputFork_payload_cache;
  assign io_output_aw_payload_qos = cmdOutputFork_payload_qos;
  assign io_output_aw_payload_prot = cmdOutputFork_payload_prot;
  assign io_output_aw_payload_id = {cmdArbiter_io_chosen,cmdArbiter_io_output_payload_id};
  assign cmdRouteFork_translated_valid = cmdRouteFork_valid;
  assign cmdRouteFork_ready = cmdRouteFork_translated_ready;
  assign cmdRouteFork_translated_payload = cmdArbiter_io_chosen;
  assign cmdRouteFork_translated_ready = cmdRouteFork_translated_fifo_io_push_ready;
  assign io_output_w_valid = (cmdRouteFork_translated_fifo_io_pop_valid && _zz_io_output_w_valid);
  assign io_output_w_payload_data = _zz_io_output_w_payload_data;
  assign io_output_w_payload_strb = _zz_io_output_w_payload_strb;
  assign io_output_w_payload_last = _zz_io_output_w_payload_last;
  assign io_inputs_0_w_ready = ((cmdRouteFork_translated_fifo_io_pop_valid && io_output_w_ready) && (cmdRouteFork_translated_fifo_io_pop_payload == 1'b0));
  assign io_inputs_1_w_ready = ((cmdRouteFork_translated_fifo_io_pop_valid && io_output_w_ready) && (cmdRouteFork_translated_fifo_io_pop_payload == 1'b1));
  assign io_output_w_fire = (io_output_w_valid && io_output_w_ready);
  assign cmdRouteFork_translated_fifo_io_pop_ready = (io_output_w_fire && io_output_w_payload_last);
  assign writeRspIndex = io_output_b_payload_id[4 : 4];
  assign writeRspSels_0 = (writeRspIndex == 1'b0);
  assign writeRspSels_1 = (writeRspIndex == 1'b1);
  assign io_inputs_0_b_valid = (io_output_b_valid && writeRspSels_0);
  assign io_inputs_0_b_payload_resp = io_output_b_payload_resp;
  assign io_inputs_0_b_payload_id = io_output_b_payload_id[3 : 0];
  assign io_inputs_1_b_valid = (io_output_b_valid && writeRspSels_1);
  assign io_inputs_1_b_payload_resp = io_output_b_payload_resp;
  assign io_inputs_1_b_payload_id = io_output_b_payload_id[3 : 0];
  assign io_output_b_ready = _zz_io_output_b_ready;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _zz_cmdOutputFork_valid <= 1'b1;
      _zz_cmdRouteFork_valid <= 1'b1;
    end else begin
      if(cmdOutputFork_fire) begin
        _zz_cmdOutputFork_valid <= 1'b0;
      end
      if(cmdRouteFork_fire) begin
        _zz_cmdRouteFork_valid <= 1'b0;
      end
      if(cmdArbiter_io_output_ready) begin
        _zz_cmdOutputFork_valid <= 1'b1;
        _zz_cmdRouteFork_valid <= 1'b1;
      end
    end
  end


endmodule

module Axi4ReadOnlyArbiter (
  input               io_inputs_0_ar_valid,
  output              io_inputs_0_ar_ready,
  input      [63:0]   io_inputs_0_ar_payload_addr,
  input      [3:0]    io_inputs_0_ar_payload_id,
  input      [3:0]    io_inputs_0_ar_payload_region,
  input      [7:0]    io_inputs_0_ar_payload_len,
  input      [2:0]    io_inputs_0_ar_payload_size,
  input      [1:0]    io_inputs_0_ar_payload_burst,
  input      [0:0]    io_inputs_0_ar_payload_lock,
  input      [3:0]    io_inputs_0_ar_payload_cache,
  input      [3:0]    io_inputs_0_ar_payload_qos,
  input      [2:0]    io_inputs_0_ar_payload_prot,
  output              io_inputs_0_r_valid,
  input               io_inputs_0_r_ready,
  output     [511:0]  io_inputs_0_r_payload_data,
  output     [3:0]    io_inputs_0_r_payload_id,
  output     [1:0]    io_inputs_0_r_payload_resp,
  output              io_inputs_0_r_payload_last,
  input               io_inputs_1_ar_valid,
  output              io_inputs_1_ar_ready,
  input      [63:0]   io_inputs_1_ar_payload_addr,
  input      [3:0]    io_inputs_1_ar_payload_id,
  input      [3:0]    io_inputs_1_ar_payload_region,
  input      [7:0]    io_inputs_1_ar_payload_len,
  input      [2:0]    io_inputs_1_ar_payload_size,
  input      [1:0]    io_inputs_1_ar_payload_burst,
  input      [0:0]    io_inputs_1_ar_payload_lock,
  input      [3:0]    io_inputs_1_ar_payload_cache,
  input      [3:0]    io_inputs_1_ar_payload_qos,
  input      [2:0]    io_inputs_1_ar_payload_prot,
  output              io_inputs_1_r_valid,
  input               io_inputs_1_r_ready,
  output     [511:0]  io_inputs_1_r_payload_data,
  output     [3:0]    io_inputs_1_r_payload_id,
  output     [1:0]    io_inputs_1_r_payload_resp,
  output              io_inputs_1_r_payload_last,
  output              io_output_ar_valid,
  input               io_output_ar_ready,
  output     [63:0]   io_output_ar_payload_addr,
  output     [4:0]    io_output_ar_payload_id,
  output     [3:0]    io_output_ar_payload_region,
  output     [7:0]    io_output_ar_payload_len,
  output     [2:0]    io_output_ar_payload_size,
  output     [1:0]    io_output_ar_payload_burst,
  output     [0:0]    io_output_ar_payload_lock,
  output     [3:0]    io_output_ar_payload_cache,
  output     [3:0]    io_output_ar_payload_qos,
  output     [2:0]    io_output_ar_payload_prot,
  input               io_output_r_valid,
  output              io_output_r_ready,
  input      [511:0]  io_output_r_payload_data,
  input      [4:0]    io_output_r_payload_id,
  input      [1:0]    io_output_r_payload_resp,
  input               io_output_r_payload_last,
  input               clk,
  input               reset
);

  wire                cmdArbiter_io_inputs_0_ready;
  wire                cmdArbiter_io_inputs_1_ready;
  wire                cmdArbiter_io_output_valid;
  wire       [63:0]   cmdArbiter_io_output_payload_addr;
  wire       [3:0]    cmdArbiter_io_output_payload_id;
  wire       [3:0]    cmdArbiter_io_output_payload_region;
  wire       [7:0]    cmdArbiter_io_output_payload_len;
  wire       [2:0]    cmdArbiter_io_output_payload_size;
  wire       [1:0]    cmdArbiter_io_output_payload_burst;
  wire       [0:0]    cmdArbiter_io_output_payload_lock;
  wire       [3:0]    cmdArbiter_io_output_payload_cache;
  wire       [3:0]    cmdArbiter_io_output_payload_qos;
  wire       [2:0]    cmdArbiter_io_output_payload_prot;
  wire       [0:0]    cmdArbiter_io_chosen;
  wire       [1:0]    cmdArbiter_io_chosenOH;
  reg                 _zz_io_output_r_ready;
  wire       [0:0]    readRspIndex;
  wire                readRspSels_0;
  wire                readRspSels_1;

  StreamArbiter cmdArbiter (
    .io_inputs_0_valid          (io_inputs_0_ar_valid                    ), //i
    .io_inputs_0_ready          (cmdArbiter_io_inputs_0_ready            ), //o
    .io_inputs_0_payload_addr   (io_inputs_0_ar_payload_addr[63:0]       ), //i
    .io_inputs_0_payload_id     (io_inputs_0_ar_payload_id[3:0]          ), //i
    .io_inputs_0_payload_region (io_inputs_0_ar_payload_region[3:0]      ), //i
    .io_inputs_0_payload_len    (io_inputs_0_ar_payload_len[7:0]         ), //i
    .io_inputs_0_payload_size   (io_inputs_0_ar_payload_size[2:0]        ), //i
    .io_inputs_0_payload_burst  (io_inputs_0_ar_payload_burst[1:0]       ), //i
    .io_inputs_0_payload_lock   (io_inputs_0_ar_payload_lock             ), //i
    .io_inputs_0_payload_cache  (io_inputs_0_ar_payload_cache[3:0]       ), //i
    .io_inputs_0_payload_qos    (io_inputs_0_ar_payload_qos[3:0]         ), //i
    .io_inputs_0_payload_prot   (io_inputs_0_ar_payload_prot[2:0]        ), //i
    .io_inputs_1_valid          (io_inputs_1_ar_valid                    ), //i
    .io_inputs_1_ready          (cmdArbiter_io_inputs_1_ready            ), //o
    .io_inputs_1_payload_addr   (io_inputs_1_ar_payload_addr[63:0]       ), //i
    .io_inputs_1_payload_id     (io_inputs_1_ar_payload_id[3:0]          ), //i
    .io_inputs_1_payload_region (io_inputs_1_ar_payload_region[3:0]      ), //i
    .io_inputs_1_payload_len    (io_inputs_1_ar_payload_len[7:0]         ), //i
    .io_inputs_1_payload_size   (io_inputs_1_ar_payload_size[2:0]        ), //i
    .io_inputs_1_payload_burst  (io_inputs_1_ar_payload_burst[1:0]       ), //i
    .io_inputs_1_payload_lock   (io_inputs_1_ar_payload_lock             ), //i
    .io_inputs_1_payload_cache  (io_inputs_1_ar_payload_cache[3:0]       ), //i
    .io_inputs_1_payload_qos    (io_inputs_1_ar_payload_qos[3:0]         ), //i
    .io_inputs_1_payload_prot   (io_inputs_1_ar_payload_prot[2:0]        ), //i
    .io_output_valid            (cmdArbiter_io_output_valid              ), //o
    .io_output_ready            (io_output_ar_ready                      ), //i
    .io_output_payload_addr     (cmdArbiter_io_output_payload_addr[63:0] ), //o
    .io_output_payload_id       (cmdArbiter_io_output_payload_id[3:0]    ), //o
    .io_output_payload_region   (cmdArbiter_io_output_payload_region[3:0]), //o
    .io_output_payload_len      (cmdArbiter_io_output_payload_len[7:0]   ), //o
    .io_output_payload_size     (cmdArbiter_io_output_payload_size[2:0]  ), //o
    .io_output_payload_burst    (cmdArbiter_io_output_payload_burst[1:0] ), //o
    .io_output_payload_lock     (cmdArbiter_io_output_payload_lock       ), //o
    .io_output_payload_cache    (cmdArbiter_io_output_payload_cache[3:0] ), //o
    .io_output_payload_qos      (cmdArbiter_io_output_payload_qos[3:0]   ), //o
    .io_output_payload_prot     (cmdArbiter_io_output_payload_prot[2:0]  ), //o
    .io_chosen                  (cmdArbiter_io_chosen                    ), //o
    .io_chosenOH                (cmdArbiter_io_chosenOH[1:0]             ), //o
    .clk                        (clk                                     ), //i
    .reset                      (reset                                   )  //i
  );
  always @(*) begin
    case(readRspIndex)
      1'b0 : _zz_io_output_r_ready = io_inputs_0_r_ready;
      default : _zz_io_output_r_ready = io_inputs_1_r_ready;
    endcase
  end

  assign io_inputs_0_ar_ready = cmdArbiter_io_inputs_0_ready;
  assign io_inputs_1_ar_ready = cmdArbiter_io_inputs_1_ready;
  assign io_output_ar_valid = cmdArbiter_io_output_valid;
  assign io_output_ar_payload_addr = cmdArbiter_io_output_payload_addr;
  assign io_output_ar_payload_region = cmdArbiter_io_output_payload_region;
  assign io_output_ar_payload_len = cmdArbiter_io_output_payload_len;
  assign io_output_ar_payload_size = cmdArbiter_io_output_payload_size;
  assign io_output_ar_payload_burst = cmdArbiter_io_output_payload_burst;
  assign io_output_ar_payload_lock = cmdArbiter_io_output_payload_lock;
  assign io_output_ar_payload_cache = cmdArbiter_io_output_payload_cache;
  assign io_output_ar_payload_qos = cmdArbiter_io_output_payload_qos;
  assign io_output_ar_payload_prot = cmdArbiter_io_output_payload_prot;
  assign io_output_ar_payload_id = {cmdArbiter_io_chosen,cmdArbiter_io_output_payload_id};
  assign readRspIndex = io_output_r_payload_id[4 : 4];
  assign readRspSels_0 = (readRspIndex == 1'b0);
  assign readRspSels_1 = (readRspIndex == 1'b1);
  assign io_inputs_0_r_valid = (io_output_r_valid && readRspSels_0);
  assign io_inputs_0_r_payload_data = io_output_r_payload_data;
  assign io_inputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_inputs_0_r_payload_last = io_output_r_payload_last;
  assign io_inputs_0_r_payload_id = io_output_r_payload_id[3 : 0];
  assign io_inputs_1_r_valid = (io_output_r_valid && readRspSels_1);
  assign io_inputs_1_r_payload_data = io_output_r_payload_data;
  assign io_inputs_1_r_payload_resp = io_output_r_payload_resp;
  assign io_inputs_1_r_payload_last = io_output_r_payload_last;
  assign io_inputs_1_r_payload_id = io_output_r_payload_id[3 : 0];
  assign io_output_r_ready = _zz_io_output_r_ready;

endmodule

//Axi4WriteOnlyDecoder replaced by Axi4WriteOnlyDecoder

//Axi4ReadOnlyDecoder replaced by Axi4ReadOnlyDecoder

module Axi4WriteOnlyDecoder (
  input               io_input_aw_valid,
  output              io_input_aw_ready,
  input      [63:0]   io_input_aw_payload_addr,
  input      [3:0]    io_input_aw_payload_id,
  input      [3:0]    io_input_aw_payload_region,
  input      [7:0]    io_input_aw_payload_len,
  input      [2:0]    io_input_aw_payload_size,
  input      [1:0]    io_input_aw_payload_burst,
  input      [0:0]    io_input_aw_payload_lock,
  input      [3:0]    io_input_aw_payload_cache,
  input      [3:0]    io_input_aw_payload_qos,
  input      [2:0]    io_input_aw_payload_prot,
  input               io_input_w_valid,
  output              io_input_w_ready,
  input      [511:0]  io_input_w_payload_data,
  input      [63:0]   io_input_w_payload_strb,
  input               io_input_w_payload_last,
  output              io_input_b_valid,
  input               io_input_b_ready,
  output reg [3:0]    io_input_b_payload_id,
  output reg [1:0]    io_input_b_payload_resp,
  output              io_outputs_0_aw_valid,
  input               io_outputs_0_aw_ready,
  output     [63:0]   io_outputs_0_aw_payload_addr,
  output     [3:0]    io_outputs_0_aw_payload_id,
  output     [3:0]    io_outputs_0_aw_payload_region,
  output     [7:0]    io_outputs_0_aw_payload_len,
  output     [2:0]    io_outputs_0_aw_payload_size,
  output     [1:0]    io_outputs_0_aw_payload_burst,
  output     [0:0]    io_outputs_0_aw_payload_lock,
  output     [3:0]    io_outputs_0_aw_payload_cache,
  output     [3:0]    io_outputs_0_aw_payload_qos,
  output     [2:0]    io_outputs_0_aw_payload_prot,
  output              io_outputs_0_w_valid,
  input               io_outputs_0_w_ready,
  output     [511:0]  io_outputs_0_w_payload_data,
  output     [63:0]   io_outputs_0_w_payload_strb,
  output              io_outputs_0_w_payload_last,
  input               io_outputs_0_b_valid,
  output              io_outputs_0_b_ready,
  input      [3:0]    io_outputs_0_b_payload_id,
  input      [1:0]    io_outputs_0_b_payload_resp,
  output              io_outputs_1_aw_valid,
  input               io_outputs_1_aw_ready,
  output     [63:0]   io_outputs_1_aw_payload_addr,
  output     [3:0]    io_outputs_1_aw_payload_id,
  output     [3:0]    io_outputs_1_aw_payload_region,
  output     [7:0]    io_outputs_1_aw_payload_len,
  output     [2:0]    io_outputs_1_aw_payload_size,
  output     [1:0]    io_outputs_1_aw_payload_burst,
  output     [0:0]    io_outputs_1_aw_payload_lock,
  output     [3:0]    io_outputs_1_aw_payload_cache,
  output     [3:0]    io_outputs_1_aw_payload_qos,
  output     [2:0]    io_outputs_1_aw_payload_prot,
  output              io_outputs_1_w_valid,
  input               io_outputs_1_w_ready,
  output     [511:0]  io_outputs_1_w_payload_data,
  output     [63:0]   io_outputs_1_w_payload_strb,
  output              io_outputs_1_w_payload_last,
  input               io_outputs_1_b_valid,
  output              io_outputs_1_b_ready,
  input      [3:0]    io_outputs_1_b_payload_id,
  input      [1:0]    io_outputs_1_b_payload_resp,
  input               clk,
  input               reset
);

  wire                errorSlave_io_axi_aw_valid;
  wire                errorSlave_io_axi_w_valid;
  wire                errorSlave_io_axi_aw_ready;
  wire                errorSlave_io_axi_w_ready;
  wire                errorSlave_io_axi_b_valid;
  wire       [3:0]    errorSlave_io_axi_b_payload_id;
  wire       [1:0]    errorSlave_io_axi_b_payload_resp;
  wire                cmdAllowedStart;
  wire                io_input_aw_fire;
  wire                io_input_b_fire;
  reg                 pendingCmdCounter_incrementIt;
  reg                 pendingCmdCounter_decrementIt;
  wire       [2:0]    pendingCmdCounter_valueNext;
  reg        [2:0]    pendingCmdCounter_value;
  wire                pendingCmdCounter_willOverflowIfInc;
  wire                pendingCmdCounter_willOverflow;
  reg        [2:0]    pendingCmdCounter_finalIncrement;
  wire                when_Utils_l652;
  wire                when_Utils_l654;
  wire                io_input_w_fire;
  wire                when_Utils_l627;
  reg                 pendingDataCounter_incrementIt;
  reg                 pendingDataCounter_decrementIt;
  wire       [2:0]    pendingDataCounter_valueNext;
  reg        [2:0]    pendingDataCounter_value;
  wire                pendingDataCounter_willOverflowIfInc;
  wire                pendingDataCounter_willOverflow;
  reg        [2:0]    pendingDataCounter_finalIncrement;
  wire                when_Utils_l652_1;
  wire                when_Utils_l654_1;
  wire       [1:0]    decodedCmdSels;
  wire                decodedCmdError;
  reg        [1:0]    pendingSels;
  reg                 pendingError;
  wire                allowCmd;
  wire                allowData;
  reg                 _zz_cmdAllowedStart;
  wire                _zz_io_input_b_payload_id;
  wire                _zz_io_outputs_1_w_valid;
  wire       [0:0]    writeRspIndex;

  Axi4WriteOnlyErrorSlave errorSlave (
    .io_axi_aw_valid          (errorSlave_io_axi_aw_valid           ), //i
    .io_axi_aw_ready          (errorSlave_io_axi_aw_ready           ), //o
    .io_axi_aw_payload_addr   (io_input_aw_payload_addr[63:0]       ), //i
    .io_axi_aw_payload_id     (io_input_aw_payload_id[3:0]          ), //i
    .io_axi_aw_payload_region (io_input_aw_payload_region[3:0]      ), //i
    .io_axi_aw_payload_len    (io_input_aw_payload_len[7:0]         ), //i
    .io_axi_aw_payload_size   (io_input_aw_payload_size[2:0]        ), //i
    .io_axi_aw_payload_burst  (io_input_aw_payload_burst[1:0]       ), //i
    .io_axi_aw_payload_lock   (io_input_aw_payload_lock             ), //i
    .io_axi_aw_payload_cache  (io_input_aw_payload_cache[3:0]       ), //i
    .io_axi_aw_payload_qos    (io_input_aw_payload_qos[3:0]         ), //i
    .io_axi_aw_payload_prot   (io_input_aw_payload_prot[2:0]        ), //i
    .io_axi_w_valid           (errorSlave_io_axi_w_valid            ), //i
    .io_axi_w_ready           (errorSlave_io_axi_w_ready            ), //o
    .io_axi_w_payload_data    (io_input_w_payload_data[511:0]       ), //i
    .io_axi_w_payload_strb    (io_input_w_payload_strb[63:0]        ), //i
    .io_axi_w_payload_last    (io_input_w_payload_last              ), //i
    .io_axi_b_valid           (errorSlave_io_axi_b_valid            ), //o
    .io_axi_b_ready           (io_input_b_ready                     ), //i
    .io_axi_b_payload_id      (errorSlave_io_axi_b_payload_id[3:0]  ), //o
    .io_axi_b_payload_resp    (errorSlave_io_axi_b_payload_resp[1:0]), //o
    .clk                      (clk                                  ), //i
    .reset                    (reset                                )  //i
  );
  assign io_input_aw_fire = (io_input_aw_valid && io_input_aw_ready);
  assign io_input_b_fire = (io_input_b_valid && io_input_b_ready);
  always @(*) begin
    pendingCmdCounter_incrementIt = 1'b0;
    if(io_input_aw_fire) begin
      pendingCmdCounter_incrementIt = 1'b1;
    end
  end

  always @(*) begin
    pendingCmdCounter_decrementIt = 1'b0;
    if(io_input_b_fire) begin
      pendingCmdCounter_decrementIt = 1'b1;
    end
  end

  assign pendingCmdCounter_willOverflowIfInc = ((pendingCmdCounter_value == 3'b111) && (! pendingCmdCounter_decrementIt));
  assign pendingCmdCounter_willOverflow = (pendingCmdCounter_willOverflowIfInc && pendingCmdCounter_incrementIt);
  assign when_Utils_l652 = (pendingCmdCounter_incrementIt && (! pendingCmdCounter_decrementIt));
  always @(*) begin
    if(when_Utils_l652) begin
      pendingCmdCounter_finalIncrement = 3'b001;
    end else begin
      if(when_Utils_l654) begin
        pendingCmdCounter_finalIncrement = 3'b111;
      end else begin
        pendingCmdCounter_finalIncrement = 3'b000;
      end
    end
  end

  assign when_Utils_l654 = ((! pendingCmdCounter_incrementIt) && pendingCmdCounter_decrementIt);
  assign pendingCmdCounter_valueNext = (pendingCmdCounter_value + pendingCmdCounter_finalIncrement);
  assign io_input_w_fire = (io_input_w_valid && io_input_w_ready);
  assign when_Utils_l627 = (io_input_w_fire && io_input_w_payload_last);
  always @(*) begin
    pendingDataCounter_incrementIt = 1'b0;
    if(cmdAllowedStart) begin
      pendingDataCounter_incrementIt = 1'b1;
    end
  end

  always @(*) begin
    pendingDataCounter_decrementIt = 1'b0;
    if(when_Utils_l627) begin
      pendingDataCounter_decrementIt = 1'b1;
    end
  end

  assign pendingDataCounter_willOverflowIfInc = ((pendingDataCounter_value == 3'b111) && (! pendingDataCounter_decrementIt));
  assign pendingDataCounter_willOverflow = (pendingDataCounter_willOverflowIfInc && pendingDataCounter_incrementIt);
  assign when_Utils_l652_1 = (pendingDataCounter_incrementIt && (! pendingDataCounter_decrementIt));
  always @(*) begin
    if(when_Utils_l652_1) begin
      pendingDataCounter_finalIncrement = 3'b001;
    end else begin
      if(when_Utils_l654_1) begin
        pendingDataCounter_finalIncrement = 3'b111;
      end else begin
        pendingDataCounter_finalIncrement = 3'b000;
      end
    end
  end

  assign when_Utils_l654_1 = ((! pendingDataCounter_incrementIt) && pendingDataCounter_decrementIt);
  assign pendingDataCounter_valueNext = (pendingDataCounter_value + pendingDataCounter_finalIncrement);
  assign decodedCmdSels = {(((io_input_aw_payload_addr & (~ 64'h000000003fffffff)) == 64'h0000000040000000) && io_input_aw_valid),(((io_input_aw_payload_addr & (~ 64'h000000003fffffff)) == 64'h0) && io_input_aw_valid)};
  assign decodedCmdError = (decodedCmdSels == 2'b00);
  assign allowCmd = ((pendingCmdCounter_value == 3'b000) || ((pendingCmdCounter_value != 3'b111) && (pendingSels == decodedCmdSels)));
  assign allowData = (pendingDataCounter_value != 3'b000);
  assign cmdAllowedStart = ((io_input_aw_valid && allowCmd) && _zz_cmdAllowedStart);
  assign io_input_aw_ready = (((|(decodedCmdSels & {io_outputs_1_aw_ready,io_outputs_0_aw_ready})) || (decodedCmdError && errorSlave_io_axi_aw_ready)) && allowCmd);
  assign errorSlave_io_axi_aw_valid = ((io_input_aw_valid && decodedCmdError) && allowCmd);
  assign io_outputs_0_aw_valid = ((io_input_aw_valid && decodedCmdSels[0]) && allowCmd);
  assign io_outputs_0_aw_payload_addr = io_input_aw_payload_addr;
  assign io_outputs_0_aw_payload_id = io_input_aw_payload_id;
  assign io_outputs_0_aw_payload_region = io_input_aw_payload_region;
  assign io_outputs_0_aw_payload_len = io_input_aw_payload_len;
  assign io_outputs_0_aw_payload_size = io_input_aw_payload_size;
  assign io_outputs_0_aw_payload_burst = io_input_aw_payload_burst;
  assign io_outputs_0_aw_payload_lock = io_input_aw_payload_lock;
  assign io_outputs_0_aw_payload_cache = io_input_aw_payload_cache;
  assign io_outputs_0_aw_payload_qos = io_input_aw_payload_qos;
  assign io_outputs_0_aw_payload_prot = io_input_aw_payload_prot;
  assign io_outputs_1_aw_valid = ((io_input_aw_valid && decodedCmdSels[1]) && allowCmd);
  assign io_outputs_1_aw_payload_addr = io_input_aw_payload_addr;
  assign io_outputs_1_aw_payload_id = io_input_aw_payload_id;
  assign io_outputs_1_aw_payload_region = io_input_aw_payload_region;
  assign io_outputs_1_aw_payload_len = io_input_aw_payload_len;
  assign io_outputs_1_aw_payload_size = io_input_aw_payload_size;
  assign io_outputs_1_aw_payload_burst = io_input_aw_payload_burst;
  assign io_outputs_1_aw_payload_lock = io_input_aw_payload_lock;
  assign io_outputs_1_aw_payload_cache = io_input_aw_payload_cache;
  assign io_outputs_1_aw_payload_qos = io_input_aw_payload_qos;
  assign io_outputs_1_aw_payload_prot = io_input_aw_payload_prot;
  assign io_input_w_ready = (((|(pendingSels & {io_outputs_1_w_ready,io_outputs_0_w_ready})) || (pendingError && errorSlave_io_axi_w_ready)) && allowData);
  assign errorSlave_io_axi_w_valid = ((io_input_w_valid && pendingError) && allowData);
  assign _zz_io_input_b_payload_id = pendingSels[0];
  assign _zz_io_outputs_1_w_valid = pendingSels[1];
  assign io_outputs_0_w_valid = ((io_input_w_valid && _zz_io_input_b_payload_id) && allowData);
  assign io_outputs_0_w_payload_data = io_input_w_payload_data;
  assign io_outputs_0_w_payload_strb = io_input_w_payload_strb;
  assign io_outputs_0_w_payload_last = io_input_w_payload_last;
  assign io_outputs_1_w_valid = ((io_input_w_valid && _zz_io_outputs_1_w_valid) && allowData);
  assign io_outputs_1_w_payload_data = io_input_w_payload_data;
  assign io_outputs_1_w_payload_strb = io_input_w_payload_strb;
  assign io_outputs_1_w_payload_last = io_input_w_payload_last;
  assign writeRspIndex = _zz_io_outputs_1_w_valid;
  assign io_input_b_valid = ((|{io_outputs_1_b_valid,io_outputs_0_b_valid}) || errorSlave_io_axi_b_valid);
  always @(*) begin
    io_input_b_payload_id = (_zz_io_input_b_payload_id ? io_outputs_0_b_payload_id : io_outputs_1_b_payload_id);
    if(pendingError) begin
      io_input_b_payload_id = errorSlave_io_axi_b_payload_id;
    end
  end

  always @(*) begin
    io_input_b_payload_resp = (_zz_io_input_b_payload_id ? io_outputs_0_b_payload_resp : io_outputs_1_b_payload_resp);
    if(pendingError) begin
      io_input_b_payload_resp = errorSlave_io_axi_b_payload_resp;
    end
  end

  assign io_outputs_0_b_ready = io_input_b_ready;
  assign io_outputs_1_b_ready = io_input_b_ready;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      pendingCmdCounter_value <= 3'b000;
      pendingDataCounter_value <= 3'b000;
      pendingSels <= 2'b00;
      pendingError <= 1'b0;
      _zz_cmdAllowedStart <= 1'b1;
    end else begin
      pendingCmdCounter_value <= pendingCmdCounter_valueNext;
      pendingDataCounter_value <= pendingDataCounter_valueNext;
      if(cmdAllowedStart) begin
        pendingSels <= decodedCmdSels;
      end
      if(cmdAllowedStart) begin
        pendingError <= decodedCmdError;
      end
      if(cmdAllowedStart) begin
        _zz_cmdAllowedStart <= 1'b0;
      end
      if(io_input_aw_ready) begin
        _zz_cmdAllowedStart <= 1'b1;
      end
    end
  end


endmodule

module Axi4ReadOnlyDecoder (
  input               io_input_ar_valid,
  output              io_input_ar_ready,
  input      [63:0]   io_input_ar_payload_addr,
  input      [3:0]    io_input_ar_payload_id,
  input      [3:0]    io_input_ar_payload_region,
  input      [7:0]    io_input_ar_payload_len,
  input      [2:0]    io_input_ar_payload_size,
  input      [1:0]    io_input_ar_payload_burst,
  input      [0:0]    io_input_ar_payload_lock,
  input      [3:0]    io_input_ar_payload_cache,
  input      [3:0]    io_input_ar_payload_qos,
  input      [2:0]    io_input_ar_payload_prot,
  output reg          io_input_r_valid,
  input               io_input_r_ready,
  output     [511:0]  io_input_r_payload_data,
  output reg [3:0]    io_input_r_payload_id,
  output reg [1:0]    io_input_r_payload_resp,
  output reg          io_input_r_payload_last,
  output              io_outputs_0_ar_valid,
  input               io_outputs_0_ar_ready,
  output     [63:0]   io_outputs_0_ar_payload_addr,
  output     [3:0]    io_outputs_0_ar_payload_id,
  output     [3:0]    io_outputs_0_ar_payload_region,
  output     [7:0]    io_outputs_0_ar_payload_len,
  output     [2:0]    io_outputs_0_ar_payload_size,
  output     [1:0]    io_outputs_0_ar_payload_burst,
  output     [0:0]    io_outputs_0_ar_payload_lock,
  output     [3:0]    io_outputs_0_ar_payload_cache,
  output     [3:0]    io_outputs_0_ar_payload_qos,
  output     [2:0]    io_outputs_0_ar_payload_prot,
  input               io_outputs_0_r_valid,
  output              io_outputs_0_r_ready,
  input      [511:0]  io_outputs_0_r_payload_data,
  input      [3:0]    io_outputs_0_r_payload_id,
  input      [1:0]    io_outputs_0_r_payload_resp,
  input               io_outputs_0_r_payload_last,
  output              io_outputs_1_ar_valid,
  input               io_outputs_1_ar_ready,
  output     [63:0]   io_outputs_1_ar_payload_addr,
  output     [3:0]    io_outputs_1_ar_payload_id,
  output     [3:0]    io_outputs_1_ar_payload_region,
  output     [7:0]    io_outputs_1_ar_payload_len,
  output     [2:0]    io_outputs_1_ar_payload_size,
  output     [1:0]    io_outputs_1_ar_payload_burst,
  output     [0:0]    io_outputs_1_ar_payload_lock,
  output     [3:0]    io_outputs_1_ar_payload_cache,
  output     [3:0]    io_outputs_1_ar_payload_qos,
  output     [2:0]    io_outputs_1_ar_payload_prot,
  input               io_outputs_1_r_valid,
  output              io_outputs_1_r_ready,
  input      [511:0]  io_outputs_1_r_payload_data,
  input      [3:0]    io_outputs_1_r_payload_id,
  input      [1:0]    io_outputs_1_r_payload_resp,
  input               io_outputs_1_r_payload_last,
  input               clk,
  input               reset
);

  wire                errorSlave_io_axi_ar_valid;
  wire                errorSlave_io_axi_ar_ready;
  wire                errorSlave_io_axi_r_valid;
  wire       [511:0]  errorSlave_io_axi_r_payload_data;
  wire       [3:0]    errorSlave_io_axi_r_payload_id;
  wire       [1:0]    errorSlave_io_axi_r_payload_resp;
  wire                errorSlave_io_axi_r_payload_last;
  wire                io_input_ar_fire;
  wire                io_input_r_fire;
  wire                when_Utils_l627;
  reg                 pendingCmdCounter_incrementIt;
  reg                 pendingCmdCounter_decrementIt;
  wire       [2:0]    pendingCmdCounter_valueNext;
  reg        [2:0]    pendingCmdCounter_value;
  wire                pendingCmdCounter_willOverflowIfInc;
  wire                pendingCmdCounter_willOverflow;
  reg        [2:0]    pendingCmdCounter_finalIncrement;
  wire                when_Utils_l652;
  wire                when_Utils_l654;
  wire       [1:0]    decodedCmdSels;
  wire                decodedCmdError;
  reg        [1:0]    pendingSels;
  reg                 pendingError;
  wire                allowCmd;
  wire                _zz_io_input_r_payload_data;
  wire                _zz_readRspIndex;
  wire       [0:0]    readRspIndex;

  Axi4ReadOnlyErrorSlave errorSlave (
    .io_axi_ar_valid          (errorSlave_io_axi_ar_valid             ), //i
    .io_axi_ar_ready          (errorSlave_io_axi_ar_ready             ), //o
    .io_axi_ar_payload_addr   (io_input_ar_payload_addr[63:0]         ), //i
    .io_axi_ar_payload_id     (io_input_ar_payload_id[3:0]            ), //i
    .io_axi_ar_payload_region (io_input_ar_payload_region[3:0]        ), //i
    .io_axi_ar_payload_len    (io_input_ar_payload_len[7:0]           ), //i
    .io_axi_ar_payload_size   (io_input_ar_payload_size[2:0]          ), //i
    .io_axi_ar_payload_burst  (io_input_ar_payload_burst[1:0]         ), //i
    .io_axi_ar_payload_lock   (io_input_ar_payload_lock               ), //i
    .io_axi_ar_payload_cache  (io_input_ar_payload_cache[3:0]         ), //i
    .io_axi_ar_payload_qos    (io_input_ar_payload_qos[3:0]           ), //i
    .io_axi_ar_payload_prot   (io_input_ar_payload_prot[2:0]          ), //i
    .io_axi_r_valid           (errorSlave_io_axi_r_valid              ), //o
    .io_axi_r_ready           (io_input_r_ready                       ), //i
    .io_axi_r_payload_data    (errorSlave_io_axi_r_payload_data[511:0]), //o
    .io_axi_r_payload_id      (errorSlave_io_axi_r_payload_id[3:0]    ), //o
    .io_axi_r_payload_resp    (errorSlave_io_axi_r_payload_resp[1:0]  ), //o
    .io_axi_r_payload_last    (errorSlave_io_axi_r_payload_last       ), //o
    .clk                      (clk                                    ), //i
    .reset                    (reset                                  )  //i
  );
  assign io_input_ar_fire = (io_input_ar_valid && io_input_ar_ready);
  assign io_input_r_fire = (io_input_r_valid && io_input_r_ready);
  assign when_Utils_l627 = (io_input_r_fire && io_input_r_payload_last);
  always @(*) begin
    pendingCmdCounter_incrementIt = 1'b0;
    if(io_input_ar_fire) begin
      pendingCmdCounter_incrementIt = 1'b1;
    end
  end

  always @(*) begin
    pendingCmdCounter_decrementIt = 1'b0;
    if(when_Utils_l627) begin
      pendingCmdCounter_decrementIt = 1'b1;
    end
  end

  assign pendingCmdCounter_willOverflowIfInc = ((pendingCmdCounter_value == 3'b111) && (! pendingCmdCounter_decrementIt));
  assign pendingCmdCounter_willOverflow = (pendingCmdCounter_willOverflowIfInc && pendingCmdCounter_incrementIt);
  assign when_Utils_l652 = (pendingCmdCounter_incrementIt && (! pendingCmdCounter_decrementIt));
  always @(*) begin
    if(when_Utils_l652) begin
      pendingCmdCounter_finalIncrement = 3'b001;
    end else begin
      if(when_Utils_l654) begin
        pendingCmdCounter_finalIncrement = 3'b111;
      end else begin
        pendingCmdCounter_finalIncrement = 3'b000;
      end
    end
  end

  assign when_Utils_l654 = ((! pendingCmdCounter_incrementIt) && pendingCmdCounter_decrementIt);
  assign pendingCmdCounter_valueNext = (pendingCmdCounter_value + pendingCmdCounter_finalIncrement);
  assign decodedCmdSels = {(((io_input_ar_payload_addr & (~ 64'h000000003fffffff)) == 64'h0000000040000000) && io_input_ar_valid),(((io_input_ar_payload_addr & (~ 64'h000000003fffffff)) == 64'h0) && io_input_ar_valid)};
  assign decodedCmdError = (decodedCmdSels == 2'b00);
  assign allowCmd = ((pendingCmdCounter_value == 3'b000) || ((pendingCmdCounter_value != 3'b111) && (pendingSels == decodedCmdSels)));
  assign io_input_ar_ready = (((|(decodedCmdSels & {io_outputs_1_ar_ready,io_outputs_0_ar_ready})) || (decodedCmdError && errorSlave_io_axi_ar_ready)) && allowCmd);
  assign errorSlave_io_axi_ar_valid = ((io_input_ar_valid && decodedCmdError) && allowCmd);
  assign io_outputs_0_ar_valid = ((io_input_ar_valid && decodedCmdSels[0]) && allowCmd);
  assign io_outputs_0_ar_payload_addr = io_input_ar_payload_addr;
  assign io_outputs_0_ar_payload_id = io_input_ar_payload_id;
  assign io_outputs_0_ar_payload_region = io_input_ar_payload_region;
  assign io_outputs_0_ar_payload_len = io_input_ar_payload_len;
  assign io_outputs_0_ar_payload_size = io_input_ar_payload_size;
  assign io_outputs_0_ar_payload_burst = io_input_ar_payload_burst;
  assign io_outputs_0_ar_payload_lock = io_input_ar_payload_lock;
  assign io_outputs_0_ar_payload_cache = io_input_ar_payload_cache;
  assign io_outputs_0_ar_payload_qos = io_input_ar_payload_qos;
  assign io_outputs_0_ar_payload_prot = io_input_ar_payload_prot;
  assign io_outputs_1_ar_valid = ((io_input_ar_valid && decodedCmdSels[1]) && allowCmd);
  assign io_outputs_1_ar_payload_addr = io_input_ar_payload_addr;
  assign io_outputs_1_ar_payload_id = io_input_ar_payload_id;
  assign io_outputs_1_ar_payload_region = io_input_ar_payload_region;
  assign io_outputs_1_ar_payload_len = io_input_ar_payload_len;
  assign io_outputs_1_ar_payload_size = io_input_ar_payload_size;
  assign io_outputs_1_ar_payload_burst = io_input_ar_payload_burst;
  assign io_outputs_1_ar_payload_lock = io_input_ar_payload_lock;
  assign io_outputs_1_ar_payload_cache = io_input_ar_payload_cache;
  assign io_outputs_1_ar_payload_qos = io_input_ar_payload_qos;
  assign io_outputs_1_ar_payload_prot = io_input_ar_payload_prot;
  assign _zz_io_input_r_payload_data = pendingSels[0];
  assign _zz_readRspIndex = pendingSels[1];
  assign readRspIndex = _zz_readRspIndex;
  always @(*) begin
    io_input_r_valid = (|{io_outputs_1_r_valid,io_outputs_0_r_valid});
    if(errorSlave_io_axi_r_valid) begin
      io_input_r_valid = 1'b1;
    end
  end

  assign io_input_r_payload_data = (_zz_io_input_r_payload_data ? io_outputs_0_r_payload_data : io_outputs_1_r_payload_data);
  always @(*) begin
    io_input_r_payload_id = (_zz_io_input_r_payload_data ? io_outputs_0_r_payload_id : io_outputs_1_r_payload_id);
    if(pendingError) begin
      io_input_r_payload_id = errorSlave_io_axi_r_payload_id;
    end
  end

  always @(*) begin
    io_input_r_payload_resp = (_zz_io_input_r_payload_data ? io_outputs_0_r_payload_resp : io_outputs_1_r_payload_resp);
    if(pendingError) begin
      io_input_r_payload_resp = errorSlave_io_axi_r_payload_resp;
    end
  end

  always @(*) begin
    io_input_r_payload_last = (_zz_io_input_r_payload_data ? io_outputs_0_r_payload_last : io_outputs_1_r_payload_last);
    if(pendingError) begin
      io_input_r_payload_last = errorSlave_io_axi_r_payload_last;
    end
  end

  assign io_outputs_0_r_ready = io_input_r_ready;
  assign io_outputs_1_r_ready = io_input_r_ready;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      pendingCmdCounter_value <= 3'b000;
      pendingSels <= 2'b00;
      pendingError <= 1'b0;
    end else begin
      pendingCmdCounter_value <= pendingCmdCounter_valueNext;
      if(io_input_ar_ready) begin
        pendingSels <= decodedCmdSels;
      end
      if(io_input_ar_ready) begin
        pendingError <= decodedCmdError;
      end
    end
  end


endmodule

//StreamFifoLowLatency replaced by StreamFifoLowLatency

//StreamArbiter replaced by StreamArbiter

//StreamArbiter replaced by StreamArbiter

module StreamFifoLowLatency (
  input               io_push_valid,
  output              io_push_ready,
  input      [0:0]    io_push_payload,
  output reg          io_pop_valid,
  input               io_pop_ready,
  output reg [0:0]    io_pop_payload,
  input               io_flush,
  output     [2:0]    io_occupancy,
  input               clk,
  input               reset
);

  wire       [0:0]    _zz_ram_port0;
  wire       [1:0]    _zz_pushPtr_valueNext;
  wire       [0:0]    _zz_pushPtr_valueNext_1;
  wire       [1:0]    _zz_popPtr_valueNext;
  wire       [0:0]    _zz_popPtr_valueNext_1;
  wire       [0:0]    _zz_ram_port;
  reg                 _zz_1;
  reg                 pushPtr_willIncrement;
  reg                 pushPtr_willClear;
  reg        [1:0]    pushPtr_valueNext;
  reg        [1:0]    pushPtr_value;
  wire                pushPtr_willOverflowIfInc;
  wire                pushPtr_willOverflow;
  reg                 popPtr_willIncrement;
  reg                 popPtr_willClear;
  reg        [1:0]    popPtr_valueNext;
  reg        [1:0]    popPtr_value;
  wire                popPtr_willOverflowIfInc;
  wire                popPtr_willOverflow;
  wire                ptrMatch;
  reg                 risingOccupancy;
  wire                empty;
  wire                full;
  wire                pushing;
  wire                popping;
  wire       [0:0]    readed;
  wire                when_Stream_l1178;
  wire                when_Stream_l1191;
  wire       [1:0]    ptrDif;
  (* ram_style = "distributed" *) reg [0:0] ram [0:3];

  assign _zz_pushPtr_valueNext_1 = pushPtr_willIncrement;
  assign _zz_pushPtr_valueNext = {1'd0, _zz_pushPtr_valueNext_1};
  assign _zz_popPtr_valueNext_1 = popPtr_willIncrement;
  assign _zz_popPtr_valueNext = {1'd0, _zz_popPtr_valueNext_1};
  assign _zz_ram_port = io_push_payload;
  assign _zz_ram_port0 = ram[popPtr_value];
  always @(posedge clk) begin
    if(_zz_1) begin
      ram[pushPtr_value] <= _zz_ram_port;
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(pushing) begin
      _zz_1 = 1'b1;
    end
  end

  always @(*) begin
    pushPtr_willIncrement = 1'b0;
    if(pushing) begin
      pushPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    pushPtr_willClear = 1'b0;
    if(io_flush) begin
      pushPtr_willClear = 1'b1;
    end
  end

  assign pushPtr_willOverflowIfInc = (pushPtr_value == 2'b11);
  assign pushPtr_willOverflow = (pushPtr_willOverflowIfInc && pushPtr_willIncrement);
  always @(*) begin
    pushPtr_valueNext = (pushPtr_value + _zz_pushPtr_valueNext);
    if(pushPtr_willClear) begin
      pushPtr_valueNext = 2'b00;
    end
  end

  always @(*) begin
    popPtr_willIncrement = 1'b0;
    if(popping) begin
      popPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    popPtr_willClear = 1'b0;
    if(io_flush) begin
      popPtr_willClear = 1'b1;
    end
  end

  assign popPtr_willOverflowIfInc = (popPtr_value == 2'b11);
  assign popPtr_willOverflow = (popPtr_willOverflowIfInc && popPtr_willIncrement);
  always @(*) begin
    popPtr_valueNext = (popPtr_value + _zz_popPtr_valueNext);
    if(popPtr_willClear) begin
      popPtr_valueNext = 2'b00;
    end
  end

  assign ptrMatch = (pushPtr_value == popPtr_value);
  assign empty = (ptrMatch && (! risingOccupancy));
  assign full = (ptrMatch && risingOccupancy);
  assign pushing = (io_push_valid && io_push_ready);
  assign popping = (io_pop_valid && io_pop_ready);
  assign io_push_ready = (! full);
  assign readed = _zz_ram_port0;
  assign when_Stream_l1178 = (! empty);
  always @(*) begin
    if(when_Stream_l1178) begin
      io_pop_valid = 1'b1;
    end else begin
      io_pop_valid = io_push_valid;
    end
  end

  always @(*) begin
    if(when_Stream_l1178) begin
      io_pop_payload = readed;
    end else begin
      io_pop_payload = io_push_payload;
    end
  end

  assign when_Stream_l1191 = (pushing != popping);
  assign ptrDif = (pushPtr_value - popPtr_value);
  assign io_occupancy = {(risingOccupancy && ptrMatch),ptrDif};
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      pushPtr_value <= 2'b00;
      popPtr_value <= 2'b00;
      risingOccupancy <= 1'b0;
    end else begin
      pushPtr_value <= pushPtr_valueNext;
      popPtr_value <= popPtr_valueNext;
      if(when_Stream_l1191) begin
        risingOccupancy <= pushing;
      end
      if(io_flush) begin
        risingOccupancy <= 1'b0;
      end
    end
  end


endmodule

//StreamArbiter replaced by StreamArbiter

module StreamArbiter (
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input      [63:0]   io_inputs_0_payload_addr,
  input      [3:0]    io_inputs_0_payload_id,
  input      [3:0]    io_inputs_0_payload_region,
  input      [7:0]    io_inputs_0_payload_len,
  input      [2:0]    io_inputs_0_payload_size,
  input      [1:0]    io_inputs_0_payload_burst,
  input      [0:0]    io_inputs_0_payload_lock,
  input      [3:0]    io_inputs_0_payload_cache,
  input      [3:0]    io_inputs_0_payload_qos,
  input      [2:0]    io_inputs_0_payload_prot,
  input               io_inputs_1_valid,
  output              io_inputs_1_ready,
  input      [63:0]   io_inputs_1_payload_addr,
  input      [3:0]    io_inputs_1_payload_id,
  input      [3:0]    io_inputs_1_payload_region,
  input      [7:0]    io_inputs_1_payload_len,
  input      [2:0]    io_inputs_1_payload_size,
  input      [1:0]    io_inputs_1_payload_burst,
  input      [0:0]    io_inputs_1_payload_lock,
  input      [3:0]    io_inputs_1_payload_cache,
  input      [3:0]    io_inputs_1_payload_qos,
  input      [2:0]    io_inputs_1_payload_prot,
  output              io_output_valid,
  input               io_output_ready,
  output     [63:0]   io_output_payload_addr,
  output     [3:0]    io_output_payload_id,
  output     [3:0]    io_output_payload_region,
  output     [7:0]    io_output_payload_len,
  output     [2:0]    io_output_payload_size,
  output     [1:0]    io_output_payload_burst,
  output     [0:0]    io_output_payload_lock,
  output     [3:0]    io_output_payload_cache,
  output     [3:0]    io_output_payload_qos,
  output     [2:0]    io_output_payload_prot,
  output     [0:0]    io_chosen,
  output     [1:0]    io_chosenOH,
  input               clk,
  input               reset
);

  wire       [3:0]    _zz__zz_maskProposal_0_2;
  wire       [3:0]    _zz__zz_maskProposal_0_2_1;
  wire       [1:0]    _zz__zz_maskProposal_0_2_2;
  reg                 locked;
  wire                maskProposal_0;
  wire                maskProposal_1;
  reg                 maskLocked_0;
  reg                 maskLocked_1;
  wire                maskRouted_0;
  wire                maskRouted_1;
  wire       [1:0]    _zz_maskProposal_0;
  wire       [3:0]    _zz_maskProposal_0_1;
  wire       [3:0]    _zz_maskProposal_0_2;
  wire       [1:0]    _zz_maskProposal_0_3;
  wire                io_output_fire;
  wire                _zz_io_chosen;

  assign _zz__zz_maskProposal_0_2 = (_zz_maskProposal_0_1 - _zz__zz_maskProposal_0_2_1);
  assign _zz__zz_maskProposal_0_2_2 = {maskLocked_0,maskLocked_1};
  assign _zz__zz_maskProposal_0_2_1 = {2'd0, _zz__zz_maskProposal_0_2_2};
  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign maskRouted_1 = (locked ? maskLocked_1 : maskProposal_1);
  assign _zz_maskProposal_0 = {io_inputs_1_valid,io_inputs_0_valid};
  assign _zz_maskProposal_0_1 = {_zz_maskProposal_0,_zz_maskProposal_0};
  assign _zz_maskProposal_0_2 = (_zz_maskProposal_0_1 & (~ _zz__zz_maskProposal_0_2));
  assign _zz_maskProposal_0_3 = (_zz_maskProposal_0_2[3 : 2] | _zz_maskProposal_0_2[1 : 0]);
  assign maskProposal_0 = _zz_maskProposal_0_3[0];
  assign maskProposal_1 = _zz_maskProposal_0_3[1];
  assign io_output_fire = (io_output_valid && io_output_ready);
  assign io_output_valid = ((io_inputs_0_valid && maskRouted_0) || (io_inputs_1_valid && maskRouted_1));
  assign io_output_payload_addr = (maskRouted_0 ? io_inputs_0_payload_addr : io_inputs_1_payload_addr);
  assign io_output_payload_id = (maskRouted_0 ? io_inputs_0_payload_id : io_inputs_1_payload_id);
  assign io_output_payload_region = (maskRouted_0 ? io_inputs_0_payload_region : io_inputs_1_payload_region);
  assign io_output_payload_len = (maskRouted_0 ? io_inputs_0_payload_len : io_inputs_1_payload_len);
  assign io_output_payload_size = (maskRouted_0 ? io_inputs_0_payload_size : io_inputs_1_payload_size);
  assign io_output_payload_burst = (maskRouted_0 ? io_inputs_0_payload_burst : io_inputs_1_payload_burst);
  assign io_output_payload_lock = (maskRouted_0 ? io_inputs_0_payload_lock : io_inputs_1_payload_lock);
  assign io_output_payload_cache = (maskRouted_0 ? io_inputs_0_payload_cache : io_inputs_1_payload_cache);
  assign io_output_payload_qos = (maskRouted_0 ? io_inputs_0_payload_qos : io_inputs_1_payload_qos);
  assign io_output_payload_prot = (maskRouted_0 ? io_inputs_0_payload_prot : io_inputs_1_payload_prot);
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_inputs_1_ready = (maskRouted_1 && io_output_ready);
  assign io_chosenOH = {maskRouted_1,maskRouted_0};
  assign _zz_io_chosen = io_chosenOH[1];
  assign io_chosen = _zz_io_chosen;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      locked <= 1'b0;
      maskLocked_0 <= 1'b0;
      maskLocked_1 <= 1'b1;
    end else begin
      if(io_output_valid) begin
        maskLocked_0 <= maskRouted_0;
        maskLocked_1 <= maskRouted_1;
      end
      if(io_output_valid) begin
        locked <= 1'b1;
      end
      if(io_output_fire) begin
        locked <= 1'b0;
      end
    end
  end


endmodule

//Axi4WriteOnlyErrorSlave replaced by Axi4WriteOnlyErrorSlave

//Axi4ReadOnlyErrorSlave replaced by Axi4ReadOnlyErrorSlave

module Axi4WriteOnlyErrorSlave (
  input               io_axi_aw_valid,
  output              io_axi_aw_ready,
  input      [63:0]   io_axi_aw_payload_addr,
  input      [3:0]    io_axi_aw_payload_id,
  input      [3:0]    io_axi_aw_payload_region,
  input      [7:0]    io_axi_aw_payload_len,
  input      [2:0]    io_axi_aw_payload_size,
  input      [1:0]    io_axi_aw_payload_burst,
  input      [0:0]    io_axi_aw_payload_lock,
  input      [3:0]    io_axi_aw_payload_cache,
  input      [3:0]    io_axi_aw_payload_qos,
  input      [2:0]    io_axi_aw_payload_prot,
  input               io_axi_w_valid,
  output              io_axi_w_ready,
  input      [511:0]  io_axi_w_payload_data,
  input      [63:0]   io_axi_w_payload_strb,
  input               io_axi_w_payload_last,
  output              io_axi_b_valid,
  input               io_axi_b_ready,
  output     [3:0]    io_axi_b_payload_id,
  output     [1:0]    io_axi_b_payload_resp,
  input               clk,
  input               reset
);

  reg                 consumeData;
  reg                 sendRsp;
  reg        [3:0]    id;
  wire                io_axi_aw_fire;
  wire                io_axi_w_fire;
  wire                when_Axi4ErrorSlave_l24;
  wire                io_axi_b_fire;

  assign io_axi_aw_ready = (! (consumeData || sendRsp));
  assign io_axi_aw_fire = (io_axi_aw_valid && io_axi_aw_ready);
  assign io_axi_w_ready = consumeData;
  assign io_axi_w_fire = (io_axi_w_valid && io_axi_w_ready);
  assign when_Axi4ErrorSlave_l24 = (io_axi_w_fire && io_axi_w_payload_last);
  assign io_axi_b_valid = sendRsp;
  assign io_axi_b_payload_resp = 2'b11;
  assign io_axi_b_payload_id = id;
  assign io_axi_b_fire = (io_axi_b_valid && io_axi_b_ready);
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      consumeData <= 1'b0;
      sendRsp <= 1'b0;
    end else begin
      if(io_axi_aw_fire) begin
        consumeData <= 1'b1;
      end
      if(when_Axi4ErrorSlave_l24) begin
        consumeData <= 1'b0;
        sendRsp <= 1'b1;
      end
      if(io_axi_b_fire) begin
        sendRsp <= 1'b0;
      end
    end
  end

  always @(posedge clk) begin
    if(io_axi_aw_fire) begin
      id <= io_axi_aw_payload_id;
    end
  end


endmodule

module Axi4ReadOnlyErrorSlave (
  input               io_axi_ar_valid,
  output              io_axi_ar_ready,
  input      [63:0]   io_axi_ar_payload_addr,
  input      [3:0]    io_axi_ar_payload_id,
  input      [3:0]    io_axi_ar_payload_region,
  input      [7:0]    io_axi_ar_payload_len,
  input      [2:0]    io_axi_ar_payload_size,
  input      [1:0]    io_axi_ar_payload_burst,
  input      [0:0]    io_axi_ar_payload_lock,
  input      [3:0]    io_axi_ar_payload_cache,
  input      [3:0]    io_axi_ar_payload_qos,
  input      [2:0]    io_axi_ar_payload_prot,
  output              io_axi_r_valid,
  input               io_axi_r_ready,
  output     [511:0]  io_axi_r_payload_data,
  output     [3:0]    io_axi_r_payload_id,
  output     [1:0]    io_axi_r_payload_resp,
  output              io_axi_r_payload_last,
  input               clk,
  input               reset
);

  reg                 sendRsp;
  reg        [3:0]    id;
  reg        [7:0]    remaining;
  wire                remainingZero;
  wire                io_axi_ar_fire;

  assign remainingZero = (remaining == 8'h0);
  assign io_axi_ar_ready = (! sendRsp);
  assign io_axi_ar_fire = (io_axi_ar_valid && io_axi_ar_ready);
  assign io_axi_r_valid = sendRsp;
  assign io_axi_r_payload_id = id;
  assign io_axi_r_payload_resp = 2'b11;
  assign io_axi_r_payload_last = remainingZero;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      sendRsp <= 1'b0;
    end else begin
      if(io_axi_ar_fire) begin
        sendRsp <= 1'b1;
      end
      if(sendRsp) begin
        if(io_axi_r_ready) begin
          if(remainingZero) begin
            sendRsp <= 1'b0;
          end
        end
      end
    end
  end

  always @(posedge clk) begin
    if(io_axi_ar_fire) begin
      remaining <= io_axi_ar_payload_len;
      id <= io_axi_ar_payload_id;
    end
    if(sendRsp) begin
      if(io_axi_r_ready) begin
        remaining <= (remaining - 8'h01);
      end
    end
  end


endmodule
