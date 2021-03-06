package com.sulake.habbo.room.utils
{
   import com.sulake.habbo.room.ISelectedRoomObjectData;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class SelectedRoomObjectData implements ISelectedRoomObjectData
   {
       
      
      private var var_76:Vector3d = null;
      
      private var _id:int = 0;
      
      private var var_221:Vector3d = null;
      
      private var var_1694:int = 0;
      
      private var var_2065:String = null;
      
      private var _category:int = 0;
      
      private var var_2066:String = "";
      
      public function SelectedRoomObjectData(param1:int, param2:int, param3:String, param4:IVector3d, param5:IVector3d, param6:int = 0, param7:String = null)
      {
         super();
         _id = param1;
         _category = param2;
         var_2066 = param3;
         var_76 = new Vector3d();
         var_76.assign(param4);
         var_221 = new Vector3d();
         var_221.assign(param5);
         var_1694 = param6;
         var_2065 = param7;
      }
      
      public function get loc() : Vector3d
      {
         return var_76;
      }
      
      public function get typeId() : int
      {
         return var_1694;
      }
      
      public function get dir() : Vector3d
      {
         return var_221;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get instanceData() : String
      {
         return var_2065;
      }
      
      public function get operation() : String
      {
         return var_2066;
      }
      
      public function dispose() : void
      {
         var_76 = null;
         var_221 = null;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
