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
case class addPort (dw: Int=8) extends Bundle with IMasterSlave {
    case class dataPort(dw: Int=8) extends Bundle {
        val d0  = UInt(dw bits)
        val d1  = UInt(dw bits)
    }
    val din = Flow(dataPort(dw))
    val sum = Flow(UInt(dw bits))

    override def asMaster(): Unit = {
        master(din)
        slave (sum) //output
    }
}

class add_2 (dw: Int=8) extends Component{
  val io = new Bundle {
    val port = slave (addPort(dw))
  }

  io.port.sum.payload := RegNextWhen(io.port.din.d0 + io.port.din.d1, io.port.din.valid)
  io.port.sum.valid   := RegNext(io.port.din.valid, False)
}

class Inst_2 (dw: Int) extends Component {
  val io = new Bundle {
    val port = slave (addPort(dw))
  }

  val adder = new add_2(dw)

  adder.io.port <> io.port
}

