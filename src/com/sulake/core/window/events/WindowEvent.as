package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_313:String = "WE_CHILD_RESIZED";
      
      public static const const_1178:String = "WE_CLOSE";
      
      public static const const_1301:String = "WE_DESTROY";
      
      public static const const_205:String = "WE_CHANGE";
      
      public static const const_1263:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1473:String = "WE_PARENT_RESIZE";
      
      public static const const_86:String = "WE_UPDATE";
      
      public static const const_1122:String = "WE_MAXIMIZE";
      
      public static const const_457:String = "WE_DESTROYED";
      
      public static const const_935:String = "WE_UNSELECT";
      
      public static const const_1282:String = "WE_MAXIMIZED";
      
      public static const const_1395:String = "WE_UNLOCKED";
      
      public static const const_392:String = "WE_CHILD_REMOVED";
      
      public static const const_170:String = "WE_OK";
      
      public static const const_43:String = "WE_RESIZED";
      
      public static const const_1201:String = "WE_ACTIVATE";
      
      public static const const_242:String = "WE_ENABLED";
      
      public static const const_467:String = "WE_CHILD_RELOCATED";
      
      public static const const_1304:String = "WE_CREATE";
      
      public static const const_540:String = "WE_SELECT";
      
      public static const const_158:String = "";
      
      public static const const_1515:String = "WE_LOCKED";
      
      public static const const_1499:String = "WE_PARENT_RELOCATE";
      
      public static const const_1542:String = "WE_CHILD_REMOVE";
      
      public static const const_1478:String = "WE_CHILD_RELOCATE";
      
      public static const const_1525:String = "WE_LOCK";
      
      public static const const_292:String = "WE_FOCUSED";
      
      public static const const_670:String = "WE_UNSELECTED";
      
      public static const const_937:String = "WE_DEACTIVATED";
      
      public static const const_1217:String = "WE_MINIMIZED";
      
      public static const const_1402:String = "WE_ARRANGED";
      
      public static const const_1477:String = "WE_UNLOCK";
      
      public static const const_1551:String = "WE_ATTACH";
      
      public static const const_1185:String = "WE_OPEN";
      
      public static const const_1117:String = "WE_RESTORE";
      
      public static const const_1508:String = "WE_PARENT_RELOCATED";
      
      public static const const_1331:String = "WE_RELOCATE";
      
      public static const const_1552:String = "WE_CHILD_RESIZE";
      
      public static const const_1405:String = "WE_ARRANGE";
      
      public static const const_1242:String = "WE_OPENED";
      
      public static const const_1284:String = "WE_CLOSED";
      
      public static const const_1498:String = "WE_DETACHED";
      
      public static const const_1432:String = "WE_UPDATED";
      
      public static const const_1115:String = "WE_UNFOCUSED";
      
      public static const const_433:String = "WE_RELOCATED";
      
      public static const const_1224:String = "WE_DEACTIVATE";
      
      public static const const_194:String = "WE_DISABLED";
      
      public static const const_590:String = "WE_CANCEL";
      
      public static const const_556:String = "WE_ENABLE";
      
      public static const const_1236:String = "WE_ACTIVATED";
      
      public static const const_1134:String = "WE_FOCUS";
      
      public static const const_1500:String = "WE_DETACH";
      
      public static const const_1195:String = "WE_RESTORED";
      
      public static const const_1303:String = "WE_UNFOCUS";
      
      public static const const_52:String = "WE_SELECTED";
      
      public static const const_1277:String = "WE_PARENT_RESIZED";
      
      public static const const_1158:String = "WE_CREATED";
      
      public static const const_1456:String = "WE_ATTACHED";
      
      public static const const_1172:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1519:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1292:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1519 = param3;
         var_1292 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1292;
      }
      
      public function get related() : IWindow
      {
         return var_1519;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function method_15() : void
      {
         if(cancelable)
         {
            var_1292 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
