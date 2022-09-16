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

case class assignTest_1() extends Component {
  val io = new Bundle {
    val din = Vec(in UInt(8 bits), size = 4)
    val sum = out UInt(8 bits)
  }

  var  temp = UInt(width = 8 bits)

  //temp \= io.din(0)
  temp := io.din(0)
  for(i<-1 until 4) {
    temp \= temp + io.din(i)
  }
  io.sum := temp
  //io.sum \= temp
}

