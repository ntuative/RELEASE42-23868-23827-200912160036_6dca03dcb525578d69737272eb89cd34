package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1896:Class;
      
      private var var_1897:Class;
      
      private var var_1898:String;
      
      private var var_1190:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1898 = param1;
         var_1897 = param2;
         var_1896 = param3;
         if(rest == null)
         {
            var_1190 = new Array();
         }
         else
         {
            var_1190 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1896;
      }
      
      public function get assetClass() : Class
      {
         return var_1897;
      }
      
      public function get mimeType() : String
      {
         return var_1898;
      }
      
      public function get fileTypes() : Array
      {
         return var_1190;
      }
   }
}
