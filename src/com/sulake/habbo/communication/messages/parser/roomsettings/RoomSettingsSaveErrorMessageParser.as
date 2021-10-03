package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1510:int = 9;
      
      public static const const_1427:int = 4;
      
      public static const const_1513:int = 1;
      
      public static const const_1336:int = 10;
      
      public static const const_1403:int = 2;
      
      public static const const_1283:int = 7;
      
      public static const const_1261:int = 11;
      
      public static const const_1543:int = 3;
      
      public static const const_1257:int = 8;
      
      public static const const_1215:int = 5;
      
      public static const const_1419:int = 6;
      
      public static const const_1253:int = 12;
       
      
      private var var_2085:String;
      
      private var _roomId:int;
      
      private var var_1170:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2085;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1170 = param1.readInteger();
         var_2085 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1170;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
