package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1374:int = 10;
       
      
      private var var_1430:NavigatorSettingsMessageParser;
      
      private var var_1186:int;
      
      private var var_1886:Boolean;
      
      private var var_1889:int;
      
      private var var_804:Dictionary;
      
      private var var_2208:int;
      
      private var var_1888:int;
      
      private var var_1547:int;
      
      private var var_321:Array;
      
      private var var_1887:int;
      
      private var var_1056:Array;
      
      private var var_550:PublicRoomShortData;
      
      private var var_386:RoomEventData;
      
      private var var_140:MsgWithRequestId;
      
      private var var_1828:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1885:Boolean;
      
      private var var_200:GuestRoomData;
      
      private var var_653:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_321 = new Array();
         var_804 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1889;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1885;
      }
      
      public function startLoading() : void
      {
         this.var_653 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1885 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_386 != null)
         {
            var_386.dispose();
         }
         var_386 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_140 != null && var_140 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_140 != null && var_140 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_140 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_200;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_550 = null;
         var_200 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_550 = param1.publicSpace;
            var_386 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(var_386 != null)
         {
            var_386.dispose();
            var_386 = null;
         }
         if(var_550 != null)
         {
            var_550.dispose();
            var_550 = null;
         }
         if(var_200 != null)
         {
            var_200.dispose();
            var_200 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_140 = param1;
         var_653 = false;
         if(var_1056 == null)
         {
            var_1056 = param1.topLevelNodes;
         }
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1430;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_140 = param1;
         var_653 = false;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function getCategoryByIndex(param1:int) : FlatCategory
      {
         if(var_321.length > param1)
         {
            return var_321[param1] as FlatCategory;
         }
         return null;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2208 = param1.limit;
         this.var_1186 = param1.favouriteRoomIds.length;
         this.var_804 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_804[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_140 as PopularRoomTagsData;
      }
      
      public function get categories() : Array
      {
         return var_321;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_550;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1547 = param1;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1886;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_140 = param1;
         var_653 = false;
      }
      
      public function getCategoryIndexById(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < var_321.length)
         {
            if((var_321[_loc2_] as FlatCategory).nodeId == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_200 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_653;
      }
      
      public function set categories(param1:Array) : void
      {
         var_321 = param1;
      }
      
      public function get currentRoomRating() : int
      {
         return var_1888;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1887;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1430 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_140 == null)
         {
            return;
         }
         var_140.dispose();
         var_140 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_386;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_804[param1] = !!param2 ? "yes" : null;
         var_1186 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_140 as OfficialRoomsData;
      }
      
      public function get topLevelNodes() : Array
      {
         return var_1056;
      }
      
      public function get avatarId() : int
      {
         return var_1547;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_140 != null && var_140 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1886 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1888 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1828 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_200 != null)
         {
            var_200.dispose();
         }
         var_200 = param1;
      }
      
      public function getCategoryById(param1:int) : FlatCategory
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_321)
         {
            if(_loc2_.nodeId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_200 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1430.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1186 >= var_2208;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1887 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1828;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_200 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1889 = param1;
      }
   }
}
