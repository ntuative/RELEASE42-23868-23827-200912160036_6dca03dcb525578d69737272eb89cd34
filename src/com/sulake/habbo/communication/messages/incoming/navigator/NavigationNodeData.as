package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1119:int;
      
      private var var_1383:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1119 = param1;
         var_1383 = param2;
         Logger.log("READ NODE: " + var_1119 + ", " + var_1383);
      }
      
      public function get nodeName() : String
      {
         return var_1383;
      }
      
      public function get nodeId() : int
      {
         return var_1119;
      }
   }
}
