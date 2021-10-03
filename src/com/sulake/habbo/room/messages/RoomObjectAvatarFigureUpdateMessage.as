package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1720:String;
      
      private var var_531:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_531 = param1;
         var_1720 = param2;
      }
      
      public function get race() : String
      {
         return var_1720;
      }
      
      public function get figure() : String
      {
         return var_531;
      }
   }
}
