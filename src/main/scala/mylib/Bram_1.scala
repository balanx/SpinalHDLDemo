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

import spinal.lib.bus.bram._

//Hardware definition
class Bram_1 () extends Component{    
    val din  = slave (BRAM(BRAMConfig(32,16)))
    val do1  = master(BRAM(BRAMConfig(32,16)))
    val do2  = master(BRAM(BRAMConfig(32,16))) 

val brammux = BRAMDecoder(din, List(do1 ->  (0x0000, 1 KiB),
                                    do2 ->  (0x1000, 3 KiB))) 
}

