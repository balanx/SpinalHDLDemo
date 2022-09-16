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
case class MemoryWrite() extends Bundle{
  val address = UInt(8  bits)
  val data    = Bits(32 bits)
}

case class Mem_1() extends Component{
  val io = new Bundle{
    val Wm  = slave  Flow(MemoryWrite())
    val Rm  = slave  Stream(UInt(8  bits))
    val rsp = master Stream(Bits(32 bits))
  }

  val mem = Mem(Bits(32 bits),1 << 8)

  mem.write(
    enable  = io.Wm.valid,
    address = io.Wm.address,
    data    = io.Wm.data
  )

  io.rsp << mem.streamReadSync(io.Rm)

}

