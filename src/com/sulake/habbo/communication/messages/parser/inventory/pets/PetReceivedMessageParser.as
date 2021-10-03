package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_901:PetData;
      
      private var var_1340:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1340 = param1.readBoolean();
         var_901 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1340 + ", " + var_901.id + ", " + var_901.name + ", " + pet.figure + ", " + var_901.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1340;
      }
      
      public function get pet() : PetData
      {
         return var_901;
      }
   }
}
