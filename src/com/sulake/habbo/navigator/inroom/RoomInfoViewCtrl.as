package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_600:IWindowContainer;
      
      private var var_893:ITextWindow;
      
      private var var_188:RoomSettingsCtrl;
      
      private var var_1070:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var var_431:Timer;
      
      private var var_1075:ITextWindow;
      
      private var var_318:IWindowContainer;
      
      private var var_1592:IWindowContainer;
      
      private var var_1594:ITextWindow;
      
      private var var_726:IWindowContainer;
      
      private var var_1323:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_641:ITextWindow;
      
      private var var_1325:IWindowContainer;
      
      private var var_1074:IWindowContainer;
      
      private var var_725:ITextWindow;
      
      private var var_894:ITextFieldWindow;
      
      private var var_279:IWindowContainer;
      
      private var var_727:ITextWindow;
      
      private var var_1324:IButtonWindow;
      
      private var var_892:ITextWindow;
      
      private var var_2192:int;
      
      private var var_1073:IContainerButtonWindow;
      
      private var var_724:IWindowContainer;
      
      private var var_1076:ITextWindow;
      
      private var var_1072:IContainerButtonWindow;
      
      private var var_1326:ITextWindow;
      
      private var var_1327:IButtonWindow;
      
      private var var_939:TagRenderer;
      
      private var var_1593:ITextWindow;
      
      private var var_319:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_599:ITextWindow;
      
      private var var_243:RoomThumbnailCtrl;
      
      private var var_1071:IContainerButtonWindow;
      
      private var var_1591:IWindowContainer;
      
      private var var_244:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_319 = new RoomEventViewCtrl(_navigator);
         var_188 = new RoomSettingsCtrl(_navigator,this,true);
         var_243 = new RoomThumbnailCtrl(_navigator);
         var_939 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_188);
         var_431 = new Timer(6000,1);
         var_431.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_188.active = true;
         this.var_319.active = false;
         this.var_243.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1323.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1327.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1325.visible = Util.hasVisibleChildren(var_1325);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_641.text = param1.roomName;
         var_641.height = NaN;
         _ownerName.text = param1.ownerName;
         var_725.text = param1.description;
         var_939.refreshTags(var_318,param1.tags);
         var_725.visible = false;
         if(param1.description != "")
         {
            var_725.height = NaN;
            var_725.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_318,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_318,"thumb_down",_loc3_,onThumbDown,0);
         var_1594.visible = _loc3_;
         var_727.visible = !_loc3_;
         var_1326.visible = !_loc3_;
         var_1326.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_318,"home",param2,null,0);
         _navigator.refreshButton(var_318,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_318,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_641.y,0);
         var_318.visible = true;
         var_318.height = Util.getLowestPoint(var_318);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_458,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(0,_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1324.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1070.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1071.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1073.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1072.visible = _navigator.data.canEditRoomSettings && param1;
         var_1074.visible = Util.hasVisibleChildren(var_1074);
      }
      
      public function open(param1:Boolean) : void
      {
         this.var_431.reset();
         this.var_319.active = false;
         this.var_188.active = false;
         this.var_243.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_46,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this.var_431.start();
         }
      }
      
      public function toggle() : void
      {
         this.var_431.reset();
         this.var_319.active = false;
         this.var_188.active = false;
         this.var_243.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_46,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_458,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_279);
         var_279.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_188.refresh(var_279);
         this.var_243.refresh(var_279);
         Util.moveChildrenToColumn(var_279,["room_details","room_buttons"],0,2);
         var_279.height = Util.getLowestPoint(var_279);
         var_279.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_894.setSelection(0,var_894.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_244);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_319.refresh(var_244);
         if(Util.hasVisibleChildren(var_244) && !this.var_243.active)
         {
            Util.moveChildrenToColumn(var_244,["event_details","event_buttons"],0,2);
            var_244.height = Util.getLowestPoint(var_244);
            var_244.visible = true;
         }
         else
         {
            var_244.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this.var_431.reset();
         this.var_319.active = true;
         this.var_188.active = false;
         this.var_243.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(0,_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         var_431.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_893.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_893.height = NaN;
         var_1075.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1075.height = NaN;
         Util.moveChildrenToColumn(var_600,["public_space_name","public_space_desc"],var_893.y,0);
         var_600.visible = true;
         var_600.height = Math.max(86,Util.getLowestPoint(var_600));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         if(_loc1_ && true && true && true)
         {
            var_724.visible = true;
            var_894.text = this.getEmbedData();
         }
         else
         {
            var_724.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_431.reset();
         this.var_188.load(param1);
         this.var_188.active = true;
         this.var_319.active = false;
         this.var_243.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_431.reset();
         this.var_188.active = false;
         this.var_319.active = false;
         this.var_243.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_67,false);
         _window.setParamFlag(HabboWindowParam.const_1110,true);
         var_279 = IWindowContainer(find("room_info"));
         var_318 = IWindowContainer(find("room_details"));
         var_600 = IWindowContainer(find("public_space_details"));
         var_1591 = IWindowContainer(find("owner_name_cont"));
         var_1592 = IWindowContainer(find("rating_cont"));
         var_1074 = IWindowContainer(find("room_buttons"));
         var_641 = ITextWindow(find("room_name"));
         var_893 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_725 = ITextWindow(find("room_desc"));
         var_1075 = ITextWindow(find("public_space_desc"));
         var_892 = ITextWindow(find("owner_caption"));
         var_727 = ITextWindow(find("rating_caption"));
         var_1594 = ITextWindow(find("rate_caption"));
         var_1326 = ITextWindow(find("rating_txt"));
         var_244 = IWindowContainer(find("event_info"));
         var_726 = IWindowContainer(find("event_details"));
         var_1325 = IWindowContainer(find("event_buttons"));
         var_1593 = ITextWindow(find("event_name"));
         var_599 = ITextWindow(find("event_desc"));
         var_1070 = IContainerButtonWindow(find("add_favourite_button"));
         var_1071 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1073 = IContainerButtonWindow(find("make_home_button"));
         var_1072 = IContainerButtonWindow(find("unmake_home_button"));
         var_1324 = IButtonWindow(find("room_settings_button"));
         var_1323 = IButtonWindow(find("create_event_button"));
         var_1327 = IButtonWindow(find("edit_event_button"));
         var_724 = IWindowContainer(find("embed_info"));
         var_1076 = ITextWindow(find("embed_info_txt"));
         var_894 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1070,onAddFavouriteClick);
         Util.setProcDirectly(var_1071,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1324,onRoomSettingsClick);
         Util.setProcDirectly(var_1073,onMakeHomeClick);
         Util.setProcDirectly(var_1072,onUnmakeHomeClick);
         Util.setProcDirectly(var_1323,onEventSettingsClick);
         Util.setProcDirectly(var_1327,onEventSettingsClick);
         Util.setProcDirectly(var_894,onEmbedSrcClick);
         _navigator.refreshButton(var_1070,"favourite",true,null,0);
         _navigator.refreshButton(var_1071,"favourite",true,null,0);
         _navigator.refreshButton(var_1073,"home",true,null,0);
         _navigator.refreshButton(var_1072,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_279,onHover);
         Util.setProcDirectly(var_244,onHover);
         var_892.width = var_892.textWidth;
         Util.moveChildrenToRow(var_1591,["owner_caption","owner_name"],var_892.x,var_892.y,3);
         var_727.width = var_727.textWidth;
         Util.moveChildrenToRow(var_1592,["rating_caption","rating_txt"],var_727.x,var_727.y,3);
         var_1076.height = NaN;
         Util.moveChildrenToColumn(var_724,["embed_info_txt","embed_src_txt"],var_1076.y,2);
         var_724.height = Util.getLowestPoint(var_724) + 5;
         var_2192 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_1593.text = param1.eventName;
         var_599.text = param1.eventDescription;
         var_939.refreshTags(var_726,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_599.visible = false;
         if(param1.eventDescription != "")
         {
            var_599.height = NaN;
            var_599.y = Util.getLowestPoint(var_726) + 2;
            var_599.visible = true;
         }
         var_726.visible = true;
         var_726.height = Util.getLowestPoint(var_726);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_851,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
