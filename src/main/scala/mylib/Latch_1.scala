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
class Latch_1 () extends Component {

  val a=in  UInt(2 bits)
  val b=out UInt(8 bits)
  b.noCombLoopCheck
  when(a<1){
    b:=3
  }otherwise{
    b:=b
  }
}

