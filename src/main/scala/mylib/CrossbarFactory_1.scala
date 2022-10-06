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
import spinal.lib.bus.amba4.axi._

//Hardware definition
case class CrossbarFactory_1 () extends Component{
    val masterAxi4Cfg=Axi4Config(
        addressWidth = 64,
        dataWidth = 512,
        idWidth = 4
    )

    val slaveAxi4Cfg=masterAxi4Cfg.copy(idWidth = 5)

    val io=new Bundle{
        val axi4In =Vec(slave (Axi4(masterAxi4Cfg)), size=2)
        val axi40ut=Vec(master(Axi4( slaveAxi4Cfg)), size=2)

        axi4In.foreach (Axi4SpecRenamer(_)) // format name
        axi40ut.foreach(Axi4SpecRenamer(_))
    }
    val crossbarFactoryInst=Axi4CrossbarFactory()

    crossbarFactoryInst.addSlaves(
        io.axi40ut(0) -> (0, 1 GiB),
        io.axi40ut(1) -> (1 GiB, 1 GiB)
    )

    io.axi4In.foreach(crossbarFactoryInst.addConnection(_, io.axi40ut) ) // i -> List (j0, j1)

    io.axi40ut.foreach(axi4=>
        crossbarFactoryInst.addPipelining (axi4) ( // f(axi)(ro)(wo)
            (masterPort,slavePort)=>{
                masterPort.ar>->slavePort.ar
                slavePort.r>->masterPort.r
            }
        )(
            (masterPort,slavePort)=>{
                masterPort.aw>->slavePort.aw
                masterPort.w>->slavePort.w
                slavePort.b>->masterPort.b
            }
        )
    )

    crossbarFactoryInst.build()
}

// https://spinalhdl.github.io/SpinalDoc-RTD/master/SpinalHDL/miscelenea/lib/briey/hardware_toplevel.html?highlight=crossbar

