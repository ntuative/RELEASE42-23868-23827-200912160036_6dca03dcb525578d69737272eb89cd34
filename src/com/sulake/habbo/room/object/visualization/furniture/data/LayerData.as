package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_378:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_541:int = 0;
      
      public static const const_812:int = 2;
      
      public static const const_992:int = 1;
      
      public static const const_607:Boolean = false;
      
      public static const const_558:String = "";
      
      public static const const_346:int = 0;
      
      public static const const_427:int = 0;
      
      public static const const_348:int = 0;
       
      
      private var var_1575:int = 0;
      
      private var var_1572:String = "";
      
      private var var_1309:int = 0;
      
      private var var_1570:int = 0;
      
      private var var_1571:Number = 0;
      
      private var var_1574:int = 255;
      
      private var var_1573:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_1575;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1309 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_1571;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_1570 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_1575 = param1;
      }
      
      public function get tag() : String
      {
         return var_1572;
      }
      
      public function get alpha() : int
      {
         return var_1574;
      }
      
      public function get ink() : int
      {
         return var_1309;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_1571 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_1570;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_1573 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_1573;
      }
      
      public function set tag(param1:String) : void
      {
         var_1572 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1574 = param1;
      }
   }
}
