package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1406:String;
      
      private var var_1589:int;
      
      private var var_1587:int;
      
      private var var_1588:int;
      
      private var var_1590:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1589 = param1.readInteger();
         var_1588 = param1.readInteger();
         var_1587 = param1.readInteger();
         var_1590 = param1.readString();
         var_1406 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1406;
      }
      
      public function get hour() : int
      {
         return var_1589;
      }
      
      public function get minute() : int
      {
         return var_1588;
      }
      
      public function get chatterName() : String
      {
         return var_1590;
      }
      
      public function get chatterId() : int
      {
         return var_1587;
      }
   }
}
