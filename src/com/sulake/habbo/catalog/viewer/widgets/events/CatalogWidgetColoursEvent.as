package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_1195:Array;
      
      private var var_1567:String;
      
      private var var_1569:String;
      
      private var var_1568:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         var_1195 = param1;
         var_1567 = param2;
         var_1569 = param3;
         var_1568 = param4;
      }
      
      public function get colours() : Array
      {
         return var_1195;
      }
      
      public function get backgroundAssetName() : String
      {
         return var_1567;
      }
      
      public function get colourAssetName() : String
      {
         return var_1569;
      }
      
      public function get chosenColourAssetName() : String
      {
         return var_1568;
      }
   }
}
