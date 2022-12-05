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
object Nginx_1  extends App {
  //var effectiveWeight = Array(4, 2, 1)
  //var effectiveWeight = Array(1, 1, 1)
  var effectiveWeight = Array(5, 1, 1, 1, 1)
  var totalWeight = effectiveWeight.reduce(_+_)
  var currentWeight = effectiveWeight
  var max = 0

  println(s"effective=${effectiveWeight.toList}, total=$totalWeight\n")

  //for(i <- 1 until (1 << effectiveWeight.length)) {
  for(i <- 0 until 9) {
    currentWeight = currentWeight zip effectiveWeight map (t=>t._1 + t._2)
    max = currentWeight.indexOf(currentWeight.max)
    currentWeight(max) -= totalWeight
    println(s"current=${currentWeight.toList}, max=$max")
  }
}

