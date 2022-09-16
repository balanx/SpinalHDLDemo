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
class Clock_6 (val sys_clk : ClockDomain) extends Component {
  val io = new Bundle {
    val c0  = out Bool() setAsReg() init(False)
    val c1  = out Bool() setAsReg() init(False)
  }

  val  _= new ClockingArea(sys_clk) {
      io.c0 := ~io.c0
      io.c1 := ~io.c1
  }.setName("")
  
}

