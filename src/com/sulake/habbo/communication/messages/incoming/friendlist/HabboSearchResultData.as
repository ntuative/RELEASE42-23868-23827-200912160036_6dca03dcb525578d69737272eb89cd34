package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2227:Boolean;
      
      private var var_2226:int;
      
      private var var_2225:Boolean;
      
      private var var_1319:String;
      
      private var var_1238:String;
      
      private var var_1547:int;
      
      private var var_1579:String;
      
      private var var_2228:String;
      
      private var var_1578:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1547 = param1.readInteger();
         this.var_1319 = param1.readString();
         this.var_1579 = param1.readString();
         this.var_2227 = param1.readBoolean();
         this.var_2225 = param1.readBoolean();
         param1.readString();
         this.var_2226 = param1.readInteger();
         this.var_1578 = param1.readString();
         this.var_2228 = param1.readString();
         this.var_1238 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1238;
      }
      
      public function get avatarName() : String
      {
         return this.var_1319;
      }
      
      public function get avatarId() : int
      {
         return this.var_1547;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2227;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2228;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1578;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2225;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1579;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2226;
      }
   }
}
