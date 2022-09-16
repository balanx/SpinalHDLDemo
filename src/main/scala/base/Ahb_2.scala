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
import spinal.lib.bus.amba3.ahblite._
import spinal.lib.bus.amba3.apb._

//Hardware definition
class Ahb_2 extends Component {    
  val ahbConfig = AhbLite3Config (
    addressWidth = 12,
    dataWidth    = 32
  )
  val ahbX = slave (AhbLite3(ahbConfig))
  val ahbY = slave (AhbLite3(ahbConfig))
  val ahbZ = master(AhbLite3(ahbConfig))
  ahbX.HRDATA := 0
  ahbY.HRDATA := 0
  ahbX.HREADYOUT := False
  ahbY.HREADYOUT := False
  ahbX.HRESP := False
  ahbY.HRESP := False    
  when(ahbY.HSEL) {
    //...
      ahbZ <> ahbY
  }.otherwise {
      ahbZ <> ahbX
  }
}

