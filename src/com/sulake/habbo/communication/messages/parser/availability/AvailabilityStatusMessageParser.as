package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_929:Boolean;
      
      private var var_1059:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_929 = param1.readInteger() > 0;
         var_1059 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_929;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1059;
      }
      
      public function flush() : Boolean
      {
         var_929 = false;
         var_1059 = false;
         return true;
      }
   }
}
