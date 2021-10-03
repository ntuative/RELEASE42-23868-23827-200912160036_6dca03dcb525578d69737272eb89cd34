package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1398:int = 2;
      
      public static const const_286:int = 4;
      
      public static const const_1157:int = 1;
      
      public static const const_1168:int = 3;
       
      
      private var var_943:int = 0;
      
      private var var_772:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_943;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_943 = param1.readInteger();
         if(var_943 == 3)
         {
            var_772 = param1.readString();
         }
         else
         {
            var_772 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_943 = 0;
         var_772 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_772;
      }
   }
}
