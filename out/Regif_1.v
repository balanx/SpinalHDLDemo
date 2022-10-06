// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : Regif_1
// Git hash  : 23d564a3e9d4d768c2cb1641ec7dc2becc0d2602

`timescale 1ns/1ps

module Regif_1 (
  input      [15:0]   io_apb_PADDR,
  input      [0:0]    io_apb_PSEL,
  input               io_apb_PENABLE,
  output              io_apb_PREADY,
  input               io_apb_PWRITE,
  input      [31:0]   io_apb_PWDATA,
  output     [31:0]   io_apb_PRDATA,
  output              io_apb_PSLVERROR,
  input      [15:0]   io_stats_0,
  input      [15:0]   io_stats_1,
  input      [15:0]   io_stats_2,
  input      [15:0]   io_stats_3,
  input      [15:0]   io_stats_4,
  input      [15:0]   io_stats_5,
  input      [15:0]   io_stats_6,
  input      [15:0]   io_stats_7,
  input      [15:0]   io_stats_8,
  input      [15:0]   io_stats_9,
  output reg [15:0]   io_IQ_0,
  output reg [15:0]   io_IQ_1,
  output reg [15:0]   io_IQ_2,
  output reg [15:0]   io_IQ_3,
  output reg [15:0]   io_IQ_4,
  output reg [15:0]   io_IQ_5,
  output reg [15:0]   io_IQ_6,
  output reg [15:0]   io_IQ_7,
  output reg [15:0]   io_IQ_8,
  output reg [15:0]   io_IQ_9,
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
  reg        [7:0]    real_1;
  reg        [7:0]    imag;
  reg        [15:0]   stat;
  wire                read_hit_0x0004;
  wire                write_hit_0x0004;
  reg        [7:0]    real_2;
  reg        [7:0]    imag_1;
  reg        [15:0]   stat_1;
  wire                read_hit_0x0008;
  wire                write_hit_0x0008;
  reg        [7:0]    real_3;
  reg        [7:0]    imag_2;
  reg        [15:0]   stat_2;
  wire                read_hit_0x000c;
  wire                write_hit_0x000c;
  reg        [7:0]    real_4;
  reg        [7:0]    imag_3;
  reg        [15:0]   stat_3;
  wire                read_hit_0x0010;
  wire                write_hit_0x0010;
  reg        [7:0]    real_5;
  reg        [7:0]    imag_4;
  reg        [15:0]   stat_4;
  wire                read_hit_0x0014;
  wire                write_hit_0x0014;
  reg        [7:0]    real_6;
  reg        [7:0]    imag_5;
  reg        [15:0]   stat_5;
  wire                read_hit_0x0018;
  wire                write_hit_0x0018;
  reg        [7:0]    real_7;
  reg        [7:0]    imag_6;
  reg        [15:0]   stat_6;
  wire                read_hit_0x001c;
  wire                write_hit_0x001c;
  reg        [7:0]    real_8;
  reg        [7:0]    imag_7;
  reg        [15:0]   stat_7;
  wire                read_hit_0x0020;
  wire                write_hit_0x0020;
  reg        [7:0]    real_9;
  reg        [7:0]    imag_8;
  reg        [15:0]   stat_8;
  wire                read_hit_0x0024;
  wire                write_hit_0x0024;
  reg        [7:0]    real_10;
  reg        [7:0]    imag_9;
  reg        [15:0]   stat_9;

  assign io_apb_PREADY = 1'b1;
  assign io_apb_PRDATA = busif_readData;
  assign io_apb_PSLVERROR = busif_readError;
  assign busif_askWrite = (io_apb_PSEL[0] && io_apb_PWRITE);
  assign busif_askRead = (io_apb_PSEL[0] && (! io_apb_PWRITE));
  assign busif_doWrite = ((busif_askWrite && io_apb_PENABLE) && io_apb_PREADY);
  assign busif_doRead = ((busif_askRead && io_apb_PENABLE) && io_apb_PREADY);
  assign read_hit_0x0000 = ((io_apb_PADDR == 16'h0) && busif_doRead);
  assign write_hit_0x0000 = ((io_apb_PADDR == 16'h0) && busif_doWrite);
  always @(*) begin
    io_IQ_0[7 : 0] = real_1;
    io_IQ_0[15 : 8] = imag;
  end

  assign read_hit_0x0004 = ((io_apb_PADDR == 16'h0004) && busif_doRead);
  assign write_hit_0x0004 = ((io_apb_PADDR == 16'h0004) && busif_doWrite);
  always @(*) begin
    io_IQ_1[7 : 0] = real_2;
    io_IQ_1[15 : 8] = imag_1;
  end

  assign read_hit_0x0008 = ((io_apb_PADDR == 16'h0008) && busif_doRead);
  assign write_hit_0x0008 = ((io_apb_PADDR == 16'h0008) && busif_doWrite);
  always @(*) begin
    io_IQ_2[7 : 0] = real_3;
    io_IQ_2[15 : 8] = imag_2;
  end

  assign read_hit_0x000c = ((io_apb_PADDR == 16'h000c) && busif_doRead);
  assign write_hit_0x000c = ((io_apb_PADDR == 16'h000c) && busif_doWrite);
  always @(*) begin
    io_IQ_3[7 : 0] = real_4;
    io_IQ_3[15 : 8] = imag_3;
  end

  assign read_hit_0x0010 = ((io_apb_PADDR == 16'h0010) && busif_doRead);
  assign write_hit_0x0010 = ((io_apb_PADDR == 16'h0010) && busif_doWrite);
  always @(*) begin
    io_IQ_4[7 : 0] = real_5;
    io_IQ_4[15 : 8] = imag_4;
  end

  assign read_hit_0x0014 = ((io_apb_PADDR == 16'h0014) && busif_doRead);
  assign write_hit_0x0014 = ((io_apb_PADDR == 16'h0014) && busif_doWrite);
  always @(*) begin
    io_IQ_5[7 : 0] = real_6;
    io_IQ_5[15 : 8] = imag_5;
  end

  assign read_hit_0x0018 = ((io_apb_PADDR == 16'h0018) && busif_doRead);
  assign write_hit_0x0018 = ((io_apb_PADDR == 16'h0018) && busif_doWrite);
  always @(*) begin
    io_IQ_6[7 : 0] = real_7;
    io_IQ_6[15 : 8] = imag_6;
  end

  assign read_hit_0x001c = ((io_apb_PADDR == 16'h001c) && busif_doRead);
  assign write_hit_0x001c = ((io_apb_PADDR == 16'h001c) && busif_doWrite);
  always @(*) begin
    io_IQ_7[7 : 0] = real_8;
    io_IQ_7[15 : 8] = imag_7;
  end

  assign read_hit_0x0020 = ((io_apb_PADDR == 16'h0020) && busif_doRead);
  assign write_hit_0x0020 = ((io_apb_PADDR == 16'h0020) && busif_doWrite);
  always @(*) begin
    io_IQ_8[7 : 0] = real_9;
    io_IQ_8[15 : 8] = imag_8;
  end

  assign read_hit_0x0024 = ((io_apb_PADDR == 16'h0024) && busif_doRead);
  assign write_hit_0x0024 = ((io_apb_PADDR == 16'h0024) && busif_doWrite);
  always @(*) begin
    io_IQ_9[7 : 0] = real_10;
    io_IQ_9[15 : 8] = imag_9;
  end

  always @(posedge clk or posedge reset) begin
    if(reset) begin
      busif_readError <= 1'b0;
      busif_readData <= 32'h0;
      real_1 <= 8'h0;
      imag <= 8'h0;
      stat <= 16'h0;
      real_2 <= 8'h0;
      imag_1 <= 8'h0;
      stat_1 <= 16'h0;
      real_3 <= 8'h0;
      imag_2 <= 8'h0;
      stat_2 <= 16'h0;
      real_4 <= 8'h0;
      imag_3 <= 8'h0;
      stat_3 <= 16'h0;
      real_5 <= 8'h0;
      imag_4 <= 8'h0;
      stat_4 <= 16'h0;
      real_6 <= 8'h0;
      imag_5 <= 8'h0;
      stat_5 <= 16'h0;
      real_7 <= 8'h0;
      imag_6 <= 8'h0;
      stat_6 <= 16'h0;
      real_8 <= 8'h0;
      imag_7 <= 8'h0;
      stat_7 <= 16'h0;
      real_9 <= 8'h0;
      imag_8 <= 8'h0;
      stat_8 <= 16'h0;
      real_10 <= 8'h0;
      imag_9 <= 8'h0;
      stat_9 <= 16'h0;
    end else begin
      if(write_hit_0x0000) begin
        real_1 <= io_apb_PWDATA[7 : 0];
      end
      if(write_hit_0x0000) begin
        imag <= io_apb_PWDATA[15 : 8];
      end
      stat <= io_stats_0;
      if(write_hit_0x0004) begin
        real_2 <= io_apb_PWDATA[7 : 0];
      end
      if(write_hit_0x0004) begin
        imag_1 <= io_apb_PWDATA[15 : 8];
      end
      stat_1 <= io_stats_1;
      if(write_hit_0x0008) begin
        real_3 <= io_apb_PWDATA[7 : 0];
      end
      if(write_hit_0x0008) begin
        imag_2 <= io_apb_PWDATA[15 : 8];
      end
      stat_2 <= io_stats_2;
      if(write_hit_0x000c) begin
        real_4 <= io_apb_PWDATA[7 : 0];
      end
      if(write_hit_0x000c) begin
        imag_3 <= io_apb_PWDATA[15 : 8];
      end
      stat_3 <= io_stats_3;
      if(write_hit_0x0010) begin
        real_5 <= io_apb_PWDATA[7 : 0];
      end
      if(write_hit_0x0010) begin
        imag_4 <= io_apb_PWDATA[15 : 8];
      end
      stat_4 <= io_stats_4;
      if(write_hit_0x0014) begin
        real_6 <= io_apb_PWDATA[7 : 0];
      end
      if(write_hit_0x0014) begin
        imag_5 <= io_apb_PWDATA[15 : 8];
      end
      stat_5 <= io_stats_5;
      if(write_hit_0x0018) begin
        real_7 <= io_apb_PWDATA[7 : 0];
      end
      if(write_hit_0x0018) begin
        imag_6 <= io_apb_PWDATA[15 : 8];
      end
      stat_6 <= io_stats_6;
      if(write_hit_0x001c) begin
        real_8 <= io_apb_PWDATA[7 : 0];
      end
      if(write_hit_0x001c) begin
        imag_7 <= io_apb_PWDATA[15 : 8];
      end
      stat_7 <= io_stats_7;
      if(write_hit_0x0020) begin
        real_9 <= io_apb_PWDATA[7 : 0];
      end
      if(write_hit_0x0020) begin
        imag_8 <= io_apb_PWDATA[15 : 8];
      end
      stat_8 <= io_stats_8;
      if(write_hit_0x0024) begin
        real_10 <= io_apb_PWDATA[7 : 0];
      end
      if(write_hit_0x0024) begin
        imag_9 <= io_apb_PWDATA[15 : 8];
      end
      stat_9 <= io_stats_9;
      if(busif_askRead) begin
        case(io_apb_PADDR)
          16'h0 : begin
            busif_readData <= {stat,{imag,real_1}};
            busif_readError <= 1'b0;
          end
          16'h0004 : begin
            busif_readData <= {stat_1,{imag_1,real_2}};
            busif_readError <= 1'b0;
          end
          16'h0008 : begin
            busif_readData <= {stat_2,{imag_2,real_3}};
            busif_readError <= 1'b0;
          end
          16'h000c : begin
            busif_readData <= {stat_3,{imag_3,real_4}};
            busif_readError <= 1'b0;
          end
          16'h0010 : begin
            busif_readData <= {stat_4,{imag_4,real_5}};
            busif_readError <= 1'b0;
          end
          16'h0014 : begin
            busif_readData <= {stat_5,{imag_5,real_6}};
            busif_readError <= 1'b0;
          end
          16'h0018 : begin
            busif_readData <= {stat_6,{imag_6,real_7}};
            busif_readError <= 1'b0;
          end
          16'h001c : begin
            busif_readData <= {stat_7,{imag_7,real_8}};
            busif_readError <= 1'b0;
          end
          16'h0020 : begin
            busif_readData <= {stat_8,{imag_8,real_9}};
            busif_readError <= 1'b0;
          end
          16'h0024 : begin
            busif_readData <= {stat_9,{imag_9,real_10}};
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
