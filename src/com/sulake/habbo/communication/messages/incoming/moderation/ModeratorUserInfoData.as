package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_1916:int;
      
      private var var_1917:int;
      
      private var var_1920:int;
      
      private var _userName:String;
      
      private var var_1921:int;
      
      private var var_1918:int;
      
      private var var_1919:int;
      
      private var _userId:int;
      
      private var var_595:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_1918 = param1.readInteger();
         var_1921 = param1.readInteger();
         var_595 = param1.readBoolean();
         var_1920 = param1.readInteger();
         var_1917 = param1.readInteger();
         var_1916 = param1.readInteger();
         var_1919 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_1919;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_595;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_1921;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_1917;
      }
      
      public function get cautionCount() : int
      {
         return var_1916;
      }
      
      public function get cfhCount() : int
      {
         return var_1920;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_1918;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
