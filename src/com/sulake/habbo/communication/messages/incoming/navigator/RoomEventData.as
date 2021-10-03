package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1593:String;
      
      private var var_401:int;
      
      private var var_2098:String;
      
      private var var_2101:String;
      
      private var var_2100:int;
      
      private var var_2102:String;
      
      private var var_2099:int;
      
      private var var_581:Array;
      
      private var var_983:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_581 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_983 = false;
            return;
         }
         this.var_983 = true;
         var_2100 = int(_loc2_);
         var_2098 = param1.readString();
         var_401 = int(param1.readString());
         var_2099 = param1.readInteger();
         var_1593 = param1.readString();
         var_2101 = param1.readString();
         var_2102 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_581.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_2099;
      }
      
      public function get eventName() : String
      {
         return var_1593;
      }
      
      public function get eventDescription() : String
      {
         return var_2101;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_2098;
      }
      
      public function get tags() : Array
      {
         return var_581;
      }
      
      public function get creationTime() : String
      {
         return var_2102;
      }
      
      public function get exists() : Boolean
      {
         return var_983;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_2100;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_581 = null;
      }
      
      public function get flatId() : int
      {
         return var_401;
      }
   }
}
