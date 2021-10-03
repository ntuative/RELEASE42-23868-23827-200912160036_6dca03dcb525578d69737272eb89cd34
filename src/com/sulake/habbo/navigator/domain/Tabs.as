package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_618:int = 6;
      
      public static const const_201:int = 5;
      
      public static const const_522:int = 2;
      
      public static const const_319:int = 9;
      
      public static const const_245:int = 4;
      
      public static const const_227:int = 2;
      
      public static const const_651:int = 4;
      
      public static const const_207:int = 8;
      
      public static const const_532:int = 7;
      
      public static const const_244:int = 3;
      
      public static const const_323:int = 1;
      
      public static const const_184:int = 5;
      
      public static const const_360:int = 12;
      
      public static const const_321:int = 1;
      
      public static const const_352:int = 11;
      
      public static const const_602:int = 3;
      
      public static const const_1514:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_415:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_415 = new Array();
         var_415.push(new Tab(_navigator,const_323,const_360,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_397));
         var_415.push(new Tab(_navigator,const_227,const_321,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_397));
         var_415.push(new Tab(_navigator,const_245,const_352,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_677));
         var_415.push(new Tab(_navigator,const_244,const_201,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_397));
         var_415.push(new Tab(_navigator,const_184,const_207,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_617));
         setSelectedTab(const_323);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_415)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_415)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_415)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_245;
      }
      
      public function get tabs() : Array
      {
         return var_415;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
