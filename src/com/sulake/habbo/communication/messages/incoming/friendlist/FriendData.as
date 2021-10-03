package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_531:String;
      
      private var var_1239:String;
      
      private var var_1237:String;
      
      private var var_1160:int;
      
      private var _gender:int;
      
      private var var_1238:String;
      
      private var _name:String;
      
      private var var_1212:Boolean;
      
      private var var_595:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this._gender = param1.readInteger();
         this.var_595 = param1.readBoolean();
         this.var_1212 = param1.readBoolean();
         this.var_531 = param1.readString();
         this.var_1160 = param1.readInteger();
         this.var_1237 = param1.readString();
         this.var_1239 = param1.readString();
         this.var_1238 = param1.readString();
      }
      
      public function get gender() : int
      {
         return _gender;
      }
      
      public function get realName() : String
      {
         return var_1238;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1237;
      }
      
      public function get categoryId() : int
      {
         return var_1160;
      }
      
      public function get online() : Boolean
      {
         return var_595;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1212;
      }
      
      public function get lastAccess() : String
      {
         return var_1239;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_531;
      }
   }
}
