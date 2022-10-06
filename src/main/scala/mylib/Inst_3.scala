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
object add_3 {
    def apply (dw: Int=8, port: addPort) : Unit = {
      val adder = new add_2(dw)
      adder.io.port <> port
  }
}

class Inst_3 (dw: Int) extends Component {
  val io = new Bundle {
    val port = slave (addPort(dw))
  }

  add_3(dw, io.port)
}

//可以象软件调用函数的方式例化模块
//但是没有例化名？

