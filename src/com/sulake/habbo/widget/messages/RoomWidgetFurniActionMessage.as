package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_254:String = "RWFAM_MOVE";
      
      public static const const_664:String = "RWFUAM_ROTATE";
      
      public static const const_575:String = "RWFAM_PICKUP";
       
      
      private var var_1726:int = 0;
      
      private var var_1749:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1726 = param2;
         var_1749 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1726;
      }
      
      public function get furniCategory() : int
      {
         return var_1749;
      }
   }
}
