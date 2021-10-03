package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_990:String = "price_type_none";
      
      public static const const_441:String = "pricing_model_multi";
      
      public static const const_280:String = "price_type_credits";
      
      public static const const_372:String = "price_type_credits_and_pixels";
      
      public static const const_436:String = "pricing_model_bundle";
      
      public static const const_393:String = "pricing_model_single";
      
      public static const const_650:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1227:String = "pricing_model_unknown";
      
      public static const const_471:String = "price_type_pixels";
       
      
      private var var_849:int;
      
      private var _offerId:int;
      
      private var var_848:int;
      
      private var var_408:String;
      
      private var var_572:String;
      
      private var var_2110:int;
      
      private var var_680:ICatalogPage;
      
      private var var_1272:String;
      
      private var var_409:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1272 = param1.localizationId;
         var_849 = param1.priceInCredits;
         var_848 = param1.priceInPixels;
         var_680 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(_loc4_.productType);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_408;
      }
      
      public function get page() : ICatalogPage
      {
         return var_680;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_2110 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_409;
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
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1272 = "";
         var_849 = 0;
         var_848 = 0;
         var_680 = null;
         if(var_409 != null)
         {
            var_409.dispose();
            var_409 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_572;
      }
      
      public function get previewCallbackId() : int
      {
         return var_2110;
      }
      
      public function get priceInCredits() : int
      {
         return var_849;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_408 = const_393;
            }
            else
            {
               var_408 = const_441;
            }
         }
         else if(param1.length > 1)
         {
            var_408 = const_436;
         }
         else
         {
            var_408 = const_1227;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_408)
         {
            case const_393:
               var_409 = new SingleProductContainer(this,param1);
               break;
            case const_441:
               var_409 = new MultiProductContainer(this,param1);
               break;
            case const_436:
               var_409 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_408);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_849 > 0 && var_848 > 0)
         {
            var_572 = const_372;
         }
         else if(var_849 > 0)
         {
            var_572 = const_280;
         }
         else if(var_848 > 0)
         {
            var_572 = const_471;
         }
         else
         {
            var_572 = const_990;
         }
      }
   }
}
