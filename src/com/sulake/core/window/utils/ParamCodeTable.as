package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_93;
         param1["bound_to_parent_rect"] = const_74;
         param1["child_window"] = const_909;
         param1["embedded_controller"] = const_283;
         param1["resize_to_accommodate_children"] = const_61;
         param1["input_event_processor"] = const_44;
         param1["internal_event_handling"] = const_716;
         param1["mouse_dragging_target"] = const_183;
         param1["mouse_dragging_trigger"] = const_291;
         param1["mouse_scaling_target"] = const_224;
         param1["mouse_scaling_trigger"] = const_351;
         param1["horizontal_mouse_scaling_trigger"] = const_211;
         param1["vertical_mouse_scaling_trigger"] = const_208;
         param1["observe_parent_input_events"] = const_875;
         param1["optimize_region_to_layout_size"] = const_396;
         param1["parent_window"] = const_854;
         param1["relative_horizontal_scale_center"] = const_171;
         param1["relative_horizontal_scale_fixed"] = const_118;
         param1["relative_horizontal_scale_move"] = const_301;
         param1["relative_horizontal_scale_strech"] = const_233;
         param1["relative_scale_center"] = const_991;
         param1["relative_scale_fixed"] = const_560;
         param1["relative_scale_move"] = const_863;
         param1["relative_scale_strech"] = const_908;
         param1["relative_vertical_scale_center"] = const_159;
         param1["relative_vertical_scale_fixed"] = const_123;
         param1["relative_vertical_scale_move"] = const_312;
         param1["relative_vertical_scale_strech"] = const_229;
         param1["on_resize_align_left"] = const_653;
         param1["on_resize_align_right"] = const_343;
         param1["on_resize_align_center"] = const_369;
         param1["on_resize_align_top"] = const_572;
         param1["on_resize_align_bottom"] = const_377;
         param1["on_resize_align_middle"] = const_367;
         param1["on_accommodate_align_left"] = const_829;
         param1["on_accommodate_align_right"] = const_380;
         param1["on_accommodate_align_center"] = const_700;
         param1["on_accommodate_align_top"] = const_776;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_594;
         param1["route_input_events_to_parent"] = const_371;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_835;
         param1["scalable_with_mouse"] = const_799;
         param1["reflect_horizontal_resize_to_parent"] = const_401;
         param1["reflect_vertical_resize_to_parent"] = const_463;
         param1["reflect_resize_to_parent"] = const_253;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
