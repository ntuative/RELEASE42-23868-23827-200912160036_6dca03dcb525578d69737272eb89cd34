package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_1987:String;
      
      private var var_1242:String;
      
      private var var_1986:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_1986 = param1;
         var_1242 = param2;
         var_1987 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1986,var_1242,var_1987];
      }
      
      public function dispose() : void
      {
      }
   }
}
