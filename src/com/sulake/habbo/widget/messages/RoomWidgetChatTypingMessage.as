package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_525:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_463:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_525);
         var_463 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return var_463;
      }
   }
}
