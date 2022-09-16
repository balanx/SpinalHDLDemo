// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : Axi_2_bridge
// Git hash  : 40a09e7801b4d01ff6c67f3e402af9d0310f44f7

`timescale 1ns/1ps

module Axi_2_bridge (
  input               axi_arw_valid,
  output              axi_arw_ready,
  input      [31:0]   axi_arw_payload_addr,
  input      [3:0]    axi_arw_payload_id,
  input      [7:0]    axi_arw_payload_len,
  input      [2:0]    axi_arw_payload_size,
  input      [1:0]    axi_arw_payload_burst,
  input               axi_arw_payload_write,
  input               axi_w_valid,
  output              axi_w_ready,
  input      [31:0]   axi_w_payload_data,
  input      [3:0]    axi_w_payload_strb,
  input               axi_w_payload_last,
  output              axi_b_valid,
  input               axi_b_ready,
  output     [3:0]    axi_b_payload_id,
  output     [1:0]    axi_b_payload_resp,
  output              axi_r_valid,
  input               axi_r_ready,
  output     [31:0]   axi_r_payload_data,
  output     [3:0]    axi_r_payload_id,
  output     [1:0]    axi_r_payload_resp,
  output              axi_r_payload_last,
  output     [31:0]   apb_PADDR,
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

  wire                bridge_io_axi_arw_ready;
  wire                bridge_io_axi_w_ready;
  wire                bridge_io_axi_b_valid;
  wire       [3:0]    bridge_io_axi_b_payload_id;
  wire       [1:0]    bridge_io_axi_b_payload_resp;
  wire                bridge_io_axi_r_valid;
  wire       [31:0]   bridge_io_axi_r_payload_data;
  wire       [3:0]    bridge_io_axi_r_payload_id;
  wire       [1:0]    bridge_io_axi_r_payload_resp;
  wire                bridge_io_axi_r_payload_last;
  wire       [31:0]   bridge_io_apb_PADDR;
  wire       [0:0]    bridge_io_apb_PSEL;
  wire                bridge_io_apb_PENABLE;
  wire                bridge_io_apb_PWRITE;
  wire       [31:0]   bridge_io_apb_PWDATA;

  Axi4SharedToApb3Bridge bridge (
    .io_axi_arw_valid         (axi_arw_valid                     ), //i
    .io_axi_arw_ready         (bridge_io_axi_arw_ready           ), //o
    .io_axi_arw_payload_addr  (axi_arw_payload_addr[31:0]        ), //i
    .io_axi_arw_payload_id    (axi_arw_payload_id[3:0]           ), //i
    .io_axi_arw_payload_len   (axi_arw_payload_len[7:0]          ), //i
    .io_axi_arw_payload_size  (axi_arw_payload_size[2:0]         ), //i
    .io_axi_arw_payload_burst (axi_arw_payload_burst[1:0]        ), //i
    .io_axi_arw_payload_write (axi_arw_payload_write             ), //i
    .io_axi_w_valid           (axi_w_valid                       ), //i
    .io_axi_w_ready           (bridge_io_axi_w_ready             ), //o
    .io_axi_w_payload_data    (axi_w_payload_data[31:0]          ), //i
    .io_axi_w_payload_strb    (axi_w_payload_strb[3:0]           ), //i
    .io_axi_w_payload_last    (axi_w_payload_last                ), //i
    .io_axi_b_valid           (bridge_io_axi_b_valid             ), //o
    .io_axi_b_ready           (axi_b_ready                       ), //i
    .io_axi_b_payload_id      (bridge_io_axi_b_payload_id[3:0]   ), //o
    .io_axi_b_payload_resp    (bridge_io_axi_b_payload_resp[1:0] ), //o
    .io_axi_r_valid           (bridge_io_axi_r_valid             ), //o
    .io_axi_r_ready           (axi_r_ready                       ), //i
    .io_axi_r_payload_data    (bridge_io_axi_r_payload_data[31:0]), //o
    .io_axi_r_payload_id      (bridge_io_axi_r_payload_id[3:0]   ), //o
    .io_axi_r_payload_resp    (bridge_io_axi_r_payload_resp[1:0] ), //o
    .io_axi_r_payload_last    (bridge_io_axi_r_payload_last      ), //o
    .io_apb_PADDR             (bridge_io_apb_PADDR[31:0]         ), //o
    .io_apb_PSEL              (bridge_io_apb_PSEL                ), //o
    .io_apb_PENABLE           (bridge_io_apb_PENABLE             ), //o
    .io_apb_PREADY            (apb_PREADY                        ), //i
    .io_apb_PWRITE            (bridge_io_apb_PWRITE              ), //o
    .io_apb_PWDATA            (bridge_io_apb_PWDATA[31:0]        ), //o
    .io_apb_PRDATA            (apb_PRDATA[31:0]                  ), //i
    .io_apb_PSLVERROR         (apb_PSLVERROR                     ), //i
    .clk                      (clk                               ), //i
    .reset                    (reset                             )  //i
  );
  assign axi_arw_ready = bridge_io_axi_arw_ready;
  assign axi_w_ready = bridge_io_axi_w_ready;
  assign axi_b_valid = bridge_io_axi_b_valid;
  assign axi_b_payload_id = bridge_io_axi_b_payload_id;
  assign axi_b_payload_resp = bridge_io_axi_b_payload_resp;
  assign axi_r_valid = bridge_io_axi_r_valid;
  assign axi_r_payload_data = bridge_io_axi_r_payload_data;
  assign axi_r_payload_id = bridge_io_axi_r_payload_id;
  assign axi_r_payload_resp = bridge_io_axi_r_payload_resp;
  assign axi_r_payload_last = bridge_io_axi_r_payload_last;
  assign apb_PADDR = bridge_io_apb_PADDR;
  assign apb_PSEL = bridge_io_apb_PSEL;
  assign apb_PENABLE = bridge_io_apb_PENABLE;
  assign apb_PWRITE = bridge_io_apb_PWRITE;
  assign apb_PWDATA = bridge_io_apb_PWDATA;

endmodule

module Axi4SharedToApb3Bridge (
  input               io_axi_arw_valid,
  output reg          io_axi_arw_ready,
  input      [31:0]   io_axi_arw_payload_addr,
  input      [3:0]    io_axi_arw_payload_id,
  input      [7:0]    io_axi_arw_payload_len,
  input      [2:0]    io_axi_arw_payload_size,
  input      [1:0]    io_axi_arw_payload_burst,
  input               io_axi_arw_payload_write,
  input               io_axi_w_valid,
  output reg          io_axi_w_ready,
  input      [31:0]   io_axi_w_payload_data,
  input      [3:0]    io_axi_w_payload_strb,
  input               io_axi_w_payload_last,
  output reg          io_axi_b_valid,
  input               io_axi_b_ready,
  output     [3:0]    io_axi_b_payload_id,
  output     [1:0]    io_axi_b_payload_resp,
  output reg          io_axi_r_valid,
  input               io_axi_r_ready,
  output     [31:0]   io_axi_r_payload_data,
  output     [3:0]    io_axi_r_payload_id,
  output     [1:0]    io_axi_r_payload_resp,
  output              io_axi_r_payload_last,
  output     [31:0]   io_apb_PADDR,
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
  localparam Axi4ToApb3BridgePhase_SETUP = 2'd0;
  localparam Axi4ToApb3BridgePhase_ACCESS_1 = 2'd1;
  localparam Axi4ToApb3BridgePhase_RESPONSE = 2'd2;

  reg        [1:0]    phase;
  reg                 write;
  reg        [31:0]   readedData;
  reg        [3:0]    id;
  wire                when_Axi4SharedToApb3Bridge_l91;
  wire                when_Axi4SharedToApb3Bridge_l97;
  `ifndef SYNTHESIS
  reg [63:0] phase_string;
  `endif


  `ifndef SYNTHESIS
  always @(*) begin
    case(phase)
      Axi4ToApb3BridgePhase_SETUP : phase_string = "SETUP   ";
      Axi4ToApb3BridgePhase_ACCESS_1 : phase_string = "ACCESS_1";
      Axi4ToApb3BridgePhase_RESPONSE : phase_string = "RESPONSE";
      default : phase_string = "????????";
    endcase
  end
  `endif

  always @(*) begin
    io_axi_arw_ready = 1'b0;
    case(phase)
      Axi4ToApb3BridgePhase_SETUP : begin
        if(when_Axi4SharedToApb3Bridge_l91) begin
          if(when_Axi4SharedToApb3Bridge_l97) begin
            io_axi_arw_ready = 1'b1;
          end
        end
      end
      Axi4ToApb3BridgePhase_ACCESS_1 : begin
        if(io_apb_PREADY) begin
          io_axi_arw_ready = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_axi_w_ready = 1'b0;
    case(phase)
      Axi4ToApb3BridgePhase_SETUP : begin
        if(when_Axi4SharedToApb3Bridge_l91) begin
          if(when_Axi4SharedToApb3Bridge_l97) begin
            io_axi_w_ready = 1'b1;
          end
        end
      end
      Axi4ToApb3BridgePhase_ACCESS_1 : begin
        if(io_apb_PREADY) begin
          io_axi_w_ready = write;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_axi_b_valid = 1'b0;
    case(phase)
      Axi4ToApb3BridgePhase_SETUP : begin
      end
      Axi4ToApb3BridgePhase_ACCESS_1 : begin
      end
      default : begin
        if(write) begin
          io_axi_b_valid = 1'b1;
        end
      end
    endcase
  end

  always @(*) begin
    io_axi_r_valid = 1'b0;
    case(phase)
      Axi4ToApb3BridgePhase_SETUP : begin
      end
      Axi4ToApb3BridgePhase_ACCESS_1 : begin
      end
      default : begin
        if(!write) begin
          io_axi_r_valid = 1'b1;
        end
      end
    endcase
  end

  always @(*) begin
    io_apb_PSEL[0] = 1'b0;
    case(phase)
      Axi4ToApb3BridgePhase_SETUP : begin
        if(when_Axi4SharedToApb3Bridge_l91) begin
          io_apb_PSEL[0] = 1'b1;
          if(when_Axi4SharedToApb3Bridge_l97) begin
            io_apb_PSEL[0] = 1'b0;
          end
        end
      end
      Axi4ToApb3BridgePhase_ACCESS_1 : begin
        io_apb_PSEL[0] = 1'b1;
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_apb_PENABLE = 1'b0;
    case(phase)
      Axi4ToApb3BridgePhase_SETUP : begin
      end
      Axi4ToApb3BridgePhase_ACCESS_1 : begin
        io_apb_PENABLE = 1'b1;
      end
      default : begin
      end
    endcase
  end

  assign when_Axi4SharedToApb3Bridge_l91 = (io_axi_arw_valid && ((! io_axi_arw_payload_write) || io_axi_w_valid));
  assign when_Axi4SharedToApb3Bridge_l97 = (io_axi_arw_payload_write && (io_axi_w_payload_strb == 4'b0000));
  assign io_apb_PADDR = io_axi_arw_payload_addr;
  assign io_apb_PWDATA = io_axi_w_payload_data;
  assign io_apb_PWRITE = io_axi_arw_payload_write;
  assign io_axi_r_payload_resp = {io_apb_PSLVERROR,1'b0};
  assign io_axi_b_payload_resp = {io_apb_PSLVERROR,1'b0};
  assign io_axi_r_payload_id = id;
  assign io_axi_b_payload_id = id;
  assign io_axi_r_payload_data = readedData;
  assign io_axi_r_payload_last = 1'b1;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      phase <= Axi4ToApb3BridgePhase_SETUP;
    end else begin
      case(phase)
        Axi4ToApb3BridgePhase_SETUP : begin
          if(when_Axi4SharedToApb3Bridge_l91) begin
            phase <= Axi4ToApb3BridgePhase_ACCESS_1;
            if(when_Axi4SharedToApb3Bridge_l97) begin
              phase <= Axi4ToApb3BridgePhase_RESPONSE;
            end
          end
        end
        Axi4ToApb3BridgePhase_ACCESS_1 : begin
          if(io_apb_PREADY) begin
            phase <= Axi4ToApb3BridgePhase_RESPONSE;
          end
        end
        default : begin
          if(write) begin
            if(io_axi_b_ready) begin
              phase <= Axi4ToApb3BridgePhase_SETUP;
            end
          end else begin
            if(io_axi_r_ready) begin
              phase <= Axi4ToApb3BridgePhase_SETUP;
            end
          end
        end
      endcase
    end
  end

  always @(posedge clk) begin
    case(phase)
      Axi4ToApb3BridgePhase_SETUP : begin
        write <= io_axi_arw_payload_write;
        id <= io_axi_arw_payload_id;
      end
      Axi4ToApb3BridgePhase_ACCESS_1 : begin
        if(io_apb_PREADY) begin
          readedData <= io_apb_PRDATA;
        end
      end
      default : begin
      end
    endcase
  end


endmodule
