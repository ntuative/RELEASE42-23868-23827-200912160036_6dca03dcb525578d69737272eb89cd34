package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_834:Array;
      
      private var var_849:int;
      
      private var var_1272:String;
      
      private var _offerId:int;
      
      private var var_848:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1272 = param1.readString();
         var_849 = param1.readInteger();
         var_848 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_834 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_834.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_834;
      }
      
      public function get priceInCredits() : int
      {
         return var_849;
      }
      
      public function get localizationId() : String
      {
         return var_1272;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_848;
      }
   }
}
