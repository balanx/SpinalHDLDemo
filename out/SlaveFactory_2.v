// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : SlaveFactory_2
// Git hash  : 23d564a3e9d4d768c2cb1641ec7dc2becc0d2602

`timescale 1ns/1ps

module SlaveFactory_2 (
  input               io_alite0_aw_valid,
  output              io_alite0_aw_ready,
  input      [31:0]   io_alite0_aw_payload_addr,
  input      [2:0]    io_alite0_aw_payload_prot,
  input               io_alite0_w_valid,
  output              io_alite0_w_ready,
  input      [31:0]   io_alite0_w_payload_data,
  input      [3:0]    io_alite0_w_payload_strb,
  output              io_alite0_b_valid,
  input               io_alite0_b_ready,
  output     [1:0]    io_alite0_b_payload_resp,
  input               io_alite0_ar_valid,
  output              io_alite0_ar_ready,
  input      [31:0]   io_alite0_ar_payload_addr,
  input      [2:0]    io_alite0_ar_payload_prot,
  output              io_alite0_r_valid,
  input               io_alite0_r_ready,
  output     [31:0]   io_alite0_r_payload_data,
  output     [1:0]    io_alite0_r_payload_resp,
  input               io_alite1_aw_valid,
  output              io_alite1_aw_ready,
  input      [31:0]   io_alite1_aw_payload_addr,
  input      [2:0]    io_alite1_aw_payload_prot,
  input               io_alite1_w_valid,
  output              io_alite1_w_ready,
  input      [31:0]   io_alite1_w_payload_data,
  input      [3:0]    io_alite1_w_payload_strb,
  output              io_alite1_b_valid,
  input               io_alite1_b_ready,
  output     [1:0]    io_alite1_b_payload_resp,
  input               io_alite1_ar_valid,
  output              io_alite1_ar_ready,
  input      [31:0]   io_alite1_ar_payload_addr,
  input      [2:0]    io_alite1_ar_payload_prot,
  output              io_alite1_r_valid,
  input               io_alite1_r_ready,
  output     [31:0]   io_alite1_r_payload_data,
  output     [1:0]    io_alite1_r_payload_resp,
  input               clk,
  input               reset
);

  wire                regSeg0_io_alite_aw_ready;
  wire                regSeg0_io_alite_w_ready;
  wire                regSeg0_io_alite_b_valid;
  wire       [1:0]    regSeg0_io_alite_b_payload_resp;
  wire                regSeg0_io_alite_ar_ready;
  wire                regSeg0_io_alite_r_valid;
  wire       [31:0]   regSeg0_io_alite_r_payload_data;
  wire       [1:0]    regSeg0_io_alite_r_payload_resp;
  wire                regSeg1_io_alite_aw_ready;
  wire                regSeg1_io_alite_w_ready;
  wire                regSeg1_io_alite_b_valid;
  wire       [1:0]    regSeg1_io_alite_b_payload_resp;
  wire                regSeg1_io_alite_ar_ready;
  wire                regSeg1_io_alite_r_valid;
  wire       [31:0]   regSeg1_io_alite_r_payload_data;
  wire       [1:0]    regSeg1_io_alite_r_payload_resp;

  regSeg regSeg0 (
    .io_alite_aw_valid        (io_alite0_aw_valid                   ), //i
    .io_alite_aw_ready        (regSeg0_io_alite_aw_ready            ), //o
    .io_alite_aw_payload_addr (io_alite0_aw_payload_addr[31:0]      ), //i
    .io_alite_aw_payload_prot (io_alite0_aw_payload_prot[2:0]       ), //i
    .io_alite_w_valid         (io_alite0_w_valid                    ), //i
    .io_alite_w_ready         (regSeg0_io_alite_w_ready             ), //o
    .io_alite_w_payload_data  (io_alite0_w_payload_data[31:0]       ), //i
    .io_alite_w_payload_strb  (io_alite0_w_payload_strb[3:0]        ), //i
    .io_alite_b_valid         (regSeg0_io_alite_b_valid             ), //o
    .io_alite_b_ready         (io_alite0_b_ready                    ), //i
    .io_alite_b_payload_resp  (regSeg0_io_alite_b_payload_resp[1:0] ), //o
    .io_alite_ar_valid        (io_alite0_ar_valid                   ), //i
    .io_alite_ar_ready        (regSeg0_io_alite_ar_ready            ), //o
    .io_alite_ar_payload_addr (io_alite0_ar_payload_addr[31:0]      ), //i
    .io_alite_ar_payload_prot (io_alite0_ar_payload_prot[2:0]       ), //i
    .io_alite_r_valid         (regSeg0_io_alite_r_valid             ), //o
    .io_alite_r_ready         (io_alite0_r_ready                    ), //i
    .io_alite_r_payload_data  (regSeg0_io_alite_r_payload_data[31:0]), //o
    .io_alite_r_payload_resp  (regSeg0_io_alite_r_payload_resp[1:0] ), //o
    .clk                      (clk                                  ), //i
    .reset                    (reset                                )  //i
  );
  regSeg regSeg1 (
    .io_alite_aw_valid        (io_alite1_aw_valid                   ), //i
    .io_alite_aw_ready        (regSeg1_io_alite_aw_ready            ), //o
    .io_alite_aw_payload_addr (io_alite1_aw_payload_addr[31:0]      ), //i
    .io_alite_aw_payload_prot (io_alite1_aw_payload_prot[2:0]       ), //i
    .io_alite_w_valid         (io_alite1_w_valid                    ), //i
    .io_alite_w_ready         (regSeg1_io_alite_w_ready             ), //o
    .io_alite_w_payload_data  (io_alite1_w_payload_data[31:0]       ), //i
    .io_alite_w_payload_strb  (io_alite1_w_payload_strb[3:0]        ), //i
    .io_alite_b_valid         (regSeg1_io_alite_b_valid             ), //o
    .io_alite_b_ready         (io_alite1_b_ready                    ), //i
    .io_alite_b_payload_resp  (regSeg1_io_alite_b_payload_resp[1:0] ), //o
    .io_alite_ar_valid        (io_alite1_ar_valid                   ), //i
    .io_alite_ar_ready        (regSeg1_io_alite_ar_ready            ), //o
    .io_alite_ar_payload_addr (io_alite1_ar_payload_addr[31:0]      ), //i
    .io_alite_ar_payload_prot (io_alite1_ar_payload_prot[2:0]       ), //i
    .io_alite_r_valid         (regSeg1_io_alite_r_valid             ), //o
    .io_alite_r_ready         (io_alite1_r_ready                    ), //i
    .io_alite_r_payload_data  (regSeg1_io_alite_r_payload_data[31:0]), //o
    .io_alite_r_payload_resp  (regSeg1_io_alite_r_payload_resp[1:0] ), //o
    .clk                      (clk                                  ), //i
    .reset                    (reset                                )  //i
  );
  assign io_alite0_aw_ready = regSeg0_io_alite_aw_ready;
  assign io_alite0_w_ready = regSeg0_io_alite_w_ready;
  assign io_alite0_b_valid = regSeg0_io_alite_b_valid;
  assign io_alite0_b_payload_resp = regSeg0_io_alite_b_payload_resp;
  assign io_alite0_ar_ready = regSeg0_io_alite_ar_ready;
  assign io_alite0_r_valid = regSeg0_io_alite_r_valid;
  assign io_alite0_r_payload_data = regSeg0_io_alite_r_payload_data;
  assign io_alite0_r_payload_resp = regSeg0_io_alite_r_payload_resp;
  assign io_alite1_aw_ready = regSeg1_io_alite_aw_ready;
  assign io_alite1_w_ready = regSeg1_io_alite_w_ready;
  assign io_alite1_b_valid = regSeg1_io_alite_b_valid;
  assign io_alite1_b_payload_resp = regSeg1_io_alite_b_payload_resp;
  assign io_alite1_ar_ready = regSeg1_io_alite_ar_ready;
  assign io_alite1_r_valid = regSeg1_io_alite_r_valid;
  assign io_alite1_r_payload_data = regSeg1_io_alite_r_payload_data;
  assign io_alite1_r_payload_resp = regSeg1_io_alite_r_payload_resp;

endmodule

//regSeg replaced by regSeg

module regSeg (
  input               io_alite_aw_valid,
  output              io_alite_aw_ready,
  input      [31:0]   io_alite_aw_payload_addr,
  input      [2:0]    io_alite_aw_payload_prot,
  input               io_alite_w_valid,
  output              io_alite_w_ready,
  input      [31:0]   io_alite_w_payload_data,
  input      [3:0]    io_alite_w_payload_strb,
  output              io_alite_b_valid,
  input               io_alite_b_ready,
  output     [1:0]    io_alite_b_payload_resp,
  input               io_alite_ar_valid,
  output reg          io_alite_ar_ready,
  input      [31:0]   io_alite_ar_payload_addr,
  input      [2:0]    io_alite_ar_payload_prot,
  output              io_alite_r_valid,
  input               io_alite_r_ready,
  output     [31:0]   io_alite_r_payload_data,
  output     [1:0]    io_alite_r_payload_resp,
  input               clk,
  input               reset
);

  wire                factory_readHaltRequest;
  wire                factory_writeHaltRequest;
  wire                factory_writeJoinEvent_valid;
  wire                factory_writeJoinEvent_ready;
  wire                factory_writeJoinEvent_fire;
  wire       [1:0]    factory_writeRsp_resp;
  wire                factory_writeJoinEvent_translated_valid;
  wire                factory_writeJoinEvent_translated_ready;
  wire       [1:0]    factory_writeJoinEvent_translated_payload_resp;
  wire                _zz_io_alite_b_valid;
  reg                 _zz_factory_writeJoinEvent_translated_ready;
  wire                _zz_io_alite_b_valid_1;
  reg                 _zz_io_alite_b_valid_2;
  reg        [1:0]    _zz_io_alite_b_payload_resp;
  wire                when_Stream_l368;
  wire                factory_readDataStage_valid;
  wire                factory_readDataStage_ready;
  wire       [31:0]   factory_readDataStage_payload_addr;
  wire       [2:0]    factory_readDataStage_payload_prot;
  reg                 io_alite_ar_rValid;
  reg        [31:0]   io_alite_ar_rData_addr;
  reg        [2:0]    io_alite_ar_rData_prot;
  wire                when_Stream_l368_1;
  reg        [31:0]   factory_readRsp_data;
  wire       [1:0]    factory_readRsp_resp;
  wire                _zz_io_alite_r_valid;
  wire       [31:0]   factory_readAddressMasked;
  wire       [31:0]   factory_writeAddressMasked;
  wire                factory_writeOccur;
  wire                factory_readOccur;
  reg        [7:0]    cnt0;
  reg        [7:0]    cnt1;

  assign factory_readHaltRequest = 1'b0;
  assign factory_writeHaltRequest = 1'b0;
  assign factory_writeJoinEvent_fire = (factory_writeJoinEvent_valid && factory_writeJoinEvent_ready);
  assign factory_writeJoinEvent_valid = (io_alite_aw_valid && io_alite_w_valid);
  assign io_alite_aw_ready = factory_writeJoinEvent_fire;
  assign io_alite_w_ready = factory_writeJoinEvent_fire;
  assign factory_writeJoinEvent_translated_valid = factory_writeJoinEvent_valid;
  assign factory_writeJoinEvent_ready = factory_writeJoinEvent_translated_ready;
  assign factory_writeJoinEvent_translated_payload_resp = factory_writeRsp_resp;
  assign _zz_io_alite_b_valid = (! factory_writeHaltRequest);
  assign factory_writeJoinEvent_translated_ready = (_zz_factory_writeJoinEvent_translated_ready && _zz_io_alite_b_valid);
  always @(*) begin
    _zz_factory_writeJoinEvent_translated_ready = io_alite_b_ready;
    if(when_Stream_l368) begin
      _zz_factory_writeJoinEvent_translated_ready = 1'b1;
    end
  end

  assign when_Stream_l368 = (! _zz_io_alite_b_valid_1);
  assign _zz_io_alite_b_valid_1 = _zz_io_alite_b_valid_2;
  assign io_alite_b_valid = _zz_io_alite_b_valid_1;
  assign io_alite_b_payload_resp = _zz_io_alite_b_payload_resp;
  always @(*) begin
    io_alite_ar_ready = factory_readDataStage_ready;
    if(when_Stream_l368_1) begin
      io_alite_ar_ready = 1'b1;
    end
  end

  assign when_Stream_l368_1 = (! factory_readDataStage_valid);
  assign factory_readDataStage_valid = io_alite_ar_rValid;
  assign factory_readDataStage_payload_addr = io_alite_ar_rData_addr;
  assign factory_readDataStage_payload_prot = io_alite_ar_rData_prot;
  assign _zz_io_alite_r_valid = (! factory_readHaltRequest);
  assign factory_readDataStage_ready = (io_alite_r_ready && _zz_io_alite_r_valid);
  assign io_alite_r_valid = (factory_readDataStage_valid && _zz_io_alite_r_valid);
  assign io_alite_r_payload_data = factory_readRsp_data;
  assign io_alite_r_payload_resp = factory_readRsp_resp;
  assign factory_writeRsp_resp = 2'b00;
  assign factory_readRsp_resp = 2'b00;
  always @(*) begin
    factory_readRsp_data = 32'h0;
    case(factory_readAddressMasked)
      32'h0 : begin
        factory_readRsp_data[7 : 0] = cnt0;
      end
      32'h00000004 : begin
        factory_readRsp_data[7 : 0] = cnt1;
      end
      default : begin
      end
    endcase
  end

  assign factory_readAddressMasked = (factory_readDataStage_payload_addr & (~ 32'h00000003));
  assign factory_writeAddressMasked = (io_alite_aw_payload_addr & (~ 32'h00000003));
  assign factory_writeOccur = (factory_writeJoinEvent_valid && factory_writeJoinEvent_ready);
  assign factory_readOccur = (io_alite_r_valid && io_alite_r_ready);
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _zz_io_alite_b_valid_2 <= 1'b0;
      io_alite_ar_rValid <= 1'b0;
    end else begin
      if(_zz_factory_writeJoinEvent_translated_ready) begin
        _zz_io_alite_b_valid_2 <= (factory_writeJoinEvent_translated_valid && _zz_io_alite_b_valid);
      end
      if(io_alite_ar_ready) begin
        io_alite_ar_rValid <= io_alite_ar_valid;
      end
    end
  end

  always @(posedge clk) begin
    if(_zz_factory_writeJoinEvent_translated_ready) begin
      _zz_io_alite_b_payload_resp <= factory_writeJoinEvent_translated_payload_resp;
    end
    if(io_alite_ar_ready) begin
      io_alite_ar_rData_addr <= io_alite_ar_payload_addr;
      io_alite_ar_rData_prot <= io_alite_ar_payload_prot;
    end
    case(factory_writeAddressMasked)
      32'h0 : begin
        if(factory_writeOccur) begin
          cnt0 <= io_alite_w_payload_data[7 : 0];
        end
      end
      32'h00000004 : begin
        if(factory_writeOccur) begin
          cnt1 <= io_alite_w_payload_data[7 : 0];
        end
      end
      default : begin
      end
    endcase
  end


endmodule
