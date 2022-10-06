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
class Apb_1 extends Component {    
    val din  =  slave(Apb3(Apb3Config(16,32)))
    val do1  = master(Apb3(Apb3Config( 8,32)))
    val do2  = master(Apb3(Apb3Config(12,32)))    
    val do3  = master(Apb3(Apb3Config(12,32)))      
    val do4  = master(Apb3(Apb3Config( 2,32)))
    
val mux = Apb3Decoder (master = din, 
                       slaves = List(do1 ->  (0x0000,  64   ),
                                     do2 ->  (0x1000,  1 KiB),                                   
                                     do3 ->  (0x2000,  2 KiB),                                   
                                     do4 ->  (0x3000,  32   ))
                      )
}

