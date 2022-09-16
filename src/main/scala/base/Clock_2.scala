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
class Clock_2 (val clkA : ClockDomain, val clkB : ClockDomain) extends Component {
  val io = new Bundle {
    val din  = in  Bool()
    val dout = out Bool()
  }

  val areaA = new ClockingArea(clkA) {
      val bufA = RegNext(io.din) init(False)
  }
  
  val areaB = new ClockingArea(clkB) {
      val buf0 = RegNext(areaA.bufA) init(False) addTag(crossClockDomain)
      val buf1 = RegNext(buf0) init(False)
  }
  
  io.dout := areaB.buf1
}

