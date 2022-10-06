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

//Hardware definition
class Axi_1 extends Component {
  val axicfg = Axi4Config(
      addressWidth = 32,
      dataWidth    = 32,
      idWidth      = 4
    )
  val io = new Bundle {
    val s  = slave  (Axi4(axicfg) )
    val m  = master (Axi4(axicfg) )
    //val s  = slave  (Axi4Shared(axicfg) )
    //val m  = master (Axi4Shared(axicfg) )
  }

  io.m << io.s
}

