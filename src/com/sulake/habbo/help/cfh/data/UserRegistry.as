package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1058:int = 80;
       
      
      private var var_460:Map;
      
      private var var_641:String = "";
      
      private var var_1162:Array;
      
      public function UserRegistry()
      {
         var_460 = new Map();
         var_1162 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_460.getValue(var_1162.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_641;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_460.getValue(param1) != null)
         {
            var_460.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_641);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_641 == "")
         {
            var_1162.push(param1);
         }
         var_460.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_460;
      }
      
      public function unregisterRoom() : void
      {
         var_641 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_460.length > const_1058)
         {
            _loc1_ = var_460.getKey(0);
            var_460.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_641 = param1;
         if(var_641 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
