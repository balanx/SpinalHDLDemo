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

//Hardware definition
case class Assert_1() extends Component {

    val a, b, c = UInt(8 bits)
    a := U"xf0"
    b := U"x0f"

    c := a + b
    assert(c === U"8'xff")

    val d = a +^ b
    assert(d === U"9'x0ff")

    val e = a +| U"8'x20"
    assert(e === U"8'xff")

}


