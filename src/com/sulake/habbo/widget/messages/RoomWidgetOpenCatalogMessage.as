package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_611:String = "RWOCM_CLUB_MAIN";
      
      public static const const_528:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_1925:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_528);
         var_1925 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_1925;
      }
   }
}
