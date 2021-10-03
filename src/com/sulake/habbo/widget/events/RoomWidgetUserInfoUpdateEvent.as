package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_199:String = "RWUIUE_PEER";
      
      public static const const_188:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1135:String = "BOT";
      
      public static const const_891:int = 2;
      
      public static const const_1113:int = 0;
      
      public static const const_980:int = 3;
       
      
      private var var_1237:String = "";
      
      private var var_1979:Boolean = false;
      
      private var var_1545:int = 0;
      
      private var var_1927:int = 0;
      
      private var var_1971:Boolean = false;
      
      private var var_1238:String = "";
      
      private var var_1973:Boolean = false;
      
      private var var_767:int = 0;
      
      private var var_1977:Boolean = true;
      
      private var var_1022:int = 0;
      
      private var var_1976:Boolean = false;
      
      private var var_1251:Boolean = false;
      
      private var var_1974:Boolean = false;
      
      private var var_1929:int = 0;
      
      private var var_1978:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_265:Array;
      
      private var var_1252:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1542:int = 0;
      
      private var var_1975:Boolean = false;
      
      private var var_1972:int = 0;
      
      private var var_1928:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_265 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1927;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1927 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_1979;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_1977;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_1977 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_1973 = param1;
      }
      
      public function get motto() : String
      {
         return var_1237;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_1976 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1251;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1237 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_1975;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1928;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1251 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_1978;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1929 = param1;
      }
      
      public function get badges() : Array
      {
         return var_265;
      }
      
      public function get amIController() : Boolean
      {
         return var_1971;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_1971 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_1975 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_1972 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1928 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1238 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_1973;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_1976;
      }
      
      public function get carryItem() : int
      {
         return var_1929;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1252;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1252 = param1;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_767 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_1972;
      }
      
      public function get realName() : String
      {
         return var_1238;
      }
      
      public function set webID(param1:int) : void
      {
         var_1542 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_265 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_1974 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_1978 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_767;
      }
      
      public function get webID() : int
      {
         return var_1542;
      }
      
      public function set groupId(param1:int) : void
      {
         var_1022 = param1;
      }
      
      public function get xp() : int
      {
         return var_1545;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_1979 = param1;
      }
      
      public function get groupId() : int
      {
         return var_1022;
      }
      
      public function get canTrade() : Boolean
      {
         return var_1974;
      }
      
      public function set xp(param1:int) : void
      {
         var_1545 = param1;
      }
   }
}
