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
import spinal.lib.bus.amba4.axilite._

//Hardware definition
case class Bundle_1 () extends Component {
  val io=new Bundle {
    val inPort=slave (AxiLite4(32,32))
    val output=master(AxiLite4(32,32))
    val state =out(Bits(width = 5 bits))
  }
  noIoPrefix ()
  io.output<>io.inPort
  val aliteMon=AxiLite4Mon ()
  io.state:=aliteMon.io.state
  aliteMon.io.alite.assignAllByName(io.inPort)
}

case class AxiLite4Mon() extends Component {
  val io = new Bundle {
    val alite = in (AxiLite4(32,32) )
    val state = out(Bits( width = 5 bits) )
  }
  noIoPrefix()
  io.state := io.alite.aw.fire##io.alite.w.fire##io.alite.b.fire##io.alite.ar.fire##io.alite.r.fire
}


