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
import spinal.lib.bus.amba4.axi._
import spinal.lib.bus.amba3.apb._

//Hardware definition
import spinal.lib.bus.regif._

class Interrupt_2 extends Component{
  val io = new Bundle{
    val apb = slave(Apb3(Apb3Config(16,32)))
    val int_pulse0, int_pulse1, int_pulse2, int_pulse3 = in Bool()
    val int_level0, int_level1, int_level2 = in Bool()
    val sys_int = out Bool()
    val gpio_int = out Bool()
  }

  val busif = BusInterface(io.apb,  (0x000,1 KiB), 0, regPre = "AP")
  io.sys_int  := busif.interruptFactory("SYS",io.int_pulse0, io.int_pulse1, io.int_pulse2, io.int_pulse3)
  io.gpio_int := busif.interruptLevelFactory("GPIO",io.int_level0, io.int_level1, io.int_level2, io.sys_int)

  def genDoc() = {
    busif.accept(CHeaderGenerator("intrreg","Intr"))
    busif.accept(HtmlGenerator("intrreg", "Interupt Example"))
    busif.accept(JsonGenerator("intrreg"))
    this
  }

  this.genDoc()
}

