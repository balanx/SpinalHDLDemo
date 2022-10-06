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
class Clock_1 (val clkA : ClockDomain, val clkB : ClockDomain) extends Component {
  val io = new Bundle {
    val din  = in  Bool()
    val dout = out Bool()
  }

  val areaA = new ClockingArea(clkA) {
      val bufA = RegNext(io.din) init(False)
  }
  
  val areaB = new ClockingArea(clkB) {
      val bufB = BufferCC(areaA.bufA, False)
  }
  
  io.dout := areaB.bufB
}

object ClockSim_1 extends App {
  import spinal.core.sim._
  import scala.util.Random._
  
  SimConfig
    .withWave
    .compile(new Clock_1(ClockDomain.external("clkA"), ClockDomain.external("clkB") ))
    .doSim {
        dut =>
            dut.clkA.forkStimulus(20)
            dut.clkB.forkStimulus(period = 10)
            dut.io.din #= false
            dut.clkA.waitSampling()
            dut.clkB.waitSampling()
            for (i <- 0 until 10) {
                dut.io.din #= nextBoolean()
                dut.clkA.waitSampling(5)
            }
    }
}
