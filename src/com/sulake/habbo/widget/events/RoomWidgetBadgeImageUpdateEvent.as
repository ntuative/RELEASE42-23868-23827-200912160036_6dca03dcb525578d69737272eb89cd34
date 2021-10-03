package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_682:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_1783:BitmapData;
      
      private var var_1784:String;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_682,param3,param4);
         var_1784 = param1;
         var_1783 = param2;
      }
      
      public function get badgeImage() : BitmapData
      {
         return var_1783;
      }
      
      public function get badgeID() : String
      {
         return var_1784;
      }
   }
}
