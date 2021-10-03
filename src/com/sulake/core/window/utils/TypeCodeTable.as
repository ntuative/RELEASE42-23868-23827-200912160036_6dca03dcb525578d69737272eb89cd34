package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_565;
         param1["bitmap"] = const_709;
         param1["border"] = const_536;
         param1["border_notify"] = const_1204;
         param1["button"] = const_386;
         param1["button_thick"] = const_708;
         param1["button_icon"] = const_1177;
         param1["button_group_left"] = const_510;
         param1["button_group_center"] = const_593;
         param1["button_group_right"] = const_591;
         param1["canvas"] = const_628;
         param1["checkbox"] = const_699;
         param1["closebutton"] = const_977;
         param1["container"] = const_326;
         param1["container_button"] = const_614;
         param1["display_object_wrapper"] = const_691;
         param1["dropmenu"] = const_445;
         param1["dropmenu_item"] = const_379;
         param1["frame"] = const_297;
         param1["frame_notify"] = const_1137;
         param1["header"] = const_725;
         param1["icon"] = const_778;
         param1["itemgrid"] = const_772;
         param1["itemgrid_horizontal"] = const_373;
         param1["itemgrid_vertical"] = const_675;
         param1["itemlist"] = const_914;
         param1["itemlist_horizontal"] = const_298;
         param1["itemlist_vertical"] = const_276;
         param1["maximizebox"] = const_1297;
         param1["menu"] = const_1291;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_850;
         param1["minimizebox"] = const_1234;
         param1["notify"] = const_1229;
         param1["null"] = const_344;
         param1["password"] = const_678;
         param1["radiobutton"] = const_526;
         param1["region"] = const_359;
         param1["restorebox"] = const_1187;
         param1["scaler"] = const_925;
         param1["scaler_horizontal"] = const_1325;
         param1["scaler_vertical"] = const_1199;
         param1["scrollbar_horizontal"] = const_356;
         param1["scrollbar_vertical"] = const_630;
         param1["scrollbar_slider_button_up"] = const_787;
         param1["scrollbar_slider_button_down"] = const_821;
         param1["scrollbar_slider_button_left"] = const_828;
         param1["scrollbar_slider_button_right"] = const_884;
         param1["scrollbar_slider_bar_horizontal"] = const_955;
         param1["scrollbar_slider_bar_vertical"] = const_953;
         param1["scrollbar_slider_track_horizontal"] = const_826;
         param1["scrollbar_slider_track_vertical"] = const_954;
         param1["scrollable_itemlist"] = const_1212;
         param1["scrollable_itemlist_vertical"] = const_376;
         param1["scrollable_itemlist_horizontal"] = const_933;
         param1["selector"] = const_634;
         param1["selector_list"] = const_684;
         param1["submenu"] = const_850;
         param1["tab_button"] = const_714;
         param1["tab_container_button"] = const_789;
         param1["tab_context"] = const_424;
         param1["tab_content"] = const_773;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_692;
         param1["input"] = const_508;
         param1["toolbar"] = const_1120;
         param1["tooltip"] = WINDOW_TYPE_TOOLTIP;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
