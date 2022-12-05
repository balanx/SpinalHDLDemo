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

import scala.io.Source

class MyBlackBox_1(AWIDTH:Int, DWIDTH:Int) extends BlackBox {
    val generic = new Generic {
      val AWIDTH = MyBlackBox_1.this.AWIDTH
      val DWIDTH = MyBlackBox_1.this.DWIDTH
    }

  val io = new Bundle {
    val clk = in Bool()
    val portA = new Bundle{
      val en   = in  Bool()
      val addr = in  Bits(AWIDTH bits)
      val data = in  Bits(DWIDTH bits)
    }
    val portB = new Bundle{
      val en   = out Bool()
      val addr = out Bits(AWIDTH bits)
      val data = out Bits(DWIDTH bits)
    }
  }

  // Map the clk
  mapCurrentClockDomain(io.clk)

  // Remove io_ prefix
  noIoPrefix()

  // Add all rtl dependencies
  addRTLPath("./src/main/scala/mylib/MyBlackBoxIP.v")

  def setRtlInLine() = {
    val rtlContent = new StringBuilder()
    for (rtlFile <- listRTLPath) {
      val rtlHdl = Source.fromFile(rtlFile)
      rtlContent ++= rtlHdl.mkString
      rtlHdl.close()
    }
    setInline(new BlackBoxImpl {
      override def getVerilog() = rtlContent.toString()
    })
  }

  setRtlInLine()

  // Function used to rename all signals of the blackbox
  private def renameIO(): Unit = {
    io.flatten.foreach(bt => {
      println(s"bt = $bt, ,,,${bt.getName()}")
      if(bt.getName().contains("portA")) bt.setName(bt.getName().replace("portA_", "") + "_A")
      if(bt.getName().contains("portB")) bt.setName(bt.getName().replace("portB_", "") + "_B")
    })
  }

  // Execute the function renameIO after the creation of the component
  addPrePopTask(() => renameIO())

}

// This code generate these names:
//    clk
//    cs_A, rwn_A, dIn_A, dOut_A
//    cs_B, rwn_B, dIn_B, dOut_B

class BlackBoxTest_1 () extends Component{
  val io = new Bundle {
    val w = new Bundle {
      val en   = in Bool()
      val addr = in Bits (10 bits)
      val data = in Bits (32 bits)
    }
    val r = new Bundle {
      val en   = out Bool()
      val addr = out Bits (10 bits)
      val data = out Bits(32 bits)
    }
  }

  // Instantiate the blackbox
  val ram = new MyBlackBox_1(10, 32)

  // Connect all the signals
  io.w.en   <> ram.io.portA.en
  io.w.addr <> ram.io.portA.addr
  io.w.data <> ram.io.portA.data
  io.r.en   <> ram.io.portB.en
  io.r.addr <> ram.io.portB.addr
  io.r.data <> ram.io.portB.data
}

