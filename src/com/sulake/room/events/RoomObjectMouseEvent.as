package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1506:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1452:String = "ROE_MOUSE_ENTER";
      
      public static const const_451:String = "ROE_MOUSE_MOVE";
      
      public static const const_1512:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_186:String = "ROE_MOUSE_CLICK";
      
      public static const const_361:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1743:Boolean;
      
      private var var_1742:Boolean;
      
      private var var_1745:Boolean;
      
      private var var_1744:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_1745 = param4;
         var_1744 = param5;
         var_1743 = param6;
         var_1742 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1742;
      }
      
      public function get altKey() : Boolean
      {
         return var_1745;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1744;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1743;
      }
   }
}
