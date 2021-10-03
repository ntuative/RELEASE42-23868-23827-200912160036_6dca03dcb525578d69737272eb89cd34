package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1737:int;
      
      private var var_1733:int;
      
      private var var_911:String;
      
      private var var_1527:int;
      
      private var var_1736:String;
      
      private var var_1738:int;
      
      private var var_1732:int;
      
      private var _category:int;
      
      private var var_1734:int;
      
      private var var_1731:int;
      
      private var var_1735:int;
      
      private var var_1739:Boolean;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:Boolean, param12:int)
      {
         super();
         var_1527 = param1;
         var_911 = param2;
         var_1733 = param3;
         var_1735 = param4;
         _category = param5;
         var_1736 = param6;
         var_1738 = param7;
         var_1737 = param8;
         var_1731 = param9;
         var_1732 = param10;
         var_1739 = param11;
         var_1734 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_1735;
      }
      
      public function get groupable() : Boolean
      {
         return var_1739;
      }
      
      public function get creationMonth() : int
      {
         return var_1731;
      }
      
      public function get roomItemID() : int
      {
         return var_1733;
      }
      
      public function get itemType() : String
      {
         return var_911;
      }
      
      public function get itemID() : int
      {
         return var_1527;
      }
      
      public function get itemSpecificData() : String
      {
         return var_1736;
      }
      
      public function get songID() : int
      {
         return var_1734;
      }
      
      public function get timeToExpiration() : int
      {
         return var_1738;
      }
      
      public function get creationYear() : int
      {
         return var_1732;
      }
      
      public function get creationDay() : int
      {
         return var_1737;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
