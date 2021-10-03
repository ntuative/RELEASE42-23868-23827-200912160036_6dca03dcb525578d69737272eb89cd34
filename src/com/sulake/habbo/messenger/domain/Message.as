package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_606:int = 2;
      
      public static const const_913:int = 6;
      
      public static const const_629:int = 1;
      
      public static const const_704:int = 3;
      
      public static const const_839:int = 4;
      
      public static const const_598:int = 5;
       
      
      private var var_1965:String;
      
      private var var_956:int;
      
      private var var_1723:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_956 = param2;
         var_1723 = param3;
         var_1965 = param4;
      }
      
      public function get time() : String
      {
         return var_1965;
      }
      
      public function get senderId() : int
      {
         return var_956;
      }
      
      public function get messageText() : String
      {
         return var_1723;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
