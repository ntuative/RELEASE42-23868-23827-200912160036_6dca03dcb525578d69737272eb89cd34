package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_437:int = 0;
      
      public static const const_124:int = 2;
      
      public static const const_152:int = 1;
      
      public static const const_667:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_1955:int;
      
      private var var_1956:int;
      
      private var var_1706:Array;
      
      private var var_1711:Boolean;
      
      private var var_1709:Boolean;
      
      private var var_1159:String;
      
      private var var_1712:Boolean;
      
      private var var_1705:int;
      
      private var var_1708:int;
      
      private var var_1160:int;
      
      private var var_1710:Boolean;
      
      private var _roomId:int;
      
      private var var_1707:Boolean;
      
      private var var_581:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_1705;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1705 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_581;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1709;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1707;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_1955 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1706 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_581 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1711;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_1956;
      }
      
      public function get categoryId() : int
      {
         return var_1160;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1709 = param1;
      }
      
      public function set allowTrading(param1:Boolean) : void
      {
         var_1707 = param1;
      }
      
      public function set showOwnerName(param1:Boolean) : void
      {
         var_1710 = param1;
      }
      
      public function set allowFurniMoving(param1:Boolean) : void
      {
         var_1712 = param1;
      }
      
      public function get controllerCount() : int
      {
         return var_1955;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1706;
      }
      
      public function get showOwnerName() : Boolean
      {
         return var_1710;
      }
      
      public function get allowFurniMoving() : Boolean
      {
         return var_1712;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1708 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1711 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_1956 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1708;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1160 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1159 = param1;
      }
      
      public function get description() : String
      {
         return var_1159;
      }
   }
}
