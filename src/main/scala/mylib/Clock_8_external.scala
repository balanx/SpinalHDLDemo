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

//Hardware definition
class Clock_8 () extends Component {
  val io = new Bundle {
    val din  = in  Bool()
    val dout = out Bool()
  }
  val clkA = ClockDomain.external("a")
  val clkB = ClockDomain.external("b")

  val areaA = new ClockingArea(clkA) {
      val bufA = RegNext(io.din) init(False)
  }
  
  val areaB = new ClockingArea(clkB) {
      val bufB = BufferCC(areaA.bufA, False)
  }
  
  io.dout := areaB.bufB
}

