package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1630:String;
      
      private var var_911:String;
      
      private var var_1625:Boolean;
      
      private var var_1626:int;
      
      private var var_1627:Boolean;
      
      private var var_1529:String = "";
      
      private var var_1631:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1215:int;
      
      private var var_1628:Boolean;
      
      private var var_1601:int = -1;
      
      private var var_1629:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1626 = param1;
         var_911 = param2;
         _objId = param3;
         var_1215 = param4;
         _category = param5;
         var_1630 = param6;
         var_1625 = param7;
         var_1631 = param8;
         var_1628 = param9;
         var_1627 = param10;
         var_1629 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1529;
      }
      
      public function get classId() : int
      {
         return var_1215;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1627;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1625;
      }
      
      public function get stripId() : int
      {
         return var_1626;
      }
      
      public function get stuffData() : String
      {
         return var_1630;
      }
      
      public function get songId() : int
      {
         return var_1601;
      }
      
      public function setSongData(param1:String, param2:int) : void
      {
         var_1529 = param1;
         var_1601 = param2;
      }
      
      public function get expiryTime() : int
      {
         return var_1629;
      }
      
      public function get itemType() : String
      {
         return var_911;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1628;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1631;
      }
   }
}
