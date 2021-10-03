package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_117:String = "RSPE_VOTE_RESULT";
      
      public static const const_104:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1257:int = 0;
      
      private var var_1010:String = "";
      
      private var var_669:Array;
      
      private var var_928:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_928 = [];
         var_669 = [];
         super(param1,param2,param7,param8);
         var_1010 = param3;
         var_928 = param4;
         var_669 = param5;
         if(var_669 == null)
         {
            var_669 = [];
         }
         var_1257 = param6;
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
