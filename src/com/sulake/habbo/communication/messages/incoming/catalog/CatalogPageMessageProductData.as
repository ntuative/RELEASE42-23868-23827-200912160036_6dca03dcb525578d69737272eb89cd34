package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_237:String = "e";
      
      public static const const_75:String = "i";
      
      public static const const_84:String = "s";
       
      
      private var var_907:String;
      
      private var var_1103:String;
      
      private var var_1100:int;
      
      private var var_1586:int;
      
      private var var_906:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1103 = param1.readString();
         var_1586 = param1.readInteger();
         var_907 = param1.readString();
         var_906 = param1.readInteger();
         var_1100 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_906;
      }
      
      public function get productType() : String
      {
         return var_1103;
      }
      
      public function get expiration() : int
      {
         return var_1100;
      }
      
      public function get furniClassId() : int
      {
         return var_1586;
      }
      
      public function get extraParam() : String
      {
         return var_907;
      }
   }
}
