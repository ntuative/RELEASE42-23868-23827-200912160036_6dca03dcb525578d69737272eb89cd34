package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_531:String;
      
      private var var_1583:int;
      
      private var var_1804:String;
      
      private var var_935:int;
      
      private var var_1065:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1065;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1065 = param1.readInteger();
         var_1804 = param1.readString();
         var_1583 = param1.readInteger();
         var_531 = param1.readString();
         var_935 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_1804;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_531;
      }
      
      public function get petType() : int
      {
         return var_935;
      }
      
      public function get level() : int
      {
         return var_1583;
      }
   }
}
