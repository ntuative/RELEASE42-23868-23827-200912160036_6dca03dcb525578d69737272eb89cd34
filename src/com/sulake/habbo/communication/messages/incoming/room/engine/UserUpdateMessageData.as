package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_90:Number = 0;
      
      private var var_221:int = 0;
      
      private var var_1826:int = 0;
      
      private var var_1825:Number = 0;
      
      private var var_1822:Number = 0;
      
      private var var_1827:Number = 0;
      
      private var var_1823:Number = 0;
      
      private var var_1824:Boolean = false;
      
      private var var_89:Number = 0;
      
      private var _id:int = 0;
      
      private var var_194:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_194 = [];
         super();
         _id = param1;
         var_89 = param2;
         _y = param3;
         var_90 = param4;
         var_1823 = param5;
         var_221 = param6;
         var_1826 = param7;
         var_1825 = param8;
         var_1822 = param9;
         var_1827 = param10;
         var_1824 = param11;
         var_194 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_90;
      }
      
      public function get dir() : int
      {
         return var_221;
      }
      
      public function get localZ() : Number
      {
         return var_1823;
      }
      
      public function get isMoving() : Boolean
      {
         return var_1824;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1826;
      }
      
      public function get targetX() : Number
      {
         return var_1825;
      }
      
      public function get targetY() : Number
      {
         return var_1822;
      }
      
      public function get targetZ() : Number
      {
         return var_1827;
      }
      
      public function get x() : Number
      {
         return var_89;
      }
      
      public function get actions() : Array
      {
         return var_194.slice();
      }
   }
}
