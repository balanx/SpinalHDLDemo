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

case class SlaveFactory_3() extends Component{
  val io = new Bundle {
      val aLiteCtrl = slave (AxiLite4(32,32))
      val en=out Bool() setAsReg() init(False)
      val plus=out Bool() setAsReg() init(False)
      val cnt=in UInt(64 bits)
  }
  noIoPrefix()
  AxiLite4SpecRenamer(io.aLiteCtrl)

  val _= new Area{
    io.plus.clear()
    val busCtrl=new AxiLite4SlaveFactory(io.aLiteCtrl)

    busCtrl.readAndWrite(io.en  , address =   0, bitOffset = 0, documentation="en")
    busCtrl.readAndWrite(io.plus, address = 0x4, bitOffset = 0, documentation="data")
    busCtrl.readMultiWord(io.cnt, address = 0x8, documentation="status")
    busCtrl.printDataModel()

  }.setName("") 
}

object axi4LiteFactorySimApp extends App{
  import spinal.core.sim._
  import spinal.lib.bus.amba4.axilite.sim._

  SimConfig
      .withWave
      .compile(SlaveFactory_3())
      .doSim { dut=>
          val aliteDrv=AxiLite4Driver(dut.io.aLiteCtrl,dut.clockDomain)
          dut.io.cnt#=BigInt("f0000000f",16)
          dut.clockDomain.forkStimulus( period = 10)
          aliteDrv.reset()
          dut.clockDomain.waitSampling()
          aliteDrv.write(address = 0x0, data= 1)
          aliteDrv.read (address= 0x0)
          aliteDrv.write(address=0x4, data =1)
          aliteDrv.read( address = 0x8)
          aliteDrv.read( address = 0xc)
          dut.clockDomain.waitSampling(count = 10)
      }
}


