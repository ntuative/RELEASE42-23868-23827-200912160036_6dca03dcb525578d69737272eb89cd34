package com.sulake.habbo.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_103:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_1083:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_103);
         var_1083 = param1;
      }
      
      public function get vote() : int
      {
         return var_1083;
      }
   }
}
