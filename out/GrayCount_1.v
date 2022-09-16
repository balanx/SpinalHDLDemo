// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : GrayCount_1
// Git hash  : 40a09e7801b4d01ff6c67f3e402af9d0310f44f7

`timescale 1ns/1ps

module GrayCount_1 (
  input               io_clr,
  input               io_inc,
  output     [7:0]    io_cnt,
  input               a_clk,
  input               a_reset,
  input               b_clk,
  input               b_reset
);

  wire       [7:0]    areaA_gray_buffercc_io_dataOut;
  reg        [7:0]    areaA_gray;
  reg                 _zz_when_Utils_l397;
  wire       [7:0]    _zz_when_Utils_l397_1;
  reg                 _zz_when_Utils_l397_2;
  reg                 _zz_when_Utils_l397_3;
  reg                 _zz_when_Utils_l397_4;
  reg                 _zz_when_Utils_l397_5;
  reg                 _zz_when_Utils_l397_6;
  reg                 _zz_when_Utils_l397_7;
  reg                 _zz_when_Utils_l397_8;
  wire                when_Utils_l397;
  wire                when_Utils_l397_1;
  wire                when_Utils_l397_2;
  wire                when_Utils_l397_3;
  wire                when_Utils_l397_4;
  wire                when_Utils_l397_5;
  wire                when_Utils_l397_6;
  wire                when_Utils_l397_7;
  wire       [7:0]    areaB_graycc;
  wire                _zz_io_cnt;
  wire                _zz_io_cnt_1;
  wire                _zz_io_cnt_2;
  wire                _zz_io_cnt_3;
  wire                _zz_io_cnt_4;
  wire                _zz_io_cnt_5;
  wire                _zz_io_cnt_6;

  BufferCC areaA_gray_buffercc (
    .io_dataIn  (areaA_gray[7:0]                    ), //i
    .io_dataOut (areaA_gray_buffercc_io_dataOut[7:0]), //o
    .b_clk      (b_clk                              ), //i
    .b_reset    (b_reset                            )  //i
  );
  assign _zz_when_Utils_l397_1 = {1'b1,{areaA_gray[5 : 0],_zz_when_Utils_l397}};
  always @(*) begin
    _zz_when_Utils_l397_2 = _zz_when_Utils_l397_3;
    if(when_Utils_l397_6) begin
      _zz_when_Utils_l397_2 = 1'b1;
    end
  end

  always @(*) begin
    _zz_when_Utils_l397_3 = _zz_when_Utils_l397_4;
    if(when_Utils_l397_5) begin
      _zz_when_Utils_l397_3 = 1'b1;
    end
  end

  always @(*) begin
    _zz_when_Utils_l397_4 = _zz_when_Utils_l397_5;
    if(when_Utils_l397_4) begin
      _zz_when_Utils_l397_4 = 1'b1;
    end
  end

  always @(*) begin
    _zz_when_Utils_l397_5 = _zz_when_Utils_l397_6;
    if(when_Utils_l397_3) begin
      _zz_when_Utils_l397_5 = 1'b1;
    end
  end

  always @(*) begin
    _zz_when_Utils_l397_6 = _zz_when_Utils_l397_7;
    if(when_Utils_l397_2) begin
      _zz_when_Utils_l397_6 = 1'b1;
    end
  end

  always @(*) begin
    _zz_when_Utils_l397_7 = _zz_when_Utils_l397_8;
    if(when_Utils_l397_1) begin
      _zz_when_Utils_l397_7 = 1'b1;
    end
  end

  always @(*) begin
    _zz_when_Utils_l397_8 = 1'b0;
    if(when_Utils_l397) begin
      _zz_when_Utils_l397_8 = 1'b1;
    end
  end

  assign when_Utils_l397 = (_zz_when_Utils_l397_1[0] && (! 1'b0));
  assign when_Utils_l397_1 = (_zz_when_Utils_l397_1[1] && (! _zz_when_Utils_l397_8));
  assign when_Utils_l397_2 = (_zz_when_Utils_l397_1[2] && (! _zz_when_Utils_l397_7));
  assign when_Utils_l397_3 = (_zz_when_Utils_l397_1[3] && (! _zz_when_Utils_l397_6));
  assign when_Utils_l397_4 = (_zz_when_Utils_l397_1[4] && (! _zz_when_Utils_l397_5));
  assign when_Utils_l397_5 = (_zz_when_Utils_l397_1[5] && (! _zz_when_Utils_l397_4));
  assign when_Utils_l397_6 = (_zz_when_Utils_l397_1[6] && (! _zz_when_Utils_l397_3));
  assign when_Utils_l397_7 = (_zz_when_Utils_l397_1[7] && (! _zz_when_Utils_l397_2));
  assign areaB_graycc = areaA_gray_buffercc_io_dataOut;
  assign _zz_io_cnt = (areaB_graycc[1] ^ _zz_io_cnt_1);
  assign _zz_io_cnt_1 = (areaB_graycc[2] ^ _zz_io_cnt_2);
  assign _zz_io_cnt_2 = (areaB_graycc[3] ^ _zz_io_cnt_3);
  assign _zz_io_cnt_3 = (areaB_graycc[4] ^ _zz_io_cnt_4);
  assign _zz_io_cnt_4 = (areaB_graycc[5] ^ _zz_io_cnt_5);
  assign _zz_io_cnt_5 = (areaB_graycc[6] ^ _zz_io_cnt_6);
  assign _zz_io_cnt_6 = areaB_graycc[7];
  assign io_cnt = {_zz_io_cnt_6,{_zz_io_cnt_5,{_zz_io_cnt_4,{_zz_io_cnt_3,{_zz_io_cnt_2,{_zz_io_cnt_1,{_zz_io_cnt,(areaB_graycc[0] ^ _zz_io_cnt)}}}}}}};
  always @(posedge a_clk or posedge a_reset) begin
    if(a_reset) begin
      areaA_gray <= 8'h0;
      _zz_when_Utils_l397 <= 1'b1;
    end else begin
      if(io_inc) begin
        if(when_Utils_l397) begin
          areaA_gray[0] <= (! areaA_gray[0]);
        end
        if(when_Utils_l397_1) begin
          areaA_gray[1] <= (! areaA_gray[1]);
        end
        if(when_Utils_l397_2) begin
          areaA_gray[2] <= (! areaA_gray[2]);
        end
        if(when_Utils_l397_3) begin
          areaA_gray[3] <= (! areaA_gray[3]);
        end
        if(when_Utils_l397_4) begin
          areaA_gray[4] <= (! areaA_gray[4]);
        end
        if(when_Utils_l397_5) begin
          areaA_gray[5] <= (! areaA_gray[5]);
        end
        if(when_Utils_l397_6) begin
          areaA_gray[6] <= (! areaA_gray[6]);
        end
        if(when_Utils_l397_7) begin
          areaA_gray[7] <= (! areaA_gray[7]);
        end
        _zz_when_Utils_l397 <= (! _zz_when_Utils_l397);
      end
      if(io_clr) begin
        areaA_gray <= 8'h0;
      end
    end
  end


endmodule

module BufferCC (
  input      [7:0]    io_dataIn,
  output     [7:0]    io_dataOut,
  input               b_clk,
  input               b_reset
);

  (* async_reg = "true" *) reg        [7:0]    buffers_0;
  (* async_reg = "true" *) reg        [7:0]    buffers_1;
  (* async_reg = "true" *) reg        [7:0]    buffers_2;

  assign io_dataOut = buffers_2;
  always @(posedge b_clk or posedge b_reset) begin
    if(b_reset) begin
      buffers_0 <= 8'h0;
      buffers_1 <= 8'h0;
      buffers_2 <= 8'h0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
      buffers_2 <= buffers_1;
    end
  end


endmodule
