package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetCommandsMessageParser implements IMessageParser
   {
       
      
      private var var_887:Array;
      
      private var var_1065:int;
      
      public function PetCommandsMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1065 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_887 = new Array();
         while(_loc2_-- > 0)
         {
            var_887.push(param1.readInteger());
         }
         return true;
      }
      
      public function get enabledCommands() : Array
      {
         return var_887;
      }
      
      public function get petId() : int
      {
         return var_1065;
      }
      
      public function flush() : Boolean
      {
         var_1065 = -1;
         var_887 = null;
         return true;
      }
   }
}
