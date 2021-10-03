package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1169:int;
      
      private var var_1170:int;
      
      private var var_1171:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1169;
      }
      
      public function flush() : Boolean
      {
         var_1170 = 0;
         var_1169 = 0;
         var_1171 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1170;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1169 = param1.readInteger();
         var_1170 = param1.readInteger();
         var_1171 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1171;
      }
   }
}
