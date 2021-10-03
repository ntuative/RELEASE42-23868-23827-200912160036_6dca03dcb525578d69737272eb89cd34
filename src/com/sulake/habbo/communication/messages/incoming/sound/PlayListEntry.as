package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1601:int;
      
      private var var_1603:int = 0;
      
      private var var_1602:String;
      
      private var var_1604:int;
      
      private var var_1605:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1601 = param1;
         var_1604 = param2;
         var_1605 = param3;
         var_1602 = param4;
      }
      
      public function get length() : int
      {
         return var_1604;
      }
      
      public function get name() : String
      {
         return var_1605;
      }
      
      public function get creator() : String
      {
         return var_1602;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_1603;
      }
      
      public function get id() : int
      {
         return var_1601;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_1603 = param1;
      }
   }
}
