package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_1718:Number;
      
      private var var_524:Number = 0;
      
      private var var_1717:Number;
      
      private var var_525:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_1718 = param1;
         var_1717 = param2;
      }
      
      public function update() : void
      {
         var_525 += var_1717;
         var_524 += var_525;
         if(var_524 > 0)
         {
            var_524 = 0;
            var_525 = var_1718 * -1 * var_525;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_525 = param1;
         var_524 = 0;
      }
      
      public function get location() : Number
      {
         return var_524;
      }
   }
}
