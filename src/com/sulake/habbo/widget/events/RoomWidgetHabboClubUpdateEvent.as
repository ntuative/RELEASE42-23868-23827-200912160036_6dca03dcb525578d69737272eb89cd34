package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_204:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2135:Boolean = false;
      
      private var var_2134:int = 0;
      
      private var var_2136:int = 0;
      
      private var var_2137:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_204,param5,param6);
         var_2137 = param1;
         var_2136 = param2;
         var_2134 = param3;
         var_2135 = param4;
      }
      
      public function get pastPeriods() : int
      {
         return var_2134;
      }
      
      public function get periodsLeft() : int
      {
         return var_2136;
      }
      
      public function get daysLeft() : int
      {
         return var_2137;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_2135;
      }
   }
}
