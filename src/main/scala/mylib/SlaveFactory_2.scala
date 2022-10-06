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

case class SlaveFactory_2() extends Component{
    val io=new Bundle{
        val alite0=slave (AxiLite4(32,32))
        val alite1=slave (AxiLite4(32,32))
    }
    val regSeg0=regSeg("port0")
    val regSeg1=regSeg("port1")
    io.alite0<>regSeg0.io.alite
    io.alite1<>regSeg1.io.alite

}

case class regSeg(moduleName:String) extends Component{
    val io=new Bundle{
        val alite=slave(AxiLite4(32,32))
    }
    val factory=new AxiLite4SlaveFactory(io.alite)
    val cnt0=UInt(8 bits) setAsReg()
    val cnt1=UInt(8 bits) setAsReg()
    factory.readAndWrite(cnt0,0,0,"counter0")
    factory.readAndWrite(cnt1,4,0,"counter1")

}

