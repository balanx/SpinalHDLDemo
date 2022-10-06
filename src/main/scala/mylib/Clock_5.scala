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
class Clock_5 (val sys_clk : ClockDomain) extends Component {
  val io = new Bundle {
    val c0  = out Bool() setAsReg() init(False)
    val c1  = out Bool()
  }
  println(s"io.c0.clockDomain:${io.c0.clockDomain}")
  println(s"io.c1.clockDomain:${io.c1.clockDomain}")

  val  _= new ClockingArea(sys_clk) {
      val tmp = Reg(Bool) init False
      println(s"tmp.clockDomain:${tmp.clockDomain}")
      tmp := ~tmp
      io.c0 := ~io.c0
      io.c1 := tmp
  }.setName("")
  
}

//默认时钟域
//信号定义位置决定了属于那个时钟域，与Reg声明位置无关
