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
class StreamCCByToggle_1 extends Component {
    val clka = Bool()
    val rsta = Bool()
    val clkb = Bool()
    val rstb = Bool()

    val clockA = ClockDomain(clka, rsta)
    val clockB = ClockDomain(clkb, rstb)

    val streamA = Stream(Bits(8 bits))
    val streamB = StreamCCByToggle (
      input       = streamA,
      inputClock  = clockA,
      outputClock = clockB
    )
}

