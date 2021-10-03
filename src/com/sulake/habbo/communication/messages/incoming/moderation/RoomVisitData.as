package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_641:String;
      
      private var var_1948:int;
      
      private var var_1498:Boolean;
      
      private var _roomId:int;
      
      private var var_1949:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1498 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_641 = param1.readString();
         var_1949 = param1.readInteger();
         var_1948 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1498;
      }
      
      public function get roomName() : String
      {
         return var_641;
      }
      
      public function get enterMinute() : int
      {
         return var_1948;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1949;
      }
   }
}
