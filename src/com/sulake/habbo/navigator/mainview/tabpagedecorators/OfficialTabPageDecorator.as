package com.sulake.habbo.navigator.mainview.tabpagedecorators
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.NavigationNodeData;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.domain.Tabs;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   
   public class OfficialTabPageDecorator implements ITabPageDecorator
   {
       
      
      private var var_438:IDropMenuWindow;
      
      private var var_1651:Boolean;
      
      private var _navigator:HabboNavigator;
      
      public function OfficialTabPageDecorator(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
      }
      
      private function onChangeNavi(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_52)
         {
            return;
         }
         startSearch();
      }
      
      public function navigatorOpenedWhileInTab() : void
      {
         startSearch();
      }
      
      public function refreshCustomContent(param1:IWindowContainer) : void
      {
         var _loc3_:IWindowContainer = param1.getChildByName("official_header") as IWindowContainer;
         if(var_438 == null)
         {
            var_438 = IDropMenuWindow(_loc3_.findChildByName("officialSubNavi"));
            var_438.procedure = onChangeNavi;
         }
         if(!var_1651 && _navigator.data.topLevelNodes != null)
         {
            prepareNavi();
         }
         _loc3_.visible = true;
      }
      
      public function refreshFooter(param1:IWindowContainer) : void
      {
      }
      
      public function tabSelected() : void
      {
         if(this.var_438 != null)
         {
            this.var_438.selection = 0;
         }
      }
      
      private function startSearch() : void
      {
         var _loc3_:* = null;
         var _loc1_:int = var_438 == null ? 0 : int(var_438.selection);
         var _loc2_:int = -1;
         if(_navigator.data.officialRooms != null)
         {
            _loc3_ = _navigator.data.topLevelNodes[_loc1_ - 1];
            _loc2_ = _loc1_ < 1 ? -1 : int(_loc3_.nodeId);
         }
         Logger.log("Official navi changed: " + _loc1_ + ", " + _loc2_);
         _navigator.mainViewCtrl.startSearch(Tabs.const_245,Tabs.const_352,"" + _loc2_,MainViewCtrl.const_677);
      }
      
      private function prepareNavi() : void
      {
         var _loc2_:* = null;
         var _loc1_:Array = new Array();
         _loc1_.push(_navigator.getText("navigator.navisel.mainattractions"));
         for each(_loc2_ in _navigator.data.topLevelNodes)
         {
            _loc1_.push(_loc2_.nodeName);
         }
         var_438.populate(_loc1_);
         var_1651 = true;
         var_438.selection = 0;
      }
   }
}
