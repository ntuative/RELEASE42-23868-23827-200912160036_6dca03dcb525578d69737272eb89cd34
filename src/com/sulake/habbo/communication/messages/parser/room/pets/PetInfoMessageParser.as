package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1614:int;
      
      private var var_531:String;
      
      private var var_1583:int;
      
      private var var_1615:int;
      
      private var var_1616:int;
      
      private var var_2122:int;
      
      private var _nutrition:int;
      
      private var var_1065:int;
      
      private var var_2121:int;
      
      private var var_2124:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1564:int;
      
      private var var_2123:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1583;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_2122;
      }
      
      public function flush() : Boolean
      {
         var_1065 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_2121;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_2124;
      }
      
      public function get maxNutrition() : int
      {
         return var_2123;
      }
      
      public function get figure() : String
      {
         return var_531;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1615;
      }
      
      public function get petId() : int
      {
         return var_1065;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1065 = param1.readInteger();
         _name = param1.readString();
         var_1583 = param1.readInteger();
         var_2121 = param1.readInteger();
         var_1616 = param1.readInteger();
         var_2124 = param1.readInteger();
         _energy = param1.readInteger();
         var_2122 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_2123 = param1.readInteger();
         var_531 = param1.readString();
         var_1615 = param1.readInteger();
         var_1564 = param1.readInteger();
         var_1614 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1616;
      }
      
      public function get ownerId() : int
      {
         return var_1564;
      }
      
      public function get age() : int
      {
         return var_1614;
      }
   }
}
