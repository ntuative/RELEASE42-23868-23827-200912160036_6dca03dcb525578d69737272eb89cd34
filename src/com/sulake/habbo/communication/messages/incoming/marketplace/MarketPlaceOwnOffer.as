package com.sulake.habbo.communication.messages.incoming.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOwnOffer
   {
      
      public static const const_1546:int = 2;
      
      public static const const_1431:int = 1;
      
      public static const const_1467:int = 0;
       
      
      private var var_1211:int;
      
      private var var_356:int;
      
      private var var_2272:int;
      
      private var _offerId:int;
      
      private var _furniType:int;
      
      private var var_1726:int;
      
      private var _image:BitmapData;
      
      public function MarketPlaceOwnOffer(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         _offerId = param1;
         var_1726 = param2;
         _furniType = param3;
         var_1211 = param4;
      }
      
      public function get furniId() : int
      {
         return var_1726;
      }
      
      public function get furniType() : int
      {
         return _furniType;
      }
      
      public function get price() : int
      {
         return var_1211;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}
