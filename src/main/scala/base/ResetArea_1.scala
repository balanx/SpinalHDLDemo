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
class ResetArea_1 () extends Component {
  val din  = Vec(in UInt(2 bits), size = 2)
  val sum  = out UInt (2 bits) setAsReg()
  val rst  = in Bool()

  val withRst = new ResetArea(rst, cumulative = true) {
      val s = RegNext(din(0) + 1) init(0)
  }
  
  val b = new Area {
      val d = RegNext(din(1) ) init(0)
      sum := withRst.s + d
  }
}

