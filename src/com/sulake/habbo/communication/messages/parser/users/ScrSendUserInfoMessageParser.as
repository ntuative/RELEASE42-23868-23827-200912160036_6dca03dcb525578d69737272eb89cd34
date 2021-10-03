package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1559:int;
      
      private var var_1280:String;
      
      private var var_1560:int;
      
      private var var_1557:int;
      
      private var var_1561:int;
      
      private var var_1558:Boolean;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function get productName() : String
      {
         return var_1280;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_1558;
      }
      
      public function get responseType() : int
      {
         return var_1557;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_1560;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1280 = param1.readString();
         var_1560 = param1.readInteger();
         var_1559 = param1.readInteger();
         var_1561 = param1.readInteger();
         var_1557 = param1.readInteger();
         var_1558 = param1.readBoolean();
         return true;
      }
      
      public function get memberPeriods() : int
      {
         return var_1559;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_1561;
      }
   }
}
