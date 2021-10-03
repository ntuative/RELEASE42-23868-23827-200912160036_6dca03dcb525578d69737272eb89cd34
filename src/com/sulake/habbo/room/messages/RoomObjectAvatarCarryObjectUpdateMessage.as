package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_911:int;
      
      private var var_1107:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_911 = param1;
         var_1107 = param2;
      }
      
      public function get itemType() : int
      {
         return var_911;
      }
      
      public function get itemName() : String
      {
         return var_1107;
      }
   }
}
