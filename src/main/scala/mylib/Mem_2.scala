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


case class Mem_2() extends Component{

    val io = new Bundle {
        val writeAddress = in  UInt(8  bits)
        val writeData    = in  Bits(32 bits)
        val writeValid   = in  Bool()

        val readAddress  = in  UInt(8  bits)
        val readValid    = in  Bool()
        val readData     = out Bits(32 bits)
    }

    val mem = Mem(Bits(32 bits), wordCount = 256)
    mem.generateAsBlackBox()

    mem.write(
      enable  = io.writeValid,
      address = io.writeAddress,
      data    = io.writeData
    )

    io.readData := mem.readSync(
      enable  = io.readValid,
      address = io.readAddress
    )

}

