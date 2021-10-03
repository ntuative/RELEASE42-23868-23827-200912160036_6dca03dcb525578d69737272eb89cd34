package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class UseWallItemMessageComposer implements IMessageComposer
   {
       
      
      private var var_29:int = 0;
      
      private var _roomId:int;
      
      private var _roomCategory:int = 0;
      
      private var var_152:int;
      
      public function UseWallItemMessageComposer(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         var_152 = param1;
         var_29 = param2;
         _roomId = param3;
         _roomCategory = param4;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [var_152,var_29];
      }
   }
}
