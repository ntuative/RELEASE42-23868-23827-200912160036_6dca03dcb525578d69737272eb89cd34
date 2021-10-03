package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1563:int;
      
      private var var_2022:String;
      
      private var var_2020:int;
      
      private var var_2023:int;
      
      private var var_664:Boolean;
      
      private var var_1709:Boolean;
      
      private var var_401:int;
      
      private var var_1159:String;
      
      private var var_1708:int;
      
      private var var_1160:int;
      
      private var _ownerName:String;
      
      private var var_641:String;
      
      private var var_2021:int;
      
      private var var_2024:RoomThumbnailData;
      
      private var var_1707:Boolean;
      
      private var var_581:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_581 = new Array();
         super();
         var_401 = param1.readInteger();
         var_664 = param1.readBoolean();
         var_641 = param1.readString();
         _ownerName = param1.readString();
         var_1708 = param1.readInteger();
         var_1563 = param1.readInteger();
         var_2021 = param1.readInteger();
         var_1159 = param1.readString();
         var_2020 = param1.readInteger();
         var_1707 = param1.readBoolean();
         var_2023 = param1.readInteger();
         var_1160 = param1.readInteger();
         var_2022 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_581.push(_loc4_);
            _loc3_++;
         }
         var_2024 = new RoomThumbnailData(param1);
         var_1709 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_2021;
      }
      
      public function get roomName() : String
      {
         return var_641;
      }
      
      public function get userCount() : int
      {
         return var_1563;
      }
      
      public function get score() : int
      {
         return var_2023;
      }
      
      public function get eventCreationTime() : String
      {
         return var_2022;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1707;
      }
      
      public function get tags() : Array
      {
         return var_581;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1709;
      }
      
      public function get event() : Boolean
      {
         return var_664;
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
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1160;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_2020;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_2024;
      }
      
      public function get doorMode() : int
      {
         return var_1708;
      }
      
      public function get flatId() : int
      {
         return var_401;
      }
      
      public function get description() : String
      {
         return var_1159;
      }
   }
}
