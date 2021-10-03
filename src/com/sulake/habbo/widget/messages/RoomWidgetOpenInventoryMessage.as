package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_940:String = "inventory_badges";
      
      public static const const_1174:String = "inventory_clothes";
      
      public static const const_1132:String = "inventory_furniture";
      
      public static const const_546:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_961:String = "inventory_effects";
       
      
      private var var_1858:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_546);
         var_1858 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1858;
      }
   }
}
