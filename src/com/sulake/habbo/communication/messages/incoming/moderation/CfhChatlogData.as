package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_886:int;
      
      private var var_2159:int;
      
      private var var_1514:int;
      
      private var var_114:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1514 = param1.readInteger();
         var_2159 = param1.readInteger();
         var_886 = param1.readInteger();
         var_114 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1514);
      }
      
      public function get reportedUserId() : int
      {
         return var_886;
      }
      
      public function get callerUserId() : int
      {
         return var_2159;
      }
      
      public function get callId() : int
      {
         return var_1514;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_114;
      }
   }
}
