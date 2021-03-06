package com.sulake.habbo.widget.events
{
   public class RoomWidgetPollUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_112:String = "RWPUW_CONTENT";
      
      public static const const_121:String = "RWPUW_OFFER";
      
      public static const const_59:String = "RWPUW_ERROR";
       
      
      private var var_973:Array = null;
      
      private var var_1198:String = "";
      
      private var var_1158:String;
      
      private var var_1197:String = "";
      
      private var var_972:int = 0;
      
      private var _id:int = -1;
      
      public function RoomWidgetPollUpdateEvent(param1:int, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         _id = param1;
         super(param2,param3,param4);
      }
      
      public function get questionArray() : Array
      {
         return var_973;
      }
      
      public function get startMessage() : String
      {
         return var_1198;
      }
      
      public function get summary() : String
      {
         return var_1158;
      }
      
      public function set startMessage(param1:String) : void
      {
         var_1198 = param1;
      }
      
      public function set numQuestions(param1:int) : void
      {
         var_972 = param1;
      }
      
      public function set summary(param1:String) : void
      {
         var_1158 = param1;
      }
      
      public function get numQuestions() : int
      {
         return var_972;
      }
      
      public function set endMessage(param1:String) : void
      {
         var_1197 = param1;
      }
      
      public function get endMessage() : String
      {
         return var_1197;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set questionArray(param1:Array) : void
      {
         var_973 = param1;
      }
   }
}
