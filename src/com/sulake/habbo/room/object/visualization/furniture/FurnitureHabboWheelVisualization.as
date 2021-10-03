package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1064:int = 31;
      
      private static const const_1038:int = 32;
      
      private static const const_742:int = 10;
      
      private static const const_484:int = 20;
       
      
      private var var_557:Boolean = false;
      
      private var var_225:Array;
      
      public function FurnitureHabboWheelVisualization()
      {
         var_225 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_557 = true;
            var_225 = new Array();
            var_225.push(const_1064);
            var_225.push(const_1038);
            return;
         }
         if(param1 > 0 && param1 <= const_742)
         {
            if(var_557)
            {
               var_557 = false;
               var_225 = new Array();
               var_225.push(const_742 + param1);
               var_225.push(const_484 + param1);
               var_225.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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
