package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_339:Number = 0.5;
      
      private static const const_760:int = 3;
      
      private static const const_1082:Number = 1;
       
      
      private var var_2051:Boolean = false;
      
      private var var_2055:Boolean = false;
      
      private var var_1008:int = 0;
      
      private var var_270:Vector3d = null;
      
      private var var_2058:int = 0;
      
      private var var_2053:int = 0;
      
      private var var_2057:Boolean = false;
      
      private var var_2059:int = -2;
      
      private var var_2052:Boolean = false;
      
      private var var_2050:int = 0;
      
      private var var_2054:int = -1;
      
      private var var_402:Vector3d = null;
      
      private var var_2056:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_2058;
      }
      
      public function get targetId() : int
      {
         return var_2054;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_2050 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_2058 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_2051 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_2054 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_2055 = param1;
      }
      
      public function dispose() : void
      {
         var_402 = null;
         var_270 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_402 == null)
         {
            var_402 = new Vector3d();
         }
         var_402.assign(param1);
         var_1008 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_2059;
      }
      
      public function get screenHt() : int
      {
         return var_2056;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_2053 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_270;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_2056 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_2050;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_2051;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_2055;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_402 != null && var_270 != null)
         {
            ++var_1008;
            _loc2_ = Vector3d.dif(var_402,var_270);
            if(_loc2_.length <= const_339)
            {
               var_270 = var_402;
               var_402 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_339 * (const_760 + 1))
               {
                  _loc2_.mul(const_339);
               }
               else if(var_1008 <= const_760)
               {
                  _loc2_.mul(const_339);
               }
               else
               {
                  _loc2_.mul(const_1082);
               }
               var_270 = Vector3d.sum(var_270,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_2057 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_2053;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_2052 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_2059 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_270 != null)
         {
            return;
         }
         var_270 = new Vector3d();
         var_270.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_2057;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_2052;
      }
   }
}
