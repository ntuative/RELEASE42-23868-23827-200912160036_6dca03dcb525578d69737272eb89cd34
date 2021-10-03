package com.sulake.habbo.widget.events
{
   public class RoomWidgetAvatarEditorUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_951:String = "RWAEUE_HIDE_CLUB_PROMO";
      
      public static const const_533:String = "RWUE_AVATAR_EDITOR_CLOSED";
      
      public static const const_1274:String = "RWAEUE_MODE_TRIAL";
      
      public static const const_922:String = "RWAEUE_MODE_FULL";
      
      public static const const_409:String = "RWAEUE_SHOW_CLUB_PROMO";
       
      
      private var var_2106:String;
      
      private var var_2107:String;
      
      public function RoomWidgetAvatarEditorUpdateEvent(param1:String, param2:String = "", param3:String = "RWAEUE_MODE_FULL", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         var_2106 = param2;
         var_2107 = param3;
      }
      
      public function get promoMode() : String
      {
         return var_2107;
      }
      
      public function get promoImageUrl() : String
      {
         return var_2106;
      }
   }
}
