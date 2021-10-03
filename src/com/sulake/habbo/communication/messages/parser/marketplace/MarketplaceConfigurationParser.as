package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1840:int;
      
      private var var_958:int;
      
      private var var_1841:int;
      
      private var var_1842:int;
      
      private var var_1838:int;
      
      private var var_1413:int;
      
      private var var_1839:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1840;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_958;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1842;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1838;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1413;
      }
      
      public function get commission() : int
      {
         return var_1841;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1839;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1839 = param1.readBoolean();
         var_1841 = param1.readInteger();
         var_958 = param1.readInteger();
         var_1413 = param1.readInteger();
         var_1842 = param1.readInteger();
         var_1840 = param1.readInteger();
         var_1838 = param1.readInteger();
         return true;
      }
   }
}
