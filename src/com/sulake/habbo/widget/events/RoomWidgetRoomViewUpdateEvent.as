package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_661:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
      
      public static const const_625:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_252:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
       
      
      private var var_1384:Point;
      
      private var var_1385:Rectangle;
      
      private var var_193:Number = 0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         var_1385 = param2;
         var_1384 = param3;
         var_193 = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(var_1385 != null)
         {
            return var_1385.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return var_193;
      }
      
      public function get positionDelta() : Point
      {
         if(var_1384 != null)
         {
            return var_1384.clone();
         }
         return null;
      }
   }
}
