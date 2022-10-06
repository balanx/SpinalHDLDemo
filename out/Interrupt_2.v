// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : Interrupt_2
// Git hash  : 23d564a3e9d4d768c2cb1641ec7dc2becc0d2602

`timescale 1ns/1ps

module Interrupt_2 (
  input      [15:0]   io_apb_PADDR,
  input      [0:0]    io_apb_PSEL,
  input               io_apb_PENABLE,
  output              io_apb_PREADY,
  input               io_apb_PWRITE,
  input      [31:0]   io_apb_PWDATA,
  output     [31:0]   io_apb_PRDATA,
  output              io_apb_PSLVERROR,
  input               io_int_pulse0,
  input               io_int_pulse1,
  input               io_int_pulse2,
  input               io_int_pulse3,
  input               io_int_level0,
  input               io_int_level1,
  input               io_int_level2,
  output              io_sys_int,
  output              io_gpio_int,
  input               clk,
  input               reset
);

  reg                 busif_readError;
  reg        [31:0]   busif_readData;
  wire                busif_askWrite;
  wire                busif_askRead;
  wire                busif_doWrite;
  wire                busif_doRead;
  wire                read_hit_0x0000;
  wire                write_hit_0x0000;
  wire                read_hit_0x0004;
  wire                write_hit_0x0004;
  wire                read_hit_0x0008;
  wire                write_hit_0x0008;
  wire                read_hit_0x000c;
  wire                write_hit_0x000c;
  reg        [0:0]    _zz_busif_readData;
  reg        [0:0]    _zz_busif_readData_1;
  wire                when_RegInst_l554;
  reg        [0:0]    _zz_busif_readData_2;
  wire       [0:0]    _zz_busif_readData_3;
  reg        [0:0]    _zz_busif_readData_4;
  reg        [0:0]    _zz_busif_readData_5;
  wire                when_RegInst_l554_1;
  reg        [0:0]    _zz_busif_readData_6;
  wire       [0:0]    _zz_busif_readData_7;
  reg        [0:0]    _zz_busif_readData_8;
  reg        [0:0]    _zz_busif_readData_9;
  wire                when_RegInst_l554_2;
  reg        [0:0]    _zz_busif_readData_10;
  wire       [0:0]    _zz_busif_readData_11;
  reg        [0:0]    _zz_busif_readData_12;
  reg        [0:0]    _zz_busif_readData_13;
  wire                when_RegInst_l554_3;
  reg        [0:0]    _zz_busif_readData_14;
  wire       [0:0]    _zz_busif_readData_15;
  wire                SYS_intr;
  wire                read_hit_0x0010;
  wire                write_hit_0x0010;
  wire                read_hit_0x0014;
  wire                write_hit_0x0014;
  reg        [0:0]    _zz_busif_readData_16;
  wire       [0:0]    _zz_busif_readData_17;
  reg        [0:0]    _zz_busif_readData_18;
  wire       [0:0]    _zz_busif_readData_19;
  reg        [0:0]    _zz_busif_readData_20;
  wire       [0:0]    _zz_busif_readData_21;
  reg        [0:0]    _zz_busif_readData_22;
  wire       [0:0]    _zz_busif_readData_23;
  wire                GPIO_intr;

  assign io_apb_PREADY = 1'b1;
  assign io_apb_PRDATA = busif_readData;
  assign io_apb_PSLVERROR = busif_readError;
  assign busif_askWrite = (io_apb_PSEL[0] && io_apb_PWRITE);
  assign busif_askRead = (io_apb_PSEL[0] && (! io_apb_PWRITE));
  assign busif_doWrite = ((busif_askWrite && io_apb_PENABLE) && io_apb_PREADY);
  assign busif_doRead = ((busif_askRead && io_apb_PENABLE) && io_apb_PREADY);
  assign read_hit_0x0000 = ((io_apb_PADDR == 16'h0) && busif_doRead);
  assign write_hit_0x0000 = ((io_apb_PADDR == 16'h0) && busif_doWrite);
  assign read_hit_0x0004 = ((io_apb_PADDR == 16'h0004) && busif_doRead);
  assign write_hit_0x0004 = ((io_apb_PADDR == 16'h0004) && busif_doWrite);
  assign read_hit_0x0008 = ((io_apb_PADDR == 16'h0008) && busif_doRead);
  assign write_hit_0x0008 = ((io_apb_PADDR == 16'h0008) && busif_doWrite);
  assign read_hit_0x000c = ((io_apb_PADDR == 16'h000c) && busif_doRead);
  assign write_hit_0x000c = ((io_apb_PADDR == 16'h000c) && busif_doWrite);
  assign when_RegInst_l554 = io_apb_PWDATA[0];
  assign _zz_busif_readData_3[0] = ((_zz_busif_readData_1[0] || _zz_busif_readData[0]) && (! _zz_busif_readData_2[0]));
  assign when_RegInst_l554_1 = io_apb_PWDATA[1];
  assign _zz_busif_readData_7[0] = ((_zz_busif_readData_5[0] || _zz_busif_readData_4[0]) && (! _zz_busif_readData_6[0]));
  assign when_RegInst_l554_2 = io_apb_PWDATA[2];
  assign _zz_busif_readData_11[0] = ((_zz_busif_readData_9[0] || _zz_busif_readData_8[0]) && (! _zz_busif_readData_10[0]));
  assign when_RegInst_l554_3 = io_apb_PWDATA[3];
  assign _zz_busif_readData_15[0] = ((_zz_busif_readData_13[0] || _zz_busif_readData_12[0]) && (! _zz_busif_readData_14[0]));
  assign SYS_intr = (|(((_zz_busif_readData_3[0] || _zz_busif_readData_7[0]) || _zz_busif_readData_11[0]) || _zz_busif_readData_15[0]));
  assign io_sys_int = SYS_intr;
  assign read_hit_0x0010 = ((io_apb_PADDR == 16'h0010) && busif_doRead);
  assign write_hit_0x0010 = ((io_apb_PADDR == 16'h0010) && busif_doWrite);
  assign read_hit_0x0014 = ((io_apb_PADDR == 16'h0014) && busif_doRead);
  assign write_hit_0x0014 = ((io_apb_PADDR == 16'h0014) && busif_doWrite);
  assign _zz_busif_readData_17[0] = (io_int_level0 && (! _zz_busif_readData_16[0]));
  assign _zz_busif_readData_19[0] = (io_int_level1 && (! _zz_busif_readData_18[0]));
  assign _zz_busif_readData_21[0] = (io_int_level2 && (! _zz_busif_readData_20[0]));
  assign _zz_busif_readData_23[0] = (io_sys_int && (! _zz_busif_readData_22[0]));
  assign GPIO_intr = (|(((_zz_busif_readData_17[0] || _zz_busif_readData_19[0]) || _zz_busif_readData_21[0]) || _zz_busif_readData_23[0]));
  assign io_gpio_int = GPIO_intr;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      busif_readError <= 1'b0;
      busif_readData <= 32'h0;
      _zz_busif_readData <= 1'b0;
      _zz_busif_readData_1 <= 1'b0;
      _zz_busif_readData_2 <= 1'b1;
      _zz_busif_readData_4 <= 1'b0;
      _zz_busif_readData_5 <= 1'b0;
      _zz_busif_readData_6 <= 1'b1;
      _zz_busif_readData_8 <= 1'b0;
      _zz_busif_readData_9 <= 1'b0;
      _zz_busif_readData_10 <= 1'b1;
      _zz_busif_readData_12 <= 1'b0;
      _zz_busif_readData_13 <= 1'b0;
      _zz_busif_readData_14 <= 1'b1;
      _zz_busif_readData_16 <= 1'b1;
      _zz_busif_readData_18 <= 1'b1;
      _zz_busif_readData_20 <= 1'b1;
      _zz_busif_readData_22 <= 1'b1;
    end else begin
      if(write_hit_0x0004) begin
        _zz_busif_readData <= io_apb_PWDATA[0 : 0];
      end
      if(write_hit_0x0000) begin
        if(when_RegInst_l554) begin
          _zz_busif_readData_1[0] <= 1'b0;
        end
      end
      if(write_hit_0x0008) begin
        _zz_busif_readData_2 <= io_apb_PWDATA[0 : 0];
      end
      if(io_int_pulse0) begin
        _zz_busif_readData_1[0] <= 1'b1;
      end
      if(write_hit_0x0004) begin
        _zz_busif_readData_4 <= io_apb_PWDATA[1 : 1];
      end
      if(write_hit_0x0000) begin
        if(when_RegInst_l554_1) begin
          _zz_busif_readData_5[0] <= 1'b0;
        end
      end
      if(write_hit_0x0008) begin
        _zz_busif_readData_6 <= io_apb_PWDATA[1 : 1];
      end
      if(io_int_pulse1) begin
        _zz_busif_readData_5[0] <= 1'b1;
      end
      if(write_hit_0x0004) begin
        _zz_busif_readData_8 <= io_apb_PWDATA[2 : 2];
      end
      if(write_hit_0x0000) begin
        if(when_RegInst_l554_2) begin
          _zz_busif_readData_9[0] <= 1'b0;
        end
      end
      if(write_hit_0x0008) begin
        _zz_busif_readData_10 <= io_apb_PWDATA[2 : 2];
      end
      if(io_int_pulse2) begin
        _zz_busif_readData_9[0] <= 1'b1;
      end
      if(write_hit_0x0004) begin
        _zz_busif_readData_12 <= io_apb_PWDATA[3 : 3];
      end
      if(write_hit_0x0000) begin
        if(when_RegInst_l554_3) begin
          _zz_busif_readData_13[0] <= 1'b0;
        end
      end
      if(write_hit_0x0008) begin
        _zz_busif_readData_14 <= io_apb_PWDATA[3 : 3];
      end
      if(io_int_pulse3) begin
        _zz_busif_readData_13[0] <= 1'b1;
      end
      if(write_hit_0x0010) begin
        _zz_busif_readData_16 <= io_apb_PWDATA[0 : 0];
      end
      if(write_hit_0x0010) begin
        _zz_busif_readData_18 <= io_apb_PWDATA[1 : 1];
      end
      if(write_hit_0x0010) begin
        _zz_busif_readData_20 <= io_apb_PWDATA[2 : 2];
      end
      if(write_hit_0x0010) begin
        _zz_busif_readData_22 <= io_apb_PWDATA[3 : 3];
      end
      if(busif_askRead) begin
        case(io_apb_PADDR)
          16'h0 : begin
            busif_readData <= {28'h0,{_zz_busif_readData_13,{_zz_busif_readData_9,{_zz_busif_readData_5,_zz_busif_readData_1}}}};
            busif_readError <= 1'b0;
          end
          16'h0004 : begin
            busif_readData <= {28'h0,{_zz_busif_readData_12,{_zz_busif_readData_8,{_zz_busif_readData_4,_zz_busif_readData}}}};
            busif_readError <= 1'b0;
          end
          16'h0008 : begin
            busif_readData <= {28'h0,{_zz_busif_readData_14,{_zz_busif_readData_10,{_zz_busif_readData_6,_zz_busif_readData_2}}}};
            busif_readError <= 1'b0;
          end
          16'h000c : begin
            busif_readData <= {28'h0,{_zz_busif_readData_15,{_zz_busif_readData_11,{_zz_busif_readData_7,_zz_busif_readData_3}}}};
            busif_readError <= 1'b0;
          end
          16'h0010 : begin
            busif_readData <= {28'h0,{_zz_busif_readData_22,{_zz_busif_readData_20,{_zz_busif_readData_18,_zz_busif_readData_16}}}};
            busif_readError <= 1'b0;
          end
          16'h0014 : begin
            busif_readData <= {28'h0,{_zz_busif_readData_23,{_zz_busif_readData_21,{_zz_busif_readData_19,_zz_busif_readData_17}}}};
            busif_readError <= 1'b0;
          end
          default : begin
            busif_readData <= 32'h0;
            busif_readError <= 1'b1;
          end
        endcase
      end
    end
  end


endmodule
