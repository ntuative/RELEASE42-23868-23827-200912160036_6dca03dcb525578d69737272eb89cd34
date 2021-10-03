package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_660:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_2035:int;
      
      private var var_2033:int;
      
      private var var_2034:Boolean;
      
      private var var_947:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_660);
         var_2033 = param1;
         var_2035 = param2;
         _color = param3;
         var_947 = param4;
         var_2034 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_2035;
      }
      
      public function get presetNumber() : int
      {
         return var_2033;
      }
      
      public function get brightness() : int
      {
         return var_947;
      }
      
      public function get apply() : Boolean
      {
         return var_2034;
      }
   }
}
