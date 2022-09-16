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
import spinal.core.sim._

//Hardware definition
class GrayCount_1 (val clkA : ClockDomain, val clkB : ClockDomain) extends Component {
  val io = new Bundle {
    val clr = in  Bool()
    val inc = in  Bool()
    val cnt = out UInt(8 bits)
  }

  val areaA = new ClockingArea(clkA) {
    val gray = GrayCounter(8, io.inc)
    when (io.clr) (gray.clearAll() )
  }
  
  val areaB = new ClockingArea(clkB) {
    val graycc = BufferCC(areaA.gray, U(0, 8 bits), 3).asBits
    io.cnt := fromGray(graycc)
  }
  
}

