package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_140:int = 1;
      
      public static const const_1335:int = 3;
      
      public static const const_420:int = 2;
       
      
      private var var_1867:int;
      
      private var var_1866:int;
      
      private var var_1865:int;
      
      private var var_1675:int;
      
      private var _state:int;
      
      private var var_401:int;
      
      private var var_1111:int;
      
      private var var_1801:int;
      
      private var var_886:int;
      
      private var _roomResources:String;
      
      private var var_1870:int;
      
      private var var_1868:int;
      
      private var var_1863:String;
      
      private var var_1802:String;
      
      private var var_1871:int = 0;
      
      private var var_1061:String;
      
      private var _message:String;
      
      private var var_1864:int;
      
      private var var_1869:String;
      
      private var var_1160:int;
      
      private var var_641:String;
      
      private var var_1862:String;
      
      private var var_1424:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_886 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_1871 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_1868;
      }
      
      public function set roomName(param1:String) : void
      {
         var_641 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1870 = param1;
      }
      
      public function get state() : int
      {
         return _state;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_641;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1675 = param1;
      }
      
      public function set state(param1:int) : void
      {
         _state = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1866;
      }
      
      public function get priority() : int
      {
         return var_1867 + var_1871;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1801 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1802;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1424) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1160;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_1868 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1111;
      }
      
      public function set flatType(param1:String) : void
      {
         var_1863 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1870;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1675;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_1862 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1061 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1801;
      }
      
      public function set priority(param1:int) : void
      {
         var_1867 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1866 = param1;
      }
      
      public function get flatType() : String
      {
         return var_1863;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_1865 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1802 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1864 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1061;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1111 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_1865;
      }
      
      public function set flatId(param1:int) : void
      {
         var_401 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1160 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1424 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1864;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_1869 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1424;
      }
      
      public function get reportedUserId() : int
      {
         return var_886;
      }
      
      public function get flatId() : int
      {
         return var_401;
      }
      
      public function get flatOwnerName() : String
      {
         return var_1862;
      }
      
      public function get reporterUserName() : String
      {
         return var_1869;
      }
   }
}
