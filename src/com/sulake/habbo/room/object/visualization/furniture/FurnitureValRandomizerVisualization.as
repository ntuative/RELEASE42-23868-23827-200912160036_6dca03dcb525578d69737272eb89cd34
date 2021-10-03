package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1064:int = 31;
      
      private static const const_1038:int = 32;
      
      private static const const_485:int = 30;
      
      private static const const_742:int = 20;
      
      private static const const_484:int = 10;
       
      
      private var var_557:Boolean = false;
      
      private var var_225:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_225 = new Array();
         super();
         super.setAnimation(const_485);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_557 = true;
            var_225 = new Array();
            var_225.push(const_1064);
            var_225.push(const_1038);
            return;
         }
         if(param1 > 0 && param1 <= const_484)
         {
            if(var_557)
            {
               var_557 = false;
               var_225 = new Array();
               if(_direction == 2)
               {
                  var_225.push(const_742 + 5 - param1);
                  var_225.push(const_484 + 5 - param1);
               }
               else
               {
                  var_225.push(const_742 + param1);
                  var_225.push(const_484 + param1);
               }
               var_225.push(const_485);
               return;
            }
            super.setAnimation(const_485);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
