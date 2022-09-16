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
class add_1 (dw: Int) extends Component {
  val validIn=in Bool()
  val data1=in UInt(dw bits)
  val data2=in UInt(dw bits)
  val sum =out UInt(dw bits)
  val sumValid=out Bool()
  sum:=RegNextWhen(data1+data2, validIn)
  sumValid:=RegNext(validIn, False)
}

class Inst_1 (dw:Int) extends Component {
  val io=new Bundle{
    val validIn=in Bool()
    val data1=in UInt(dw bits)
    val data2=in UInt(dw bits)
    val sum=out UInt(dw bits)
    val sumValid=out Bool()
  }
  val adder = new add_1(dw)

  adder.validIn<>io.validIn
  adder.data1<>io.data1
  adder.data2<>io.data2
  adder.sum<>io.sum
  adder.sumValid<>io.sumValid
}

