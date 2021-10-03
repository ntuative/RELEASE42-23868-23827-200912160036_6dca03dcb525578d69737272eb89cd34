package com.sulake.room.renderer.cache
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectLocationCacheItem
   {
       
      
      private var var_1875:int = -1;
      
      private var var_1147:int = -1;
      
      private var var_651:Vector3d = null;
      
      public function RoomObjectLocationCacheItem()
      {
         super();
         var_651 = new Vector3d();
      }
      
      public function get objectUpdateId() : int
      {
         return var_1875;
      }
      
      public function set objectUpdateId(param1:int) : void
      {
         var_1875 = param1;
      }
      
      public function set screenLoc(param1:IVector3d) : void
      {
         var_651.assign(param1);
         var_651.x = Math.round(var_651.x);
         var_651.y = Math.round(var_651.y);
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         var_1147 = param1;
      }
      
      public function get screenLoc() : IVector3d
      {
         return var_651;
      }
      
      public function get geometryUpdateId() : int
      {
         return var_1147;
      }
   }
}
