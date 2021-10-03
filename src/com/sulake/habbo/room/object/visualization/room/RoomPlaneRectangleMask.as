package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_1639:Number = 0;
      
      private var var_1638:Number = 0;
      
      private var var_1640:Number = 0;
      
      private var var_1637:Number = 0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1638 = param1;
         var_1640 = param2;
         var_1639 = param3;
         var_1637 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1638;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1639;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1640;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1637;
      }
   }
}
