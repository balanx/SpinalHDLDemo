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
class SlowArea_1 () extends Component {
  val io = new Bundle {
    val c0  = out Bool() setAsReg() init(False)
    val c1  = out Bool() setAsReg() init(False)
  }

  val  normal = new Area {
      io.c0 := ~io.c0
  }
  
  val  slow = new SlowArea(factor = 4) {
      val tmp = Reg(Bool) init(false)
      tmp := ~tmp
      io.c1 := tmp
  }
}

