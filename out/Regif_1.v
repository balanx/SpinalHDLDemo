// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : Regif_1
// Git hash  : 40a09e7801b4d01ff6c67f3e402af9d0310f44f7

`timescale 1ns/1ps

module Regif_1 (
  input      [7:0]    apb_PADDR,
  input      [1:0]    apb_PSEL,
  input               apb_PENABLE,
  output              apb_PREADY,
  input               apb_PWRITE,
  input      [31:0]   apb_PWDATA,
  output reg [31:0]   apb_PRDATA,
  output              apb_PSLVERROR,
  input               clk,
  input               reset
);

  wire                slv_askWrite;
  wire                slv_askRead;
  wire                slv_doWrite;
  wire                slv_doRead;
  reg        [31:0]   regs_0;
  reg        [31:0]   regs_1;
  reg        [31:0]   regs_2;
  reg        [31:0]   regs_3;
  reg        [31:0]   regs_4;
  reg        [31:0]   regs_5;
  reg        [31:0]   regs_6;
  reg        [31:0]   regs_7;

  assign apb_PREADY = 1'b1;
  always @(*) begin
    apb_PRDATA = 32'h0;
    case(apb_PADDR)
      8'h0 : begin
        apb_PRDATA[31 : 0] = regs_0;
      end
      8'h04 : begin
        apb_PRDATA[31 : 0] = regs_1;
      end
      8'h08 : begin
        apb_PRDATA[31 : 0] = regs_2;
      end
      8'h0c : begin
        apb_PRDATA[31 : 0] = regs_3;
      end
      8'h10 : begin
        apb_PRDATA[31 : 0] = regs_4;
      end
      8'h14 : begin
        apb_PRDATA[31 : 0] = regs_5;
      end
      8'h18 : begin
        apb_PRDATA[31 : 0] = regs_6;
      end
      8'h1c : begin
        apb_PRDATA[31 : 0] = regs_7;
      end
      default : begin
      end
    endcase
  end

  assign apb_PSLVERROR = 1'b0;
  assign slv_askWrite = ((apb_PSEL[1] && apb_PENABLE) && apb_PWRITE);
  assign slv_askRead = ((apb_PSEL[1] && apb_PENABLE) && (! apb_PWRITE));
  assign slv_doWrite = (((apb_PSEL[1] && apb_PENABLE) && apb_PREADY) && apb_PWRITE);
  assign slv_doRead = (((apb_PSEL[1] && apb_PENABLE) && apb_PREADY) && (! apb_PWRITE));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      regs_0 <= 32'h0;
      regs_1 <= 32'h0;
      regs_2 <= 32'h0;
      regs_3 <= 32'h0;
      regs_4 <= 32'h0;
      regs_5 <= 32'h0;
      regs_6 <= 32'h0;
      regs_7 <= 32'h0;
    end else begin
      case(apb_PADDR)
        8'h0 : begin
          if(slv_doWrite) begin
            regs_0 <= apb_PWDATA[31 : 0];
          end
        end
        8'h04 : begin
          if(slv_doWrite) begin
            regs_1 <= apb_PWDATA[31 : 0];
          end
        end
        8'h08 : begin
          if(slv_doWrite) begin
            regs_2 <= apb_PWDATA[31 : 0];
          end
        end
        8'h0c : begin
          if(slv_doWrite) begin
            regs_3 <= apb_PWDATA[31 : 0];
          end
        end
        8'h10 : begin
          if(slv_doWrite) begin
            regs_4 <= apb_PWDATA[31 : 0];
          end
        end
        8'h14 : begin
          if(slv_doWrite) begin
            regs_5 <= apb_PWDATA[31 : 0];
          end
        end
        8'h18 : begin
          if(slv_doWrite) begin
            regs_6 <= apb_PWDATA[31 : 0];
          end
        end
        8'h1c : begin
          if(slv_doWrite) begin
            regs_7 <= apb_PWDATA[31 : 0];
          end
        end
        default : begin
        end
      endcase
    end
  end


endmodule
