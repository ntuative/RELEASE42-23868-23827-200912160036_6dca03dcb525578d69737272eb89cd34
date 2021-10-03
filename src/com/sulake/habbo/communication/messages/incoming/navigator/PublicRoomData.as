package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1866:int;
      
      private var var_2130:String;
      
      private var var_1675:int;
      
      private var _disposed:Boolean;
      
      private var var_2131:int;
      
      private var var_1894:String;
      
      private var var_1119:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1894 = param1.readString();
         var_1866 = param1.readInteger();
         var_1675 = param1.readInteger();
         var_2130 = param1.readString();
         var_2131 = param1.readInteger();
         var_1119 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_2131;
      }
      
      public function get worldId() : int
      {
         return var_1675;
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
      }
      
      public function get unitPropertySet() : String
      {
         return var_1894;
      }
      
      public function get unitPort() : int
      {
         return var_1866;
      }
      
      public function get castLibs() : String
      {
         return var_2130;
      }
      
      public function get nodeId() : int
      {
         return var_1119;
      }
   }
}
