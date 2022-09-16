// +FHDR------------------------------------------------------------------------
// Project Name  : LogicDesignLib
// Author        : 热干面
// Email         : tobalanx@qq.com
// Website       : https://github.com/balanx/SpinalHDLDemo
// Created On    : 2022/09/16
//
// Description   : 
// 
// -----------------------------------------------------------------------------
// Modification History:
// Date         By           Version      Change Description
// -----------------------------------------------------------------------------
// 2022/09/16   热干面       1.0          Original
// -FHDR------------------------------------------------------------------------

package mylib

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba3.ahblite._
import spinal.lib.bus.amba3.apb._
import spinal.lib.bus.amba4.axi._
import spinal.lib.bus.bram._


//Generate the MyTopLevel's Verilog
object MyTopVerilog {
  def main(args: Array[String]) {
//
    SpinalVerilog(new assignTest_1)
    SpinalVerilog(new Stream_1)
    SpinalVerilog(new Stream_2)
    SpinalVerilog(new StreamFifo_1)
    SpinalVerilog(new StreamFifo_2)
    SpinalVerilog(new Clock_1(ClockDomain.external(name = "a"), ClockDomain.external(name = "b")) )
    SpinalVerilog(new Clock_2(ClockDomain.external("a"), ClockDomain.external("b")) )
    SpinalVerilog(new Clock_3(ClockDomain.external("a"), ClockDomain.external("b")) )
    SpinalVerilog(new GrayCount_1(ClockDomain.external("a"), ClockDomain.external("b")) )
    SpinalVerilog(new Clock_4(ClockDomain.external("a"), ClockDomain.external("b")) )
    SpinalVerilog(new StreamFifo_3(ClockDomain.external("a"), ClockDomain.external("b")) )
    SpinalVerilog(new Clock_5(ClockDomain.external("sys") ) )
    SpinalVerilog(new Clock_6(ClockDomain.external("sys") ) )
    SpinalVerilog(new Clock_7(ClockDomain.external("sys") ) )
    SpinalVerilog(new ResetArea_1)
    SpinalVerilog(new SlowArea_1)
    SpinalVerilog(new Axi_1)
    SpinalVerilog(new Axi_2_bridge(32, 32, 4) )
    SpinalVerilog(new Regif_1)
    SpinalVerilog(new Apb_1)
    SpinalVerilog(new Apb3Router (
        Apb3Config(16,32,3)
    ))
    SpinalVerilog(new Apb3Decoder(
        Apb3Config(16,32),
        List( (0, 20),
              (0x1000, 1 KiB),
              (0x2000, 1 KiB))
    ))
    //
    SpinalVerilog(new Ahb_1 (AhbLite3Config(16,32), Apb3Config(16,32) ))
    SpinalVerilog(new Ahb_2)
    SpinalVerilog(new Axi4SharedDecoder (
        axiConfig = Axi4Config(16,32,4),
        readDecodings   = List((0x0000, 64    ),
                               (0x1000, 1 KiB ),
                               (0x2000, 3 KiB )),
        writeDecodings  = List((0x3000, 3 KiB ),
                               (0x4000, 3 KiB )), 
        sharedDecodings = List((0x5000, 2 KiB ),
                               (0x6000, 1 KiB ))
    ))
    SpinalVerilog(new Bram_1)
    SpinalVerilog(new BRAMDecoder(
        BRAMConfig(32, 16),
        List( (0x0000, 20),
              (0x1000, 1 KiB))
    ))
    //
    SpinalVerilog(new Inst_1(8) )
    SpinalVerilog(new Inst_2(8) )
    SpinalVerilog(new Inst_3(8) )
    SpinalVerilog(new StreamFifo_3(ClockDomain.external("a"), ClockDomain.external("b")) )
    SpinalVerilog(new StreamFifo_4_setDefName)
    SpinalVerilog(new StreamWidthAdapter_1)
    SpinalVerilog(new StreamWidthAdapter_2)
//
    SpinalVerilog(new Mem_1)
  }
}

