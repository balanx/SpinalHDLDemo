// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : Ahb_2
// Git hash  : 40a09e7801b4d01ff6c67f3e402af9d0310f44f7

`timescale 1ns/1ps

module Ahb_2 (
  input      [11:0]   ahbX_HADDR,
  input               ahbX_HSEL,
  input               ahbX_HREADY,
  input               ahbX_HWRITE,
  input      [2:0]    ahbX_HSIZE,
  input      [2:0]    ahbX_HBURST,
  input      [3:0]    ahbX_HPROT,
  input      [1:0]    ahbX_HTRANS,
  input               ahbX_HMASTLOCK,
  input      [31:0]   ahbX_HWDATA,
  output reg [31:0]   ahbX_HRDATA,
  output reg          ahbX_HREADYOUT,
  output reg          ahbX_HRESP,
  input      [11:0]   ahbY_HADDR,
  input               ahbY_HSEL,
  input               ahbY_HREADY,
  input               ahbY_HWRITE,
  input      [2:0]    ahbY_HSIZE,
  input      [2:0]    ahbY_HBURST,
  input      [3:0]    ahbY_HPROT,
  input      [1:0]    ahbY_HTRANS,
  input               ahbY_HMASTLOCK,
  input      [31:0]   ahbY_HWDATA,
  output reg [31:0]   ahbY_HRDATA,
  output reg          ahbY_HREADYOUT,
  output reg          ahbY_HRESP,
  output reg [11:0]   ahbZ_HADDR,
  output reg          ahbZ_HSEL,
  output reg          ahbZ_HREADY,
  output reg          ahbZ_HWRITE,
  output reg [2:0]    ahbZ_HSIZE,
  output reg [2:0]    ahbZ_HBURST,
  output reg [3:0]    ahbZ_HPROT,
  output reg [1:0]    ahbZ_HTRANS,
  output reg          ahbZ_HMASTLOCK,
  output reg [31:0]   ahbZ_HWDATA,
  input      [31:0]   ahbZ_HRDATA,
  input               ahbZ_HREADYOUT,
  input               ahbZ_HRESP
);


  always @(*) begin
    ahbX_HRDATA = 32'h0;
    if(!ahbY_HSEL) begin
      ahbX_HRDATA = ahbZ_HRDATA;
    end
  end

  always @(*) begin
    ahbY_HRDATA = 32'h0;
    if(ahbY_HSEL) begin
      ahbY_HRDATA = ahbZ_HRDATA;
    end
  end

  always @(*) begin
    ahbX_HREADYOUT = 1'b0;
    if(!ahbY_HSEL) begin
      ahbX_HREADYOUT = ahbZ_HREADYOUT;
    end
  end

  always @(*) begin
    ahbY_HREADYOUT = 1'b0;
    if(ahbY_HSEL) begin
      ahbY_HREADYOUT = ahbZ_HREADYOUT;
    end
  end

  always @(*) begin
    ahbX_HRESP = 1'b0;
    if(!ahbY_HSEL) begin
      ahbX_HRESP = ahbZ_HRESP;
    end
  end

  always @(*) begin
    ahbY_HRESP = 1'b0;
    if(ahbY_HSEL) begin
      ahbY_HRESP = ahbZ_HRESP;
    end
  end

  always @(*) begin
    if(ahbY_HSEL) begin
      ahbZ_HADDR = ahbY_HADDR;
    end else begin
      ahbZ_HADDR = ahbX_HADDR;
    end
  end

  always @(*) begin
    if(ahbY_HSEL) begin
      ahbZ_HSEL = ahbY_HSEL;
    end else begin
      ahbZ_HSEL = ahbX_HSEL;
    end
  end

  always @(*) begin
    if(ahbY_HSEL) begin
      ahbZ_HREADY = ahbY_HREADY;
    end else begin
      ahbZ_HREADY = ahbX_HREADY;
    end
  end

  always @(*) begin
    if(ahbY_HSEL) begin
      ahbZ_HWRITE = ahbY_HWRITE;
    end else begin
      ahbZ_HWRITE = ahbX_HWRITE;
    end
  end

  always @(*) begin
    if(ahbY_HSEL) begin
      ahbZ_HSIZE = ahbY_HSIZE;
    end else begin
      ahbZ_HSIZE = ahbX_HSIZE;
    end
  end

  always @(*) begin
    if(ahbY_HSEL) begin
      ahbZ_HBURST = ahbY_HBURST;
    end else begin
      ahbZ_HBURST = ahbX_HBURST;
    end
  end

  always @(*) begin
    if(ahbY_HSEL) begin
      ahbZ_HPROT = ahbY_HPROT;
    end else begin
      ahbZ_HPROT = ahbX_HPROT;
    end
  end

  always @(*) begin
    if(ahbY_HSEL) begin
      ahbZ_HTRANS = ahbY_HTRANS;
    end else begin
      ahbZ_HTRANS = ahbX_HTRANS;
    end
  end

  always @(*) begin
    if(ahbY_HSEL) begin
      ahbZ_HMASTLOCK = ahbY_HMASTLOCK;
    end else begin
      ahbZ_HMASTLOCK = ahbX_HMASTLOCK;
    end
  end

  always @(*) begin
    if(ahbY_HSEL) begin
      ahbZ_HWDATA = ahbY_HWDATA;
    end else begin
      ahbZ_HWDATA = ahbX_HWDATA;
    end
  end


endmodule
