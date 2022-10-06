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
class Ahb_1 (ahbConfig:AhbLite3Config, apbConfig:Apb3Config) extends Component{
    val ahb = slave(AhbLite3(ahbConfig))
    val apb = master(Apb3(apbConfig))
    val bridge = AhbLite3ToApb3Bridge(ahbConfig,apbConfig)
    ahb <> bridge.io.ahb
    apb <> bridge.io.apb
}

