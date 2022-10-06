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
case class ddrCtrl() extends BlackBox {
  val signal = inout(Analog(Bool()))
}

case class ddrModel() extends BlackBox {
  val signal = inout(Analog(Bool()))
}

case class Inout_1() extends Component {
  val ddrCtrlInst  = ddrCtrl()
  val ddrModelInst = ddrModel()
  ddrCtrlInst.signal <> ddrModelInst.signal
}

