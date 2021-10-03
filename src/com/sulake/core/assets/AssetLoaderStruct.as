package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_604:IAssetLoader;
      
      private var var_1214:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1214 = param1;
         var_604 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_604;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_604 != null)
            {
               if(true)
               {
                  var_604.dispose();
                  var_604 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1214;
      }
   }
}
