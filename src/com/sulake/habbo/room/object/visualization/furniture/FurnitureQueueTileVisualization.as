package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1069:int = 1;
      
      private static const const_1038:int = 3;
      
      private static const const_1071:int = 2;
      
      private static const const_1070:int = 15;
       
      
      private var var_808:int;
      
      private var var_225:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_225 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1071)
         {
            var_225 = new Array();
            var_225.push(const_1069);
            var_808 = const_1070;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_808 > 0)
         {
            --var_808;
         }
         if(var_808 == 0)
         {
            if(false)
            {
               super.setAnimation(var_225.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
