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
class Axi_2_bridge (aw: Int, dw: Int, iw: Int) extends Component {
  val axicfg = Axi4Config(
      addressWidth = aw,
      dataWidth    = dw,
      idWidth      = iw,
      useProt      = false,
      useCache     = false,
      useRegion    = false,
      useQos       = false,
      useLock      = false
    )
  //val io = new Bundle {
    val axi = slave (Axi4Shared(axicfg) )
    val apb = master(Apb3(Apb3Config(aw, dw) ))
    val bridge = Axi4SharedToApb3Bridge(aw, dw, iw)
  //}

  axi <> bridge.io.axi
  apb <> bridge.io.apb
}

