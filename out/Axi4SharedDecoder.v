// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : Axi4SharedDecoder
// Git hash  : 23d564a3e9d4d768c2cb1641ec7dc2becc0d2602

`timescale 1ns/1ps

module Axi4SharedDecoder (
  input               io_input_arw_valid,
  output              io_input_arw_ready,
  input      [15:0]   io_input_arw_payload_addr,
  input      [3:0]    io_input_arw_payload_id,
  input      [3:0]    io_input_arw_payload_region,
  input      [7:0]    io_input_arw_payload_len,
  input      [2:0]    io_input_arw_payload_size,
  input      [1:0]    io_input_arw_payload_burst,
  input      [0:0]    io_input_arw_payload_lock,
  input      [3:0]    io_input_arw_payload_cache,
  input      [3:0]    io_input_arw_payload_qos,
  input      [2:0]    io_input_arw_payload_prot,
  input               io_input_arw_payload_write,
  input               io_input_w_valid,
  output              io_input_w_ready,
  input      [31:0]   io_input_w_payload_data,
  input      [3:0]    io_input_w_payload_strb,
  input               io_input_w_payload_last,
  output              io_input_b_valid,
  input               io_input_b_ready,
  output reg [3:0]    io_input_b_payload_id,
  output reg [1:0]    io_input_b_payload_resp,
  output              io_input_r_valid,
  input               io_input_r_ready,
  output     [31:0]   io_input_r_payload_data,
  output reg [3:0]    io_input_r_payload_id,
  output reg [1:0]    io_input_r_payload_resp,
  output reg          io_input_r_payload_last,
  output              io_readOutputs_0_ar_valid,
  input               io_readOutputs_0_ar_ready,
  output     [15:0]   io_readOutputs_0_ar_payload_addr,
  output     [3:0]    io_readOutputs_0_ar_payload_id,
  output     [3:0]    io_readOutputs_0_ar_payload_region,
  output     [7:0]    io_readOutputs_0_ar_payload_len,
  output     [2:0]    io_readOutputs_0_ar_payload_size,
  output     [1:0]    io_readOutputs_0_ar_payload_burst,
  output     [0:0]    io_readOutputs_0_ar_payload_lock,
  output     [3:0]    io_readOutputs_0_ar_payload_cache,
  output     [3:0]    io_readOutputs_0_ar_payload_qos,
  output     [2:0]    io_readOutputs_0_ar_payload_prot,
  input               io_readOutputs_0_r_valid,
  output              io_readOutputs_0_r_ready,
  input      [31:0]   io_readOutputs_0_r_payload_data,
  input      [3:0]    io_readOutputs_0_r_payload_id,
  input      [1:0]    io_readOutputs_0_r_payload_resp,
  input               io_readOutputs_0_r_payload_last,
  output              io_readOutputs_1_ar_valid,
  input               io_readOutputs_1_ar_ready,
  output     [15:0]   io_readOutputs_1_ar_payload_addr,
  output     [3:0]    io_readOutputs_1_ar_payload_id,
  output     [3:0]    io_readOutputs_1_ar_payload_region,
  output     [7:0]    io_readOutputs_1_ar_payload_len,
  output     [2:0]    io_readOutputs_1_ar_payload_size,
  output     [1:0]    io_readOutputs_1_ar_payload_burst,
  output     [0:0]    io_readOutputs_1_ar_payload_lock,
  output     [3:0]    io_readOutputs_1_ar_payload_cache,
  output     [3:0]    io_readOutputs_1_ar_payload_qos,
  output     [2:0]    io_readOutputs_1_ar_payload_prot,
  input               io_readOutputs_1_r_valid,
  output              io_readOutputs_1_r_ready,
  input      [31:0]   io_readOutputs_1_r_payload_data,
  input      [3:0]    io_readOutputs_1_r_payload_id,
  input      [1:0]    io_readOutputs_1_r_payload_resp,
  input               io_readOutputs_1_r_payload_last,
  output              io_readOutputs_2_ar_valid,
  input               io_readOutputs_2_ar_ready,
  output     [15:0]   io_readOutputs_2_ar_payload_addr,
  output     [3:0]    io_readOutputs_2_ar_payload_id,
  output     [3:0]    io_readOutputs_2_ar_payload_region,
  output     [7:0]    io_readOutputs_2_ar_payload_len,
  output     [2:0]    io_readOutputs_2_ar_payload_size,
  output     [1:0]    io_readOutputs_2_ar_payload_burst,
  output     [0:0]    io_readOutputs_2_ar_payload_lock,
  output     [3:0]    io_readOutputs_2_ar_payload_cache,
  output     [3:0]    io_readOutputs_2_ar_payload_qos,
  output     [2:0]    io_readOutputs_2_ar_payload_prot,
  input               io_readOutputs_2_r_valid,
  output              io_readOutputs_2_r_ready,
  input      [31:0]   io_readOutputs_2_r_payload_data,
  input      [3:0]    io_readOutputs_2_r_payload_id,
  input      [1:0]    io_readOutputs_2_r_payload_resp,
  input               io_readOutputs_2_r_payload_last,
  output              io_writeOutputs_0_aw_valid,
  input               io_writeOutputs_0_aw_ready,
  output     [15:0]   io_writeOutputs_0_aw_payload_addr,
  output     [3:0]    io_writeOutputs_0_aw_payload_id,
  output     [3:0]    io_writeOutputs_0_aw_payload_region,
  output     [7:0]    io_writeOutputs_0_aw_payload_len,
  output     [2:0]    io_writeOutputs_0_aw_payload_size,
  output     [1:0]    io_writeOutputs_0_aw_payload_burst,
  output     [0:0]    io_writeOutputs_0_aw_payload_lock,
  output     [3:0]    io_writeOutputs_0_aw_payload_cache,
  output     [3:0]    io_writeOutputs_0_aw_payload_qos,
  output     [2:0]    io_writeOutputs_0_aw_payload_prot,
  output              io_writeOutputs_0_w_valid,
  input               io_writeOutputs_0_w_ready,
  output     [31:0]   io_writeOutputs_0_w_payload_data,
  output     [3:0]    io_writeOutputs_0_w_payload_strb,
  output              io_writeOutputs_0_w_payload_last,
  input               io_writeOutputs_0_b_valid,
  output              io_writeOutputs_0_b_ready,
  input      [3:0]    io_writeOutputs_0_b_payload_id,
  input      [1:0]    io_writeOutputs_0_b_payload_resp,
  output              io_writeOutputs_1_aw_valid,
  input               io_writeOutputs_1_aw_ready,
  output     [15:0]   io_writeOutputs_1_aw_payload_addr,
  output     [3:0]    io_writeOutputs_1_aw_payload_id,
  output     [3:0]    io_writeOutputs_1_aw_payload_region,
  output     [7:0]    io_writeOutputs_1_aw_payload_len,
  output     [2:0]    io_writeOutputs_1_aw_payload_size,
  output     [1:0]    io_writeOutputs_1_aw_payload_burst,
  output     [0:0]    io_writeOutputs_1_aw_payload_lock,
  output     [3:0]    io_writeOutputs_1_aw_payload_cache,
  output     [3:0]    io_writeOutputs_1_aw_payload_qos,
  output     [2:0]    io_writeOutputs_1_aw_payload_prot,
  output              io_writeOutputs_1_w_valid,
  input               io_writeOutputs_1_w_ready,
  output     [31:0]   io_writeOutputs_1_w_payload_data,
  output     [3:0]    io_writeOutputs_1_w_payload_strb,
  output              io_writeOutputs_1_w_payload_last,
  input               io_writeOutputs_1_b_valid,
  output              io_writeOutputs_1_b_ready,
  input      [3:0]    io_writeOutputs_1_b_payload_id,
  input      [1:0]    io_writeOutputs_1_b_payload_resp,
  output              io_sharedOutputs_0_arw_valid,
  input               io_sharedOutputs_0_arw_ready,
  output     [15:0]   io_sharedOutputs_0_arw_payload_addr,
  output     [3:0]    io_sharedOutputs_0_arw_payload_id,
  output     [3:0]    io_sharedOutputs_0_arw_payload_region,
  output     [7:0]    io_sharedOutputs_0_arw_payload_len,
  output     [2:0]    io_sharedOutputs_0_arw_payload_size,
  output     [1:0]    io_sharedOutputs_0_arw_payload_burst,
  output     [0:0]    io_sharedOutputs_0_arw_payload_lock,
  output     [3:0]    io_sharedOutputs_0_arw_payload_cache,
  output     [3:0]    io_sharedOutputs_0_arw_payload_qos,
  output     [2:0]    io_sharedOutputs_0_arw_payload_prot,
  output              io_sharedOutputs_0_arw_payload_write,
  output              io_sharedOutputs_0_w_valid,
  input               io_sharedOutputs_0_w_ready,
  output     [31:0]   io_sharedOutputs_0_w_payload_data,
  output     [3:0]    io_sharedOutputs_0_w_payload_strb,
  output              io_sharedOutputs_0_w_payload_last,
  input               io_sharedOutputs_0_b_valid,
  output              io_sharedOutputs_0_b_ready,
  input      [3:0]    io_sharedOutputs_0_b_payload_id,
  input      [1:0]    io_sharedOutputs_0_b_payload_resp,
  input               io_sharedOutputs_0_r_valid,
  output              io_sharedOutputs_0_r_ready,
  input      [31:0]   io_sharedOutputs_0_r_payload_data,
  input      [3:0]    io_sharedOutputs_0_r_payload_id,
  input      [1:0]    io_sharedOutputs_0_r_payload_resp,
  input               io_sharedOutputs_0_r_payload_last,
  output              io_sharedOutputs_1_arw_valid,
  input               io_sharedOutputs_1_arw_ready,
  output     [15:0]   io_sharedOutputs_1_arw_payload_addr,
  output     [3:0]    io_sharedOutputs_1_arw_payload_id,
  output     [3:0]    io_sharedOutputs_1_arw_payload_region,
  output     [7:0]    io_sharedOutputs_1_arw_payload_len,
  output     [2:0]    io_sharedOutputs_1_arw_payload_size,
  output     [1:0]    io_sharedOutputs_1_arw_payload_burst,
  output     [0:0]    io_sharedOutputs_1_arw_payload_lock,
  output     [3:0]    io_sharedOutputs_1_arw_payload_cache,
  output     [3:0]    io_sharedOutputs_1_arw_payload_qos,
  output     [2:0]    io_sharedOutputs_1_arw_payload_prot,
  output              io_sharedOutputs_1_arw_payload_write,
  output              io_sharedOutputs_1_w_valid,
  input               io_sharedOutputs_1_w_ready,
  output     [31:0]   io_sharedOutputs_1_w_payload_data,
  output     [3:0]    io_sharedOutputs_1_w_payload_strb,
  output              io_sharedOutputs_1_w_payload_last,
  input               io_sharedOutputs_1_b_valid,
  output              io_sharedOutputs_1_b_ready,
  input      [3:0]    io_sharedOutputs_1_b_payload_id,
  input      [1:0]    io_sharedOutputs_1_b_payload_resp,
  input               io_sharedOutputs_1_r_valid,
  output              io_sharedOutputs_1_r_ready,
  input      [31:0]   io_sharedOutputs_1_r_payload_data,
  input      [3:0]    io_sharedOutputs_1_r_payload_id,
  input      [1:0]    io_sharedOutputs_1_r_payload_resp,
  input               io_sharedOutputs_1_r_payload_last,
  input               clk,
  input               reset
);

  wire                errorSlave_io_axi_arw_valid;
  wire                errorSlave_io_axi_w_valid;
  wire                errorSlave_io_axi_arw_ready;
  wire                errorSlave_io_axi_w_ready;
  wire                errorSlave_io_axi_b_valid;
  wire       [3:0]    errorSlave_io_axi_b_payload_id;
  wire       [1:0]    errorSlave_io_axi_b_payload_resp;
  wire                errorSlave_io_axi_r_valid;
  wire       [31:0]   errorSlave_io_axi_r_payload_data;
  wire       [3:0]    errorSlave_io_axi_r_payload_id;
  wire       [1:0]    errorSlave_io_axi_r_payload_resp;
  wire                errorSlave_io_axi_r_payload_last;
  wire       [15:0]   _zz_decodedCmdSels;
  wire       [15:0]   _zz_decodedCmdSels_1;
  wire                _zz_decodedCmdSels_2;
  wire                _zz_decodedCmdSels_3;
  wire                _zz_decodedCmdSels_4;
  wire                _zz_decodedCmdSels_5;
  wire                _zz_decodedCmdSels_6;
  wire                _zz_decodedCmdSels_7;
  reg        [3:0]    _zz_io_input_b_payload_id;
  reg        [1:0]    _zz_io_input_b_payload_resp;
  reg        [31:0]   _zz_io_input_r_payload_data;
  reg        [3:0]    _zz_io_input_r_payload_id;
  reg        [1:0]    _zz_io_input_r_payload_resp;
  reg                 _zz_io_input_r_payload_last;
  reg        [2:0]    _zz_pendingCmdCounter;
  reg        [2:0]    _zz_pendingCmdCounter_1;
  reg        [2:0]    _zz_pendingCmdCounter_2;
  wire                cmdAllowedStart;
  wire                io_input_arw_fire;
  wire                io_input_b_fire;
  wire                io_input_r_fire;
  wire                when_Utils_l678;
  reg        [2:0]    pendingCmdCounter;
  wire       [2:0]    _zz_pendingCmdCounter_3;
  wire                when_Utils_l624;
  wire                io_input_w_fire;
  wire                when_Utils_l627;
  reg                 pendingDataCounter_incrementIt;
  reg                 pendingDataCounter_decrementIt;
  wire       [2:0]    pendingDataCounter_valueNext;
  reg        [2:0]    pendingDataCounter_value;
  wire                pendingDataCounter_willOverflowIfInc;
  wire                pendingDataCounter_willOverflow;
  reg        [2:0]    pendingDataCounter_finalIncrement;
  wire                when_Utils_l652;
  wire                when_Utils_l654;
  wire       [6:0]    decodedCmdSels;
  wire                decodedCmdError;
  reg        [6:0]    pendingSels;
  reg                 pendingError;
  wire                allowCmd;
  wire                allowData;
  reg                 _zz_cmdAllowedStart;
  wire       [2:0]    _zz_io_readOutputs_0_ar_valid;
  wire       [1:0]    _zz_io_writeOutputs_0_aw_valid;
  wire       [1:0]    _zz_io_sharedOutputs_0_arw_valid;
  wire       [1:0]    _zz_io_writeOutputs_0_w_valid;
  wire       [1:0]    _zz_io_sharedOutputs_0_w_valid;
  wire       [3:0]    _zz_writeRspIndex;
  wire                _zz_writeRspIndex_1;
  wire                _zz_writeRspIndex_2;
  wire                _zz_writeRspIndex_3;
  wire       [1:0]    writeRspIndex;
  wire       [4:0]    _zz_readRspIndex;
  wire                _zz_readRspIndex_1;
  wire                _zz_readRspIndex_2;
  wire                _zz_readRspIndex_3;
  wire                _zz_readRspIndex_4;
  wire       [2:0]    readRspIndex;

  assign _zz_decodedCmdSels = (~ 16'h03ff);
  assign _zz_decodedCmdSels_1 = (~ 16'h07ff);
  assign _zz_decodedCmdSels_2 = ((16'h4000 <= io_input_arw_payload_addr) && (io_input_arw_payload_addr < 16'h4c00));
  assign _zz_decodedCmdSels_3 = ((16'h3000 <= io_input_arw_payload_addr) && (io_input_arw_payload_addr < 16'h3c00));
  assign _zz_decodedCmdSels_4 = ((16'h2000 <= io_input_arw_payload_addr) && (io_input_arw_payload_addr < 16'h2c00));
  assign _zz_decodedCmdSels_5 = (! io_input_arw_payload_write);
  assign _zz_decodedCmdSels_6 = (((io_input_arw_payload_addr & (~ 16'h03ff)) == 16'h1000) && (! io_input_arw_payload_write));
  assign _zz_decodedCmdSels_7 = (((io_input_arw_payload_addr & (~ 16'h003f)) == 16'h0) && (! io_input_arw_payload_write));
  Axi4SharedErrorSlave errorSlave (
    .io_axi_arw_valid          (errorSlave_io_axi_arw_valid           ), //i
    .io_axi_arw_ready          (errorSlave_io_axi_arw_ready           ), //o
    .io_axi_arw_payload_addr   (io_input_arw_payload_addr[15:0]       ), //i
    .io_axi_arw_payload_id     (io_input_arw_payload_id[3:0]          ), //i
    .io_axi_arw_payload_region (io_input_arw_payload_region[3:0]      ), //i
    .io_axi_arw_payload_len    (io_input_arw_payload_len[7:0]         ), //i
    .io_axi_arw_payload_size   (io_input_arw_payload_size[2:0]        ), //i
    .io_axi_arw_payload_burst  (io_input_arw_payload_burst[1:0]       ), //i
    .io_axi_arw_payload_lock   (io_input_arw_payload_lock             ), //i
    .io_axi_arw_payload_cache  (io_input_arw_payload_cache[3:0]       ), //i
    .io_axi_arw_payload_qos    (io_input_arw_payload_qos[3:0]         ), //i
    .io_axi_arw_payload_prot   (io_input_arw_payload_prot[2:0]        ), //i
    .io_axi_arw_payload_write  (io_input_arw_payload_write            ), //i
    .io_axi_w_valid            (errorSlave_io_axi_w_valid             ), //i
    .io_axi_w_ready            (errorSlave_io_axi_w_ready             ), //o
    .io_axi_w_payload_data     (io_input_w_payload_data[31:0]         ), //i
    .io_axi_w_payload_strb     (io_input_w_payload_strb[3:0]          ), //i
    .io_axi_w_payload_last     (io_input_w_payload_last               ), //i
    .io_axi_b_valid            (errorSlave_io_axi_b_valid             ), //o
    .io_axi_b_ready            (io_input_b_ready                      ), //i
    .io_axi_b_payload_id       (errorSlave_io_axi_b_payload_id[3:0]   ), //o
    .io_axi_b_payload_resp     (errorSlave_io_axi_b_payload_resp[1:0] ), //o
    .io_axi_r_valid            (errorSlave_io_axi_r_valid             ), //o
    .io_axi_r_ready            (io_input_r_ready                      ), //i
    .io_axi_r_payload_data     (errorSlave_io_axi_r_payload_data[31:0]), //o
    .io_axi_r_payload_id       (errorSlave_io_axi_r_payload_id[3:0]   ), //o
    .io_axi_r_payload_resp     (errorSlave_io_axi_r_payload_resp[1:0] ), //o
    .io_axi_r_payload_last     (errorSlave_io_axi_r_payload_last      ), //o
    .clk                       (clk                                   ), //i
    .reset                     (reset                                 )  //i
  );
  always @(*) begin
    case(writeRspIndex)
      2'b00 : begin
        _zz_io_input_b_payload_id = io_writeOutputs_0_b_payload_id;
        _zz_io_input_b_payload_resp = io_writeOutputs_0_b_payload_resp;
      end
      2'b01 : begin
        _zz_io_input_b_payload_id = io_writeOutputs_1_b_payload_id;
        _zz_io_input_b_payload_resp = io_writeOutputs_1_b_payload_resp;
      end
      2'b10 : begin
        _zz_io_input_b_payload_id = io_sharedOutputs_0_b_payload_id;
        _zz_io_input_b_payload_resp = io_sharedOutputs_0_b_payload_resp;
      end
      default : begin
        _zz_io_input_b_payload_id = io_sharedOutputs_1_b_payload_id;
        _zz_io_input_b_payload_resp = io_sharedOutputs_1_b_payload_resp;
      end
    endcase
  end

  always @(*) begin
    case(readRspIndex)
      3'b000 : begin
        _zz_io_input_r_payload_data = io_readOutputs_0_r_payload_data;
        _zz_io_input_r_payload_id = io_readOutputs_0_r_payload_id;
        _zz_io_input_r_payload_resp = io_readOutputs_0_r_payload_resp;
        _zz_io_input_r_payload_last = io_readOutputs_0_r_payload_last;
      end
      3'b001 : begin
        _zz_io_input_r_payload_data = io_readOutputs_1_r_payload_data;
        _zz_io_input_r_payload_id = io_readOutputs_1_r_payload_id;
        _zz_io_input_r_payload_resp = io_readOutputs_1_r_payload_resp;
        _zz_io_input_r_payload_last = io_readOutputs_1_r_payload_last;
      end
      3'b010 : begin
        _zz_io_input_r_payload_data = io_readOutputs_2_r_payload_data;
        _zz_io_input_r_payload_id = io_readOutputs_2_r_payload_id;
        _zz_io_input_r_payload_resp = io_readOutputs_2_r_payload_resp;
        _zz_io_input_r_payload_last = io_readOutputs_2_r_payload_last;
      end
      3'b011 : begin
        _zz_io_input_r_payload_data = io_sharedOutputs_0_r_payload_data;
        _zz_io_input_r_payload_id = io_sharedOutputs_0_r_payload_id;
        _zz_io_input_r_payload_resp = io_sharedOutputs_0_r_payload_resp;
        _zz_io_input_r_payload_last = io_sharedOutputs_0_r_payload_last;
      end
      default : begin
        _zz_io_input_r_payload_data = io_sharedOutputs_1_r_payload_data;
        _zz_io_input_r_payload_id = io_sharedOutputs_1_r_payload_id;
        _zz_io_input_r_payload_resp = io_sharedOutputs_1_r_payload_resp;
        _zz_io_input_r_payload_last = io_sharedOutputs_1_r_payload_last;
      end
    endcase
  end

  always @(*) begin
    _zz_pendingCmdCounter = _zz_pendingCmdCounter_1;
    if(when_Utils_l678) begin
      _zz_pendingCmdCounter = (_zz_pendingCmdCounter_1 - 3'b001);
    end
  end

  always @(*) begin
    _zz_pendingCmdCounter_1 = _zz_pendingCmdCounter_2;
    if(io_input_b_fire) begin
      _zz_pendingCmdCounter_1 = (_zz_pendingCmdCounter_2 - 3'b001);
    end
  end

  always @(*) begin
    _zz_pendingCmdCounter_2 = _zz_pendingCmdCounter_3;
    if(io_input_arw_fire) begin
      _zz_pendingCmdCounter_2 = (_zz_pendingCmdCounter_3 + 3'b001);
    end
  end

  assign io_input_arw_fire = (io_input_arw_valid && io_input_arw_ready);
  assign io_input_b_fire = (io_input_b_valid && io_input_b_ready);
  assign io_input_r_fire = (io_input_r_valid && io_input_r_ready);
  assign when_Utils_l678 = (io_input_r_fire && io_input_r_payload_last);
  assign _zz_pendingCmdCounter_3 = pendingCmdCounter;
  assign when_Utils_l624 = (cmdAllowedStart && io_input_arw_payload_write);
  assign io_input_w_fire = (io_input_w_valid && io_input_w_ready);
  assign when_Utils_l627 = (io_input_w_fire && io_input_w_payload_last);
  always @(*) begin
    pendingDataCounter_incrementIt = 1'b0;
    if(when_Utils_l624) begin
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
  assign when_Utils_l652 = (pendingDataCounter_incrementIt && (! pendingDataCounter_decrementIt));
  always @(*) begin
    if(when_Utils_l652) begin
      pendingDataCounter_finalIncrement = 3'b001;
    end else begin
      if(when_Utils_l654) begin
        pendingDataCounter_finalIncrement = 3'b111;
      end else begin
        pendingDataCounter_finalIncrement = 3'b000;
      end
    end
  end

  assign when_Utils_l654 = ((! pendingDataCounter_incrementIt) && pendingDataCounter_decrementIt);
  assign pendingDataCounter_valueNext = (pendingDataCounter_value + pendingDataCounter_finalIncrement);
  assign decodedCmdSels = {{((io_input_arw_payload_addr & _zz_decodedCmdSels) == 16'h6000),((io_input_arw_payload_addr & _zz_decodedCmdSels_1) == 16'h5000)},{{(_zz_decodedCmdSels_2 && io_input_arw_payload_write),(_zz_decodedCmdSels_3 && io_input_arw_payload_write)},{(_zz_decodedCmdSels_4 && _zz_decodedCmdSels_5),{_zz_decodedCmdSels_6,_zz_decodedCmdSels_7}}}};
  assign decodedCmdError = (decodedCmdSels == 7'h0);
  assign allowCmd = ((pendingCmdCounter == 3'b000) || ((pendingCmdCounter != 3'b111) && (pendingSels == decodedCmdSels)));
  assign allowData = (pendingDataCounter_value != 3'b000);
  assign cmdAllowedStart = ((io_input_arw_valid && allowCmd) && _zz_cmdAllowedStart);
  assign io_input_arw_ready = (((|(decodedCmdSels & {io_sharedOutputs_1_arw_ready,{io_sharedOutputs_0_arw_ready,{io_writeOutputs_1_aw_ready,{io_writeOutputs_0_aw_ready,{io_readOutputs_2_ar_ready,{io_readOutputs_1_ar_ready,io_readOutputs_0_ar_ready}}}}}})) || (decodedCmdError && errorSlave_io_axi_arw_ready)) && allowCmd);
  assign errorSlave_io_axi_arw_valid = ((io_input_arw_valid && decodedCmdError) && allowCmd);
  assign _zz_io_readOutputs_0_ar_valid = decodedCmdSels[2 : 0];
  assign io_readOutputs_0_ar_valid = ((io_input_arw_valid && _zz_io_readOutputs_0_ar_valid[0]) && allowCmd);
  assign io_readOutputs_0_ar_payload_addr = io_input_arw_payload_addr;
  assign io_readOutputs_0_ar_payload_id = io_input_arw_payload_id;
  assign io_readOutputs_0_ar_payload_region = io_input_arw_payload_region;
  assign io_readOutputs_0_ar_payload_len = io_input_arw_payload_len;
  assign io_readOutputs_0_ar_payload_size = io_input_arw_payload_size;
  assign io_readOutputs_0_ar_payload_burst = io_input_arw_payload_burst;
  assign io_readOutputs_0_ar_payload_lock = io_input_arw_payload_lock;
  assign io_readOutputs_0_ar_payload_cache = io_input_arw_payload_cache;
  assign io_readOutputs_0_ar_payload_qos = io_input_arw_payload_qos;
  assign io_readOutputs_0_ar_payload_prot = io_input_arw_payload_prot;
  assign io_readOutputs_1_ar_valid = ((io_input_arw_valid && _zz_io_readOutputs_0_ar_valid[1]) && allowCmd);
  assign io_readOutputs_1_ar_payload_addr = io_input_arw_payload_addr;
  assign io_readOutputs_1_ar_payload_id = io_input_arw_payload_id;
  assign io_readOutputs_1_ar_payload_region = io_input_arw_payload_region;
  assign io_readOutputs_1_ar_payload_len = io_input_arw_payload_len;
  assign io_readOutputs_1_ar_payload_size = io_input_arw_payload_size;
  assign io_readOutputs_1_ar_payload_burst = io_input_arw_payload_burst;
  assign io_readOutputs_1_ar_payload_lock = io_input_arw_payload_lock;
  assign io_readOutputs_1_ar_payload_cache = io_input_arw_payload_cache;
  assign io_readOutputs_1_ar_payload_qos = io_input_arw_payload_qos;
  assign io_readOutputs_1_ar_payload_prot = io_input_arw_payload_prot;
  assign io_readOutputs_2_ar_valid = ((io_input_arw_valid && _zz_io_readOutputs_0_ar_valid[2]) && allowCmd);
  assign io_readOutputs_2_ar_payload_addr = io_input_arw_payload_addr;
  assign io_readOutputs_2_ar_payload_id = io_input_arw_payload_id;
  assign io_readOutputs_2_ar_payload_region = io_input_arw_payload_region;
  assign io_readOutputs_2_ar_payload_len = io_input_arw_payload_len;
  assign io_readOutputs_2_ar_payload_size = io_input_arw_payload_size;
  assign io_readOutputs_2_ar_payload_burst = io_input_arw_payload_burst;
  assign io_readOutputs_2_ar_payload_lock = io_input_arw_payload_lock;
  assign io_readOutputs_2_ar_payload_cache = io_input_arw_payload_cache;
  assign io_readOutputs_2_ar_payload_qos = io_input_arw_payload_qos;
  assign io_readOutputs_2_ar_payload_prot = io_input_arw_payload_prot;
  assign _zz_io_writeOutputs_0_aw_valid = decodedCmdSels[4 : 3];
  assign io_writeOutputs_0_aw_valid = ((io_input_arw_valid && _zz_io_writeOutputs_0_aw_valid[0]) && allowCmd);
  assign io_writeOutputs_0_aw_payload_addr = io_input_arw_payload_addr;
  assign io_writeOutputs_0_aw_payload_id = io_input_arw_payload_id;
  assign io_writeOutputs_0_aw_payload_region = io_input_arw_payload_region;
  assign io_writeOutputs_0_aw_payload_len = io_input_arw_payload_len;
  assign io_writeOutputs_0_aw_payload_size = io_input_arw_payload_size;
  assign io_writeOutputs_0_aw_payload_burst = io_input_arw_payload_burst;
  assign io_writeOutputs_0_aw_payload_lock = io_input_arw_payload_lock;
  assign io_writeOutputs_0_aw_payload_cache = io_input_arw_payload_cache;
  assign io_writeOutputs_0_aw_payload_qos = io_input_arw_payload_qos;
  assign io_writeOutputs_0_aw_payload_prot = io_input_arw_payload_prot;
  assign io_writeOutputs_1_aw_valid = ((io_input_arw_valid && _zz_io_writeOutputs_0_aw_valid[1]) && allowCmd);
  assign io_writeOutputs_1_aw_payload_addr = io_input_arw_payload_addr;
  assign io_writeOutputs_1_aw_payload_id = io_input_arw_payload_id;
  assign io_writeOutputs_1_aw_payload_region = io_input_arw_payload_region;
  assign io_writeOutputs_1_aw_payload_len = io_input_arw_payload_len;
  assign io_writeOutputs_1_aw_payload_size = io_input_arw_payload_size;
  assign io_writeOutputs_1_aw_payload_burst = io_input_arw_payload_burst;
  assign io_writeOutputs_1_aw_payload_lock = io_input_arw_payload_lock;
  assign io_writeOutputs_1_aw_payload_cache = io_input_arw_payload_cache;
  assign io_writeOutputs_1_aw_payload_qos = io_input_arw_payload_qos;
  assign io_writeOutputs_1_aw_payload_prot = io_input_arw_payload_prot;
  assign _zz_io_sharedOutputs_0_arw_valid = decodedCmdSels[6 : 5];
  assign io_sharedOutputs_0_arw_valid = ((io_input_arw_valid && _zz_io_sharedOutputs_0_arw_valid[0]) && allowCmd);
  assign io_sharedOutputs_0_arw_payload_addr = io_input_arw_payload_addr;
  assign io_sharedOutputs_0_arw_payload_id = io_input_arw_payload_id;
  assign io_sharedOutputs_0_arw_payload_region = io_input_arw_payload_region;
  assign io_sharedOutputs_0_arw_payload_len = io_input_arw_payload_len;
  assign io_sharedOutputs_0_arw_payload_size = io_input_arw_payload_size;
  assign io_sharedOutputs_0_arw_payload_burst = io_input_arw_payload_burst;
  assign io_sharedOutputs_0_arw_payload_lock = io_input_arw_payload_lock;
  assign io_sharedOutputs_0_arw_payload_cache = io_input_arw_payload_cache;
  assign io_sharedOutputs_0_arw_payload_qos = io_input_arw_payload_qos;
  assign io_sharedOutputs_0_arw_payload_prot = io_input_arw_payload_prot;
  assign io_sharedOutputs_0_arw_payload_write = io_input_arw_payload_write;
  assign io_sharedOutputs_1_arw_valid = ((io_input_arw_valid && _zz_io_sharedOutputs_0_arw_valid[1]) && allowCmd);
  assign io_sharedOutputs_1_arw_payload_addr = io_input_arw_payload_addr;
  assign io_sharedOutputs_1_arw_payload_id = io_input_arw_payload_id;
  assign io_sharedOutputs_1_arw_payload_region = io_input_arw_payload_region;
  assign io_sharedOutputs_1_arw_payload_len = io_input_arw_payload_len;
  assign io_sharedOutputs_1_arw_payload_size = io_input_arw_payload_size;
  assign io_sharedOutputs_1_arw_payload_burst = io_input_arw_payload_burst;
  assign io_sharedOutputs_1_arw_payload_lock = io_input_arw_payload_lock;
  assign io_sharedOutputs_1_arw_payload_cache = io_input_arw_payload_cache;
  assign io_sharedOutputs_1_arw_payload_qos = io_input_arw_payload_qos;
  assign io_sharedOutputs_1_arw_payload_prot = io_input_arw_payload_prot;
  assign io_sharedOutputs_1_arw_payload_write = io_input_arw_payload_write;
  assign io_input_w_ready = (((|({pendingSels[6 : 5],pendingSels[4 : 3]} & {io_sharedOutputs_1_w_ready,{io_sharedOutputs_0_w_ready,{io_writeOutputs_1_w_ready,io_writeOutputs_0_w_ready}}})) || (pendingError && errorSlave_io_axi_w_ready)) && allowData);
  assign errorSlave_io_axi_w_valid = ((io_input_w_valid && pendingError) && allowData);
  assign _zz_io_writeOutputs_0_w_valid = pendingSels[4 : 3];
  assign io_writeOutputs_0_w_valid = ((io_input_w_valid && _zz_io_writeOutputs_0_w_valid[0]) && allowData);
  assign io_writeOutputs_0_w_payload_data = io_input_w_payload_data;
  assign io_writeOutputs_0_w_payload_strb = io_input_w_payload_strb;
  assign io_writeOutputs_0_w_payload_last = io_input_w_payload_last;
  assign io_writeOutputs_1_w_valid = ((io_input_w_valid && _zz_io_writeOutputs_0_w_valid[1]) && allowData);
  assign io_writeOutputs_1_w_payload_data = io_input_w_payload_data;
  assign io_writeOutputs_1_w_payload_strb = io_input_w_payload_strb;
  assign io_writeOutputs_1_w_payload_last = io_input_w_payload_last;
  assign _zz_io_sharedOutputs_0_w_valid = pendingSels[6 : 5];
  assign io_sharedOutputs_0_w_valid = ((io_input_w_valid && _zz_io_sharedOutputs_0_w_valid[0]) && allowData);
  assign io_sharedOutputs_0_w_payload_data = io_input_w_payload_data;
  assign io_sharedOutputs_0_w_payload_strb = io_input_w_payload_strb;
  assign io_sharedOutputs_0_w_payload_last = io_input_w_payload_last;
  assign io_sharedOutputs_1_w_valid = ((io_input_w_valid && _zz_io_sharedOutputs_0_w_valid[1]) && allowData);
  assign io_sharedOutputs_1_w_payload_data = io_input_w_payload_data;
  assign io_sharedOutputs_1_w_payload_strb = io_input_w_payload_strb;
  assign io_sharedOutputs_1_w_payload_last = io_input_w_payload_last;
  assign _zz_writeRspIndex = {pendingSels[6 : 5],pendingSels[4 : 3]};
  assign _zz_writeRspIndex_1 = _zz_writeRspIndex[3];
  assign _zz_writeRspIndex_2 = (_zz_writeRspIndex[1] || _zz_writeRspIndex_1);
  assign _zz_writeRspIndex_3 = (_zz_writeRspIndex[2] || _zz_writeRspIndex_1);
  assign writeRspIndex = {_zz_writeRspIndex_3,_zz_writeRspIndex_2};
  assign io_input_b_valid = ((|{io_sharedOutputs_1_b_valid,{io_sharedOutputs_0_b_valid,{io_writeOutputs_1_b_valid,io_writeOutputs_0_b_valid}}}) || errorSlave_io_axi_b_valid);
  always @(*) begin
    io_input_b_payload_id = _zz_io_input_b_payload_id;
    if(pendingError) begin
      io_input_b_payload_id = errorSlave_io_axi_b_payload_id;
    end
  end

  always @(*) begin
    io_input_b_payload_resp = _zz_io_input_b_payload_resp;
    if(pendingError) begin
      io_input_b_payload_resp = errorSlave_io_axi_b_payload_resp;
    end
  end

  assign io_writeOutputs_0_b_ready = io_input_b_ready;
  assign io_writeOutputs_1_b_ready = io_input_b_ready;
  assign io_sharedOutputs_0_b_ready = io_input_b_ready;
  assign io_sharedOutputs_1_b_ready = io_input_b_ready;
  assign _zz_readRspIndex = {pendingSels[6 : 5],pendingSels[2 : 0]};
  assign _zz_readRspIndex_1 = _zz_readRspIndex[3];
  assign _zz_readRspIndex_2 = _zz_readRspIndex[4];
  assign _zz_readRspIndex_3 = (_zz_readRspIndex[1] || _zz_readRspIndex_1);
  assign _zz_readRspIndex_4 = (_zz_readRspIndex[2] || _zz_readRspIndex_1);
  assign readRspIndex = {_zz_readRspIndex_2,{_zz_readRspIndex_4,_zz_readRspIndex_3}};
  assign io_input_r_valid = ((|{io_sharedOutputs_1_r_valid,{io_sharedOutputs_0_r_valid,{io_readOutputs_2_r_valid,{io_readOutputs_1_r_valid,io_readOutputs_0_r_valid}}}}) || errorSlave_io_axi_r_valid);
  assign io_input_r_payload_data = _zz_io_input_r_payload_data;
  always @(*) begin
    io_input_r_payload_id = _zz_io_input_r_payload_id;
    if(pendingError) begin
      io_input_r_payload_id = errorSlave_io_axi_r_payload_id;
    end
  end

  always @(*) begin
    io_input_r_payload_resp = _zz_io_input_r_payload_resp;
    if(pendingError) begin
      io_input_r_payload_resp = errorSlave_io_axi_r_payload_resp;
    end
  end

  always @(*) begin
    io_input_r_payload_last = _zz_io_input_r_payload_last;
    if(pendingError) begin
      io_input_r_payload_last = errorSlave_io_axi_r_payload_last;
    end
  end

  assign io_readOutputs_0_r_ready = io_input_r_ready;
  assign io_readOutputs_1_r_ready = io_input_r_ready;
  assign io_readOutputs_2_r_ready = io_input_r_ready;
  assign io_sharedOutputs_0_r_ready = io_input_r_ready;
  assign io_sharedOutputs_1_r_ready = io_input_r_ready;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      pendingCmdCounter <= 3'b000;
      pendingDataCounter_value <= 3'b000;
      pendingSels <= 7'h0;
      pendingError <= 1'b0;
      _zz_cmdAllowedStart <= 1'b1;
    end else begin
      pendingCmdCounter <= _zz_pendingCmdCounter;
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
      if(io_input_arw_ready) begin
        _zz_cmdAllowedStart <= 1'b1;
      end
    end
  end


endmodule

module Axi4SharedErrorSlave (
  input               io_axi_arw_valid,
  output              io_axi_arw_ready,
  input      [15:0]   io_axi_arw_payload_addr,
  input      [3:0]    io_axi_arw_payload_id,
  input      [3:0]    io_axi_arw_payload_region,
  input      [7:0]    io_axi_arw_payload_len,
  input      [2:0]    io_axi_arw_payload_size,
  input      [1:0]    io_axi_arw_payload_burst,
  input      [0:0]    io_axi_arw_payload_lock,
  input      [3:0]    io_axi_arw_payload_cache,
  input      [3:0]    io_axi_arw_payload_qos,
  input      [2:0]    io_axi_arw_payload_prot,
  input               io_axi_arw_payload_write,
  input               io_axi_w_valid,
  output              io_axi_w_ready,
  input      [31:0]   io_axi_w_payload_data,
  input      [3:0]    io_axi_w_payload_strb,
  input               io_axi_w_payload_last,
  output              io_axi_b_valid,
  input               io_axi_b_ready,
  output     [3:0]    io_axi_b_payload_id,
  output     [1:0]    io_axi_b_payload_resp,
  output              io_axi_r_valid,
  input               io_axi_r_ready,
  output     [31:0]   io_axi_r_payload_data,
  output     [3:0]    io_axi_r_payload_id,
  output     [1:0]    io_axi_r_payload_resp,
  output              io_axi_r_payload_last,
  input               clk,
  input               reset
);

  reg                 consumeData;
  reg                 sendReadRsp;
  reg                 sendWriteRsp;
  reg        [3:0]    id;
  reg        [7:0]    remaining;
  wire                remainingZero;
  wire                io_axi_arw_fire;
  wire                io_axi_w_fire;
  wire                when_Axi4ErrorSlave_l92;
  wire                io_axi_b_fire;

  assign remainingZero = (remaining == 8'h0);
  assign io_axi_arw_ready = (! ((consumeData || sendWriteRsp) || sendReadRsp));
  assign io_axi_arw_fire = (io_axi_arw_valid && io_axi_arw_ready);
  assign io_axi_w_ready = consumeData;
  assign io_axi_w_fire = (io_axi_w_valid && io_axi_w_ready);
  assign when_Axi4ErrorSlave_l92 = (io_axi_w_fire && io_axi_w_payload_last);
  assign io_axi_b_valid = sendWriteRsp;
  assign io_axi_b_payload_resp = 2'b11;
  assign io_axi_b_payload_id = id;
  assign io_axi_b_fire = (io_axi_b_valid && io_axi_b_ready);
  assign io_axi_r_valid = sendReadRsp;
  assign io_axi_r_payload_id = id;
  assign io_axi_r_payload_resp = 2'b11;
  assign io_axi_r_payload_last = remainingZero;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      consumeData <= 1'b0;
      sendReadRsp <= 1'b0;
      sendWriteRsp <= 1'b0;
    end else begin
      if(io_axi_arw_fire) begin
        consumeData <= io_axi_arw_payload_write;
        sendReadRsp <= (! io_axi_arw_payload_write);
      end
      if(when_Axi4ErrorSlave_l92) begin
        consumeData <= 1'b0;
        sendWriteRsp <= 1'b1;
      end
      if(io_axi_b_fire) begin
        sendWriteRsp <= 1'b0;
      end
      if(sendReadRsp) begin
        if(io_axi_r_ready) begin
          if(remainingZero) begin
            sendReadRsp <= 1'b0;
          end
        end
      end
    end
  end

  always @(posedge clk) begin
    if(io_axi_arw_fire) begin
      remaining <= io_axi_arw_payload_len;
      id <= io_axi_arw_payload_id;
    end
    if(sendReadRsp) begin
      if(io_axi_r_ready) begin
        remaining <= (remaining - 8'h01);
      end
    end
  end


endmodule
