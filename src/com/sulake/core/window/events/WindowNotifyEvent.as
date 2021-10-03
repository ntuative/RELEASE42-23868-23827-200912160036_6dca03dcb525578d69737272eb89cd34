package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1124:String = "WN_CREATED";
      
      public static const const_786:String = "WN_DISABLE";
      
      public static const const_843:String = "WN_DEACTIVATED";
      
      public static const const_907:String = "WN_OPENED";
      
      public static const const_893:String = "WN_CLOSED";
      
      public static const const_979:String = "WN_DESTROY";
      
      public static const const_1449:String = "WN_ARRANGED";
      
      public static const const_446:String = "WN_PARENT_RESIZED";
      
      public static const const_838:String = "WN_ENABLE";
      
      public static const const_878:String = "WN_RELOCATE";
      
      public static const const_983:String = "WN_FOCUS";
      
      public static const const_793:String = "WN_PARENT_RELOCATED";
      
      public static const const_438:String = "WN_PARAM_UPDATED";
      
      public static const const_596:String = "WN_PARENT_ACTIVATED";
      
      public static const const_260:String = "WN_RESIZED";
      
      public static const const_815:String = "WN_CLOSE";
      
      public static const const_904:String = "WN_PARENT_REMOVED";
      
      public static const const_235:String = "WN_CHILD_RELOCATED";
      
      public static const const_721:String = "WN_ENABLED";
      
      public static const const_223:String = "WN_CHILD_RESIZED";
      
      public static const const_813:String = "WN_MINIMIZED";
      
      public static const const_612:String = "WN_DISABLED";
      
      public static const const_212:String = "WN_CHILD_ACTIVATED";
      
      public static const const_472:String = "WN_STATE_UPDATED";
      
      public static const const_690:String = "WN_UNSELECTED";
      
      public static const const_398:String = "WN_STYLE_UPDATED";
      
      public static const const_1440:String = "WN_UPDATE";
      
      public static const const_429:String = "WN_PARENT_ADDED";
      
      public static const const_516:String = "WN_RESIZE";
      
      public static const const_619:String = "WN_CHILD_REMOVED";
      
      public static const const_1544:String = "";
      
      public static const const_901:String = "WN_RESTORED";
      
      public static const const_284:String = "WN_SELECTED";
      
      public static const const_804:String = "WN_MINIMIZE";
      
      public static const const_775:String = "WN_FOCUSED";
      
      public static const const_1180:String = "WN_LOCK";
      
      public static const const_277:String = "WN_CHILD_ADDED";
      
      public static const const_857:String = "WN_UNFOCUSED";
      
      public static const const_418:String = "WN_RELOCATED";
      
      public static const const_864:String = "WN_DEACTIVATE";
      
      public static const const_1238:String = "WN_CRETAE";
      
      public static const const_984:String = "WN_RESTORE";
      
      public static const const_311:String = "WN_ACTVATED";
      
      public static const const_1160:String = "WN_LOCKED";
      
      public static const const_362:String = "WN_SELECT";
      
      public static const const_783:String = "WN_MAXIMIZE";
      
      public static const const_987:String = "WN_OPEN";
      
      public static const const_657:String = "WN_UNSELECT";
      
      public static const const_1470:String = "WN_ARRANGE";
      
      public static const const_1312:String = "WN_UNLOCKED";
      
      public static const const_1494:String = "WN_UPDATED";
      
      public static const const_871:String = "WN_ACTIVATE";
      
      public static const const_1118:String = "WN_UNLOCK";
      
      public static const const_779:String = "WN_MAXIMIZED";
      
      public static const const_888:String = "WN_DESTROYED";
      
      public static const const_898:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1519,cancelable);
      }
   }
}
