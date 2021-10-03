package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_555:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1572:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_555);
         var_1572 = param1;
      }
      
      public function get tag() : String
      {
         return var_1572;
      }
   }
}
