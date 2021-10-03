package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class IssuePickFailedMessageParser implements IMessageParser
   {
       
      
      private var var_1802:String;
      
      private var var_1800:int;
      
      private var var_1801:int;
      
      public function IssuePickFailedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1801 = param1.readInteger();
         var_1800 = param1.readInteger();
         var_1802 = param1.readString();
         return true;
      }
      
      public function get issueId() : int
      {
         return var_1801;
      }
      
      public function get pickerUserId() : int
      {
         return var_1800;
      }
      
      public function get pickerUserName() : String
      {
         return var_1802;
      }
   }
}
