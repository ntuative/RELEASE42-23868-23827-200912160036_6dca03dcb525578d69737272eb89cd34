package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1465:String;
      
      private var var_864:String;
      
      private var var_1466:String;
      
      private var var_1464:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1464 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1465 = _loc5_[0];
         var_1466 = _loc5_[1];
         _name = param2;
         var_864 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1465;
      }
      
      public function get languageCode() : String
      {
         return var_1464;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_864;
      }
      
      public function get encoding() : String
      {
         return var_1466;
      }
      
      public function get id() : String
      {
         return var_1464 + "_" + var_1465 + "." + var_1466;
      }
   }
}
