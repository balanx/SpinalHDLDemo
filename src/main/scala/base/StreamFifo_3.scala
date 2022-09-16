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
class StreamFifo_3 (val clkA : ClockDomain, val clkB : ClockDomain) extends Component {
  val io = new Bundle {
    val din  = slave  Stream(UInt(8 bits))
    val dout = master Stream(UInt(8 bits))
  }
  
  val myFifo = StreamFifoCC (
        dataType  = UInt(8 bits),
        depth     = 128,
        pushClock = clkA,
        popClock  = clkB
      )

  myFifo.io.push << io.din
  myFifo.io.pop  >> io.dout
}

