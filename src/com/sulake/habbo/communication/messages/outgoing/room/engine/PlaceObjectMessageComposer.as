package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   
   public class PlaceObjectMessageComposer implements IMessageComposer
   {
       
      
      private var var_152:int;
      
      private var var_221:int = 0;
      
      private var _roomId:int;
      
      private var var_89:int = 0;
      
      private var _y:int = 0;
      
      private var var_1799:int;
      
      private var var_2139:String;
      
      private var _roomCategory:int;
      
      public function PlaceObjectMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int = 0, param8:int = 0)
      {
         super();
         var_152 = param1;
         var_1799 = param2;
         var_2139 = param3;
         var_89 = param4;
         _y = param5;
         var_221 = param6;
         _roomId = param7;
         _roomCategory = param8;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         switch(var_1799)
         {
            case RoomObjectCategoryEnum.const_32:
               return [var_152 + " " + var_89 + " " + _y + " " + var_221];
            case RoomObjectCategoryEnum.const_29:
               return [var_152 + " " + var_2139];
            default:
               return [];
         }
      }
   }
}
