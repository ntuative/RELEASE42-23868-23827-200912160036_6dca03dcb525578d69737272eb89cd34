package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_624:int = -1;
      
      public static const const_848:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_2094:int = -1;
      
      private var var_89:int = 0;
      
      private var var_1267:int = 1;
      
      private var var_842:int = 1;
      
      private var var_2093:Boolean = false;
      
      private var var_2092:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_89 = param2;
         _y = param3;
         var_2093 = param5;
         if(param4 < 0)
         {
            param4 = const_624;
         }
         var_842 = param4;
         var_1267 = param4;
         if(param6 >= 0)
         {
            var_2094 = param6;
            var_2092 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_842 > 0 && param1 > var_842)
         {
            param1 = var_842;
         }
         var_1267 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_842;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_2092;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_842 < 0)
         {
            return const_624;
         }
         return var_1267;
      }
      
      public function get activeSequence() : int
      {
         return var_2094;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_2093;
      }
      
      public function get x() : int
      {
         return var_89;
      }
   }
}
