package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_2035:int;
      
      private var var_2033:int;
      
      private var var_2127:Boolean;
      
      private var var_2129:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2128:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_2033 = param1;
         var_2035 = param2;
         var_2129 = param3;
         var_2128 = param4;
         var_2127 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2033,var_2035,var_2129,var_2128,int(var_2127)];
      }
      
      public function dispose() : void
      {
      }
   }
}
