package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class FlatCategory
   {
       
      
      private var var_1119:int;
      
      private var var_1383:String;
      
      public function FlatCategory()
      {
         super();
      }
      
      public function set nodeName(param1:String) : void
      {
         var_1383 = param1;
      }
      
      public function get nodeName() : String
      {
         return var_1383;
      }
      
      public function set nodeId(param1:int) : void
      {
         var_1119 = param1;
      }
      
      public function get nodeId() : int
      {
         return var_1119;
      }
   }
}
