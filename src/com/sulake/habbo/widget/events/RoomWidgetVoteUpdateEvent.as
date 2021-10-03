package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_117:String = "RWPUE_VOTE_RESULT";
      
      public static const const_104:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1257:int;
      
      private var var_1010:String;
      
      private var var_669:Array;
      
      private var var_928:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1010 = param2;
         var_928 = param3;
         var_669 = param4;
         if(var_669 == null)
         {
            var_669 = [];
         }
         var_1257 = param5;
      }
      
      public function get votes() : Array
      {
         return var_669.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1257;
      }
      
      public function get question() : String
      {
         return var_1010;
      }
      
      public function get choices() : Array
      {
         return var_928.slice();
      }
   }
}
