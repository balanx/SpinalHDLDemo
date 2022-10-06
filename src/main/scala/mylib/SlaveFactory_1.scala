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
import spinal.lib.bus.amba3.apb._

//Hardware definition
class SlaveFactory_1 () extends Component {
    val apb = slave(Apb3(Apb3Config(8,32,2) ))
    val slv = Apb3SlaveFactory(apb,1)  
    val regs = Vec(Reg(UInt(32 bits)) init 0, 8)

    (0 until 8).map(i=>slv.readAndWrite(regs(i),address= i * 4) )
}

