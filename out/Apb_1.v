// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : Apb_1
// Git hash  : 23d564a3e9d4d768c2cb1641ec7dc2becc0d2602

`timescale 1ns/1ps

module Apb_1 (
  input      [15:0]   din_PADDR,
  input      [0:0]    din_PSEL,
  input               din_PENABLE,
  output              din_PREADY,
  input               din_PWRITE,
  input      [31:0]   din_PWDATA,
  output     [31:0]   din_PRDATA,
  output              din_PSLVERROR,
  output     [7:0]    do1_PADDR,
  output     [0:0]    do1_PSEL,
  output              do1_PENABLE,
  input               do1_PREADY,
  output              do1_PWRITE,
  output     [31:0]   do1_PWDATA,
  input      [31:0]   do1_PRDATA,
  input               do1_PSLVERROR,
  output     [11:0]   do2_PADDR,
  output     [0:0]    do2_PSEL,
  output              do2_PENABLE,
  input               do2_PREADY,
  output              do2_PWRITE,
  output     [31:0]   do2_PWDATA,
  input      [31:0]   do2_PRDATA,
  input               do2_PSLVERROR,
  output     [11:0]   do3_PADDR,
  output     [0:0]    do3_PSEL,
  output              do3_PENABLE,
  input               do3_PREADY,
  output              do3_PWRITE,
  output     [31:0]   do3_PWDATA,
  input      [31:0]   do3_PRDATA,
  input               do3_PSLVERROR,
  output     [1:0]    do4_PADDR,
  output     [0:0]    do4_PSEL,
  output              do4_PENABLE,
  input               do4_PREADY,
  output              do4_PWRITE,
  output     [31:0]   do4_PWDATA,
  input      [31:0]   do4_PRDATA,
  input               do4_PSLVERROR,
  input               clk,
  input               reset
);

  wire                din_decoder_io_input_PREADY;
  wire       [31:0]   din_decoder_io_input_PRDATA;
  wire                din_decoder_io_input_PSLVERROR;
  wire       [15:0]   din_decoder_io_output_PADDR;
  wire       [3:0]    din_decoder_io_output_PSEL;
  wire                din_decoder_io_output_PENABLE;
  wire                din_decoder_io_output_PWRITE;
  wire       [31:0]   din_decoder_io_output_PWDATA;
  wire                apb3Router_1_io_input_PREADY;
  wire       [31:0]   apb3Router_1_io_input_PRDATA;
  wire                apb3Router_1_io_input_PSLVERROR;
  wire       [15:0]   apb3Router_1_io_outputs_0_PADDR;
  wire       [0:0]    apb3Router_1_io_outputs_0_PSEL;
  wire                apb3Router_1_io_outputs_0_PENABLE;
  wire                apb3Router_1_io_outputs_0_PWRITE;
  wire       [31:0]   apb3Router_1_io_outputs_0_PWDATA;
  wire       [15:0]   apb3Router_1_io_outputs_1_PADDR;
  wire       [0:0]    apb3Router_1_io_outputs_1_PSEL;
  wire                apb3Router_1_io_outputs_1_PENABLE;
  wire                apb3Router_1_io_outputs_1_PWRITE;
  wire       [31:0]   apb3Router_1_io_outputs_1_PWDATA;
  wire       [15:0]   apb3Router_1_io_outputs_2_PADDR;
  wire       [0:0]    apb3Router_1_io_outputs_2_PSEL;
  wire                apb3Router_1_io_outputs_2_PENABLE;
  wire                apb3Router_1_io_outputs_2_PWRITE;
  wire       [31:0]   apb3Router_1_io_outputs_2_PWDATA;
  wire       [15:0]   apb3Router_1_io_outputs_3_PADDR;
  wire       [0:0]    apb3Router_1_io_outputs_3_PSEL;
  wire                apb3Router_1_io_outputs_3_PENABLE;
  wire                apb3Router_1_io_outputs_3_PWRITE;
  wire       [31:0]   apb3Router_1_io_outputs_3_PWDATA;

  Apb3Decoder din_decoder (
    .io_input_PADDR      (din_PADDR[15:0]                   ), //i
    .io_input_PSEL       (din_PSEL                          ), //i
    .io_input_PENABLE    (din_PENABLE                       ), //i
    .io_input_PREADY     (din_decoder_io_input_PREADY       ), //o
    .io_input_PWRITE     (din_PWRITE                        ), //i
    .io_input_PWDATA     (din_PWDATA[31:0]                  ), //i
    .io_input_PRDATA     (din_decoder_io_input_PRDATA[31:0] ), //o
    .io_input_PSLVERROR  (din_decoder_io_input_PSLVERROR    ), //o
    .io_output_PADDR     (din_decoder_io_output_PADDR[15:0] ), //o
    .io_output_PSEL      (din_decoder_io_output_PSEL[3:0]   ), //o
    .io_output_PENABLE   (din_decoder_io_output_PENABLE     ), //o
    .io_output_PREADY    (apb3Router_1_io_input_PREADY      ), //i
    .io_output_PWRITE    (din_decoder_io_output_PWRITE      ), //o
    .io_output_PWDATA    (din_decoder_io_output_PWDATA[31:0]), //o
    .io_output_PRDATA    (apb3Router_1_io_input_PRDATA[31:0]), //i
    .io_output_PSLVERROR (apb3Router_1_io_input_PSLVERROR   )  //i
  );
  Apb3Router apb3Router_1 (
    .io_input_PADDR         (din_decoder_io_output_PADDR[15:0]     ), //i
    .io_input_PSEL          (din_decoder_io_output_PSEL[3:0]       ), //i
    .io_input_PENABLE       (din_decoder_io_output_PENABLE         ), //i
    .io_input_PREADY        (apb3Router_1_io_input_PREADY          ), //o
    .io_input_PWRITE        (din_decoder_io_output_PWRITE          ), //i
    .io_input_PWDATA        (din_decoder_io_output_PWDATA[31:0]    ), //i
    .io_input_PRDATA        (apb3Router_1_io_input_PRDATA[31:0]    ), //o
    .io_input_PSLVERROR     (apb3Router_1_io_input_PSLVERROR       ), //o
    .io_outputs_0_PADDR     (apb3Router_1_io_outputs_0_PADDR[15:0] ), //o
    .io_outputs_0_PSEL      (apb3Router_1_io_outputs_0_PSEL        ), //o
    .io_outputs_0_PENABLE   (apb3Router_1_io_outputs_0_PENABLE     ), //o
    .io_outputs_0_PREADY    (do1_PREADY                            ), //i
    .io_outputs_0_PWRITE    (apb3Router_1_io_outputs_0_PWRITE      ), //o
    .io_outputs_0_PWDATA    (apb3Router_1_io_outputs_0_PWDATA[31:0]), //o
    .io_outputs_0_PRDATA    (do1_PRDATA[31:0]                      ), //i
    .io_outputs_0_PSLVERROR (do1_PSLVERROR                         ), //i
    .io_outputs_1_PADDR     (apb3Router_1_io_outputs_1_PADDR[15:0] ), //o
    .io_outputs_1_PSEL      (apb3Router_1_io_outputs_1_PSEL        ), //o
    .io_outputs_1_PENABLE   (apb3Router_1_io_outputs_1_PENABLE     ), //o
    .io_outputs_1_PREADY    (do2_PREADY                            ), //i
    .io_outputs_1_PWRITE    (apb3Router_1_io_outputs_1_PWRITE      ), //o
    .io_outputs_1_PWDATA    (apb3Router_1_io_outputs_1_PWDATA[31:0]), //o
    .io_outputs_1_PRDATA    (do2_PRDATA[31:0]                      ), //i
    .io_outputs_1_PSLVERROR (do2_PSLVERROR                         ), //i
    .io_outputs_2_PADDR     (apb3Router_1_io_outputs_2_PADDR[15:0] ), //o
    .io_outputs_2_PSEL      (apb3Router_1_io_outputs_2_PSEL        ), //o
    .io_outputs_2_PENABLE   (apb3Router_1_io_outputs_2_PENABLE     ), //o
    .io_outputs_2_PREADY    (do3_PREADY                            ), //i
    .io_outputs_2_PWRITE    (apb3Router_1_io_outputs_2_PWRITE      ), //o
    .io_outputs_2_PWDATA    (apb3Router_1_io_outputs_2_PWDATA[31:0]), //o
    .io_outputs_2_PRDATA    (do3_PRDATA[31:0]                      ), //i
    .io_outputs_2_PSLVERROR (do3_PSLVERROR                         ), //i
    .io_outputs_3_PADDR     (apb3Router_1_io_outputs_3_PADDR[15:0] ), //o
    .io_outputs_3_PSEL      (apb3Router_1_io_outputs_3_PSEL        ), //o
    .io_outputs_3_PENABLE   (apb3Router_1_io_outputs_3_PENABLE     ), //o
    .io_outputs_3_PREADY    (do4_PREADY                            ), //i
    .io_outputs_3_PWRITE    (apb3Router_1_io_outputs_3_PWRITE      ), //o
    .io_outputs_3_PWDATA    (apb3Router_1_io_outputs_3_PWDATA[31:0]), //o
    .io_outputs_3_PRDATA    (do4_PRDATA[31:0]                      ), //i
    .io_outputs_3_PSLVERROR (do4_PSLVERROR                         ), //i
    .clk                    (clk                                   ), //i
    .reset                  (reset                                 )  //i
  );
  assign din_PREADY = din_decoder_io_input_PREADY;
  assign din_PRDATA = din_decoder_io_input_PRDATA;
  assign din_PSLVERROR = din_decoder_io_input_PSLVERROR;
  assign do1_PADDR = apb3Router_1_io_outputs_0_PADDR[7:0];
  assign do1_PSEL = apb3Router_1_io_outputs_0_PSEL;
  assign do1_PENABLE = apb3Router_1_io_outputs_0_PENABLE;
  assign do1_PWRITE = apb3Router_1_io_outputs_0_PWRITE;
  assign do1_PWDATA = apb3Router_1_io_outputs_0_PWDATA;
  assign do2_PADDR = apb3Router_1_io_outputs_1_PADDR[11:0];
  assign do2_PSEL = apb3Router_1_io_outputs_1_PSEL;
  assign do2_PENABLE = apb3Router_1_io_outputs_1_PENABLE;
  assign do2_PWRITE = apb3Router_1_io_outputs_1_PWRITE;
  assign do2_PWDATA = apb3Router_1_io_outputs_1_PWDATA;
  assign do3_PADDR = apb3Router_1_io_outputs_2_PADDR[11:0];
  assign do3_PSEL = apb3Router_1_io_outputs_2_PSEL;
  assign do3_PENABLE = apb3Router_1_io_outputs_2_PENABLE;
  assign do3_PWRITE = apb3Router_1_io_outputs_2_PWRITE;
  assign do3_PWDATA = apb3Router_1_io_outputs_2_PWDATA;
  assign do4_PADDR = apb3Router_1_io_outputs_3_PADDR[1:0];
  assign do4_PSEL = apb3Router_1_io_outputs_3_PSEL;
  assign do4_PENABLE = apb3Router_1_io_outputs_3_PENABLE;
  assign do4_PWRITE = apb3Router_1_io_outputs_3_PWRITE;
  assign do4_PWDATA = apb3Router_1_io_outputs_3_PWDATA;

endmodule

module Apb3Router (
  input      [15:0]   io_input_PADDR,
  input      [3:0]    io_input_PSEL,
  input               io_input_PENABLE,
  output              io_input_PREADY,
  input               io_input_PWRITE,
  input      [31:0]   io_input_PWDATA,
  output     [31:0]   io_input_PRDATA,
  output              io_input_PSLVERROR,
  output     [15:0]   io_outputs_0_PADDR,
  output     [0:0]    io_outputs_0_PSEL,
  output              io_outputs_0_PENABLE,
  input               io_outputs_0_PREADY,
  output              io_outputs_0_PWRITE,
  output     [31:0]   io_outputs_0_PWDATA,
  input      [31:0]   io_outputs_0_PRDATA,
  input               io_outputs_0_PSLVERROR,
  output     [15:0]   io_outputs_1_PADDR,
  output     [0:0]    io_outputs_1_PSEL,
  output              io_outputs_1_PENABLE,
  input               io_outputs_1_PREADY,
  output              io_outputs_1_PWRITE,
  output     [31:0]   io_outputs_1_PWDATA,
  input      [31:0]   io_outputs_1_PRDATA,
  input               io_outputs_1_PSLVERROR,
  output     [15:0]   io_outputs_2_PADDR,
  output     [0:0]    io_outputs_2_PSEL,
  output              io_outputs_2_PENABLE,
  input               io_outputs_2_PREADY,
  output              io_outputs_2_PWRITE,
  output     [31:0]   io_outputs_2_PWDATA,
  input      [31:0]   io_outputs_2_PRDATA,
  input               io_outputs_2_PSLVERROR,
  output     [15:0]   io_outputs_3_PADDR,
  output     [0:0]    io_outputs_3_PSEL,
  output              io_outputs_3_PENABLE,
  input               io_outputs_3_PREADY,
  output              io_outputs_3_PWRITE,
  output     [31:0]   io_outputs_3_PWDATA,
  input      [31:0]   io_outputs_3_PRDATA,
  input               io_outputs_3_PSLVERROR,
  input               clk,
  input               reset
);

  reg                 _zz_io_input_PREADY;
  reg        [31:0]   _zz_io_input_PRDATA;
  reg                 _zz_io_input_PSLVERROR;
  wire                _zz_selIndex;
  wire                _zz_selIndex_1;
  wire                _zz_selIndex_2;
  reg        [1:0]    selIndex;

  always @(*) begin
    case(selIndex)
      2'b00 : begin
        _zz_io_input_PREADY = io_outputs_0_PREADY;
        _zz_io_input_PRDATA = io_outputs_0_PRDATA;
        _zz_io_input_PSLVERROR = io_outputs_0_PSLVERROR;
      end
      2'b01 : begin
        _zz_io_input_PREADY = io_outputs_1_PREADY;
        _zz_io_input_PRDATA = io_outputs_1_PRDATA;
        _zz_io_input_PSLVERROR = io_outputs_1_PSLVERROR;
      end
      2'b10 : begin
        _zz_io_input_PREADY = io_outputs_2_PREADY;
        _zz_io_input_PRDATA = io_outputs_2_PRDATA;
        _zz_io_input_PSLVERROR = io_outputs_2_PSLVERROR;
      end
      default : begin
        _zz_io_input_PREADY = io_outputs_3_PREADY;
        _zz_io_input_PRDATA = io_outputs_3_PRDATA;
        _zz_io_input_PSLVERROR = io_outputs_3_PSLVERROR;
      end
    endcase
  end

  assign io_outputs_0_PADDR = io_input_PADDR;
  assign io_outputs_0_PENABLE = io_input_PENABLE;
  assign io_outputs_0_PSEL[0] = io_input_PSEL[0];
  assign io_outputs_0_PWRITE = io_input_PWRITE;
  assign io_outputs_0_PWDATA = io_input_PWDATA;
  assign io_outputs_1_PADDR = io_input_PADDR;
  assign io_outputs_1_PENABLE = io_input_PENABLE;
  assign io_outputs_1_PSEL[0] = io_input_PSEL[1];
  assign io_outputs_1_PWRITE = io_input_PWRITE;
  assign io_outputs_1_PWDATA = io_input_PWDATA;
  assign io_outputs_2_PADDR = io_input_PADDR;
  assign io_outputs_2_PENABLE = io_input_PENABLE;
  assign io_outputs_2_PSEL[0] = io_input_PSEL[2];
  assign io_outputs_2_PWRITE = io_input_PWRITE;
  assign io_outputs_2_PWDATA = io_input_PWDATA;
  assign io_outputs_3_PADDR = io_input_PADDR;
  assign io_outputs_3_PENABLE = io_input_PENABLE;
  assign io_outputs_3_PSEL[0] = io_input_PSEL[3];
  assign io_outputs_3_PWRITE = io_input_PWRITE;
  assign io_outputs_3_PWDATA = io_input_PWDATA;
  assign _zz_selIndex = io_input_PSEL[3];
  assign _zz_selIndex_1 = (io_input_PSEL[1] || _zz_selIndex);
  assign _zz_selIndex_2 = (io_input_PSEL[2] || _zz_selIndex);
  assign io_input_PREADY = _zz_io_input_PREADY;
  assign io_input_PRDATA = _zz_io_input_PRDATA;
  assign io_input_PSLVERROR = _zz_io_input_PSLVERROR;
  always @(posedge clk) begin
    selIndex <= {_zz_selIndex_2,_zz_selIndex_1};
  end


endmodule

module Apb3Decoder (
  input      [15:0]   io_input_PADDR,
  input      [0:0]    io_input_PSEL,
  input               io_input_PENABLE,
  output reg          io_input_PREADY,
  input               io_input_PWRITE,
  input      [31:0]   io_input_PWDATA,
  output     [31:0]   io_input_PRDATA,
  output reg          io_input_PSLVERROR,
  output     [15:0]   io_output_PADDR,
  output reg [3:0]    io_output_PSEL,
  output              io_output_PENABLE,
  input               io_output_PREADY,
  output              io_output_PWRITE,
  output     [31:0]   io_output_PWDATA,
  input      [31:0]   io_output_PRDATA,
  input               io_output_PSLVERROR
);

  wire                when_Apb3Decoder_l88;

  assign io_output_PADDR = io_input_PADDR;
  assign io_output_PENABLE = io_input_PENABLE;
  assign io_output_PWRITE = io_input_PWRITE;
  assign io_output_PWDATA = io_input_PWDATA;
  always @(*) begin
    io_output_PSEL[0] = (((io_input_PADDR & (~ 16'h003f)) == 16'h0) && io_input_PSEL[0]);
    io_output_PSEL[1] = (((io_input_PADDR & (~ 16'h03ff)) == 16'h1000) && io_input_PSEL[0]);
    io_output_PSEL[2] = (((io_input_PADDR & (~ 16'h07ff)) == 16'h2000) && io_input_PSEL[0]);
    io_output_PSEL[3] = (((io_input_PADDR & (~ 16'h001f)) == 16'h3000) && io_input_PSEL[0]);
  end

  always @(*) begin
    io_input_PREADY = io_output_PREADY;
    if(when_Apb3Decoder_l88) begin
      io_input_PREADY = 1'b1;
    end
  end

  assign io_input_PRDATA = io_output_PRDATA;
  always @(*) begin
    io_input_PSLVERROR = io_output_PSLVERROR;
    if(when_Apb3Decoder_l88) begin
      io_input_PSLVERROR = 1'b1;
    end
  end

  assign when_Apb3Decoder_l88 = (io_input_PSEL[0] && (io_output_PSEL == 4'b0000));

endmodule
