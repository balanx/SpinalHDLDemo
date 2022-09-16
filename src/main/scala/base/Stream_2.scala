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
class Stream_2 extends Component {
  val io = new Bundle {
    val din  = slave  Stream(UInt(8 bits))
    val dout = master Stream(UInt(8 bits))
  }

  val tmp = Mux(io.din.payload > 0x80, io.din.payload+1, io.din.payload-1)

  io.dout << io.din.translateWith(tmp)
  //io.dout </< io.din.translateWith(tmp)
  //io.dout <-< io.din.translateWith(tmp)
}
