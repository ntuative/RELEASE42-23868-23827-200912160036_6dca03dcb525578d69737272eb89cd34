package com.sulake.habbo.widget.events
{
   public class RoomWidgetCreditFurniUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_581:String = "RWCFUE_CREDIT_FURNI_UPDATE";
       
      
      private var var_152:int;
      
      private var var_2004:Number;
      
      public function RoomWidgetCreditFurniUpdateEvent(param1:String, param2:int, param3:Number, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         var_2004 = param3;
         var_152 = param2;
      }
      
      public function get creditValue() : Number
      {
         return var_2004;
      }
      
      public function get objectId() : int
      {
         return var_152;
      }
   }
}
