package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_904:Boolean;
      
      private var var_903:Boolean;
      
      private var var_905:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_904;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_903;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_905 = param1.readBoolean();
         var_903 = param1.readBoolean();
         var_904 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_905;
      }
      
      public function flush() : Boolean
      {
         var_905 = false;
         var_903 = false;
         var_904 = false;
         return true;
      }
   }
}
