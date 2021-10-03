package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1626:int;
      
      private var var_1631:Boolean;
      
      private var var_1601:int;
      
      private var var_1630:String;
      
      private var var_1843:Boolean = false;
      
      private var var_1629:int;
      
      private var var_420:int;
      
      private var var_911:String;
      
      private var var_1529:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1215:int;
      
      private var var_1628:Boolean;
      
      private var var_1844:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1626 = param1;
         var_911 = param2;
         _objId = param3;
         var_1215 = param4;
         var_1630 = param5;
         var_1631 = param6;
         var_1628 = param7;
         var_1629 = param8;
         var_1529 = param9;
         var_1601 = param10;
         var_420 = -1;
      }
      
      public function get songId() : int
      {
         return var_1601;
      }
      
      public function get iconCallbackId() : int
      {
         return var_420;
      }
      
      public function get expiryTime() : int
      {
         return var_1629;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_1844 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_1843 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_420 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1628;
      }
      
      public function get slotId() : String
      {
         return var_1529;
      }
      
      public function get classId() : int
      {
         return var_1215;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1631;
      }
      
      public function get stuffData() : String
      {
         return var_1630;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1626;
      }
      
      public function get isLocked() : Boolean
      {
         return var_1843;
      }
      
      public function get prevCallbackId() : int
      {
         return var_1844;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_911;
      }
   }
}
