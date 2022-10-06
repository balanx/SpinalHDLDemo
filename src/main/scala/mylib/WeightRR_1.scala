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
case class WeightRR_1() extends Component {
  val io=new Bundle{
    val reg=Vec(in Bool(),size= 4)
    val grant=out Bits(4 bits)
  }
  noIoPrefix()

  val portWeight=Array(1,2,3,4)
  val portWeightWidth=portWeight.map( log2Up(_)+1)
  val weightCnt=for(index<- 0 until 4) yield UInt(portWeightWidth(index) bits)setAsReg() init(portWeight(index))

  for(index<-0 until 4){
    when(io.grant(index) ){
      weightCnt(index):= weightCnt(index)-1 
    }otherwise{
      weightCnt(index):= U(portWeight(index),portWeightWidth(index) bits)
    }
  }

  val maskLocked=Reg(Vec(Bool(), size = 4))
  for(bitId<- maskLocked.range){
    maskLocked(bitId)init(Bool(bitId == maskLocked.length-1))
  }
  val maskLockedToBits = maskLocked.asBits
  val maskToUInt=OHToUInt(maskLockedToBits)
  val ohPority=(weightCnt.read(maskToUInt)===0)?Vec(maskLocked.last +: maskLocked.take(maskLocked.length-1))|maskLocked
  io.grant:=OHMasking.roundRobin(io.reg,ohPority).asBits

  when(io.grant.orR){
    maskLocked.assignFromBits(io.grant)
  }
}


