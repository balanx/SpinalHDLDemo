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
import spinal.lib.{Endianness, _}

//Hardware definition
class StreamWidthAdapter_1 extends Component {
  val io = new Bundle {
    val din  = slave  Stream(UInt(32 bits))
    val dout = master Stream(UInt(8 bits))
  }

  StreamWidthAdapter(io.din, io.dout, endianness = BIG)
  //StreamWidthAdapter(io.din, io.dout, endianness = LITTLE)

}

