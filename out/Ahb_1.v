// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : Ahb_1
// Git hash  : 23d564a3e9d4d768c2cb1641ec7dc2becc0d2602

`timescale 1ns/1ps

module Ahb_1 (
  input      [15:0]   ahb_HADDR,
  input               ahb_HSEL,
  input               ahb_HREADY,
  input               ahb_HWRITE,
  input      [2:0]    ahb_HSIZE,
  input      [2:0]    ahb_HBURST,
  input      [3:0]    ahb_HPROT,
  input      [1:0]    ahb_HTRANS,
  input               ahb_HMASTLOCK,
  input      [31:0]   ahb_HWDATA,
  output     [31:0]   ahb_HRDATA,
  output              ahb_HREADYOUT,
  output              ahb_HRESP,
  output     [15:0]   apb_PADDR,
  output     [0:0]    apb_PSEL,
  output              apb_PENABLE,
  input               apb_PREADY,
  output              apb_PWRITE,
  output     [31:0]   apb_PWDATA,
  input      [31:0]   apb_PRDATA,
  input               apb_PSLVERROR,
  input               clk,
  input               reset
);

  wire                bridge_io_ahb_HREADYOUT;
  wire                bridge_io_ahb_HRESP;
  wire       [31:0]   bridge_io_ahb_HRDATA;
  wire       [15:0]   bridge_io_apb_PADDR;
  wire       [0:0]    bridge_io_apb_PSEL;
  wire                bridge_io_apb_PENABLE;
  wire                bridge_io_apb_PWRITE;
  wire       [31:0]   bridge_io_apb_PWDATA;

  AhbLite3ToApb3Bridge bridge (
    .io_ahb_HADDR     (ahb_HADDR[15:0]           ), //i
    .io_ahb_HSEL      (ahb_HSEL                  ), //i
    .io_ahb_HREADY    (ahb_HREADY                ), //i
    .io_ahb_HWRITE    (ahb_HWRITE                ), //i
    .io_ahb_HSIZE     (ahb_HSIZE[2:0]            ), //i
    .io_ahb_HBURST    (ahb_HBURST[2:0]           ), //i
    .io_ahb_HPROT     (ahb_HPROT[3:0]            ), //i
    .io_ahb_HTRANS    (ahb_HTRANS[1:0]           ), //i
    .io_ahb_HMASTLOCK (ahb_HMASTLOCK             ), //i
    .io_ahb_HWDATA    (ahb_HWDATA[31:0]          ), //i
    .io_ahb_HRDATA    (bridge_io_ahb_HRDATA[31:0]), //o
    .io_ahb_HREADYOUT (bridge_io_ahb_HREADYOUT   ), //o
    .io_ahb_HRESP     (bridge_io_ahb_HRESP       ), //o
    .io_apb_PADDR     (bridge_io_apb_PADDR[15:0] ), //o
    .io_apb_PSEL      (bridge_io_apb_PSEL        ), //o
    .io_apb_PENABLE   (bridge_io_apb_PENABLE     ), //o
    .io_apb_PREADY    (apb_PREADY                ), //i
    .io_apb_PWRITE    (bridge_io_apb_PWRITE      ), //o
    .io_apb_PWDATA    (bridge_io_apb_PWDATA[31:0]), //o
    .io_apb_PRDATA    (apb_PRDATA[31:0]          ), //i
    .io_apb_PSLVERROR (apb_PSLVERROR             ), //i
    .clk              (clk                       ), //i
    .reset            (reset                     )  //i
  );
  assign ahb_HRDATA = bridge_io_ahb_HRDATA;
  assign ahb_HREADYOUT = bridge_io_ahb_HREADYOUT;
  assign ahb_HRESP = bridge_io_ahb_HRESP;
  assign apb_PADDR = bridge_io_apb_PADDR;
  assign apb_PSEL = bridge_io_apb_PSEL;
  assign apb_PENABLE = bridge_io_apb_PENABLE;
  assign apb_PWRITE = bridge_io_apb_PWRITE;
  assign apb_PWDATA = bridge_io_apb_PWDATA;

endmodule

module AhbLite3ToApb3Bridge (
  input      [15:0]   io_ahb_HADDR,
  input               io_ahb_HSEL,
  input               io_ahb_HREADY,
  input               io_ahb_HWRITE,
  input      [2:0]    io_ahb_HSIZE,
  input      [2:0]    io_ahb_HBURST,
  input      [3:0]    io_ahb_HPROT,
  input      [1:0]    io_ahb_HTRANS,
  input               io_ahb_HMASTLOCK,
  input      [31:0]   io_ahb_HWDATA,
  output     [31:0]   io_ahb_HRDATA,
  output reg          io_ahb_HREADYOUT,
  output reg          io_ahb_HRESP,
  output     [15:0]   io_apb_PADDR,
  output reg [0:0]    io_apb_PSEL,
  output reg          io_apb_PENABLE,
  input               io_apb_PREADY,
  output              io_apb_PWRITE,
  output     [31:0]   io_apb_PWDATA,
  input      [31:0]   io_apb_PRDATA,
  input               io_apb_PSLVERROR,
  input               clk,
  input               reset
);
  localparam AhbLite3ToApb3BridgePhase_IDLE = 2'd0;
  localparam AhbLite3ToApb3BridgePhase_SETUP = 2'd1;
  localparam AhbLite3ToApb3BridgePhase_ACCESS_1 = 2'd2;
  localparam AhbLite3ToApb3BridgePhase_ERROR = 2'd3;

  reg        [1:0]    phase;
  reg                 write;
  reg        [15:0]   address;
  reg        [31:0]   readedData;
  wire                when_AhbLite3ToApb3Bridge_l69;
  wire       [1:0]    _zz_phase;
  `ifndef SYNTHESIS
  reg [63:0] phase_string;
  reg [63:0] _zz_phase_string;
  `endif


  `ifndef SYNTHESIS
  always @(*) begin
    case(phase)
      AhbLite3ToApb3BridgePhase_IDLE : phase_string = "IDLE    ";
      AhbLite3ToApb3BridgePhase_SETUP : phase_string = "SETUP   ";
      AhbLite3ToApb3BridgePhase_ACCESS_1 : phase_string = "ACCESS_1";
      AhbLite3ToApb3BridgePhase_ERROR : phase_string = "ERROR   ";
      default : phase_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_phase)
      AhbLite3ToApb3BridgePhase_IDLE : _zz_phase_string = "IDLE    ";
      AhbLite3ToApb3BridgePhase_SETUP : _zz_phase_string = "SETUP   ";
      AhbLite3ToApb3BridgePhase_ACCESS_1 : _zz_phase_string = "ACCESS_1";
      AhbLite3ToApb3BridgePhase_ERROR : _zz_phase_string = "ERROR   ";
      default : _zz_phase_string = "????????";
    endcase
  end
  `endif

  assign io_apb_PADDR = address;
  assign io_ahb_HRDATA = readedData;
  assign io_apb_PWDATA = io_ahb_HWDATA;
  assign io_apb_PWRITE = write;
  always @(*) begin
    io_ahb_HRESP = io_apb_PSLVERROR;
    case(phase)
      AhbLite3ToApb3BridgePhase_IDLE : begin
      end
      AhbLite3ToApb3BridgePhase_SETUP : begin
      end
      AhbLite3ToApb3BridgePhase_ACCESS_1 : begin
      end
      default : begin
        io_ahb_HRESP = 1'b1;
      end
    endcase
  end

  always @(*) begin
    case(phase)
      AhbLite3ToApb3BridgePhase_IDLE : begin
        io_apb_PSEL = 1'b0;
      end
      AhbLite3ToApb3BridgePhase_SETUP : begin
        io_apb_PSEL = 1'b1;
      end
      AhbLite3ToApb3BridgePhase_ACCESS_1 : begin
        io_apb_PSEL = 1'b1;
      end
      default : begin
        io_apb_PSEL = 1'b0;
      end
    endcase
  end

  always @(*) begin
    case(phase)
      AhbLite3ToApb3BridgePhase_IDLE : begin
        io_apb_PENABLE = 1'b0;
      end
      AhbLite3ToApb3BridgePhase_SETUP : begin
        io_apb_PENABLE = 1'b0;
      end
      AhbLite3ToApb3BridgePhase_ACCESS_1 : begin
        io_apb_PENABLE = 1'b1;
      end
      default : begin
        io_apb_PENABLE = 1'b0;
      end
    endcase
  end

  always @(*) begin
    case(phase)
      AhbLite3ToApb3BridgePhase_IDLE : begin
        io_ahb_HREADYOUT = 1'b1;
      end
      AhbLite3ToApb3BridgePhase_SETUP : begin
        io_ahb_HREADYOUT = 1'b0;
      end
      AhbLite3ToApb3BridgePhase_ACCESS_1 : begin
        io_ahb_HREADYOUT = 1'b0;
      end
      default : begin
        io_ahb_HREADYOUT = 1'b1;
      end
    endcase
  end

  assign when_AhbLite3ToApb3Bridge_l69 = ((io_ahb_HSEL && io_ahb_HTRANS[1]) && io_ahb_HREADY);
  assign _zz_phase = (io_apb_PSLVERROR ? AhbLite3ToApb3BridgePhase_ERROR : AhbLite3ToApb3BridgePhase_IDLE);
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      phase <= AhbLite3ToApb3BridgePhase_IDLE;
    end else begin
      case(phase)
        AhbLite3ToApb3BridgePhase_IDLE : begin
          if(when_AhbLite3ToApb3Bridge_l69) begin
            phase <= AhbLite3ToApb3BridgePhase_SETUP;
          end
        end
        AhbLite3ToApb3BridgePhase_SETUP : begin
          phase <= AhbLite3ToApb3BridgePhase_ACCESS_1;
        end
        AhbLite3ToApb3BridgePhase_ACCESS_1 : begin
          if(io_apb_PREADY) begin
            phase <= _zz_phase;
          end
        end
        default : begin
          phase <= AhbLite3ToApb3BridgePhase_IDLE;
        end
      endcase
    end
  end

  always @(posedge clk) begin
    case(phase)
      AhbLite3ToApb3BridgePhase_IDLE : begin
        if(when_AhbLite3ToApb3Bridge_l69) begin
          address <= io_ahb_HADDR;
          write <= io_ahb_HWRITE;
        end
      end
      AhbLite3ToApb3BridgePhase_SETUP : begin
      end
      AhbLite3ToApb3BridgePhase_ACCESS_1 : begin
        if(io_apb_PREADY) begin
          readedData <= io_apb_PRDATA;
        end
      end
      default : begin
      end
    endcase
  end


endmodule
