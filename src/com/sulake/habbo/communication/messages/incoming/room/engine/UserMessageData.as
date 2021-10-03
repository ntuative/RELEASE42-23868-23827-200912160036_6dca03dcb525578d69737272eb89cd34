package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1344:String = "F";
      
      public static const const_960:String = "M";
       
      
      private var var_89:Number = 0;
      
      private var var_531:String = "";
      
      private var var_1541:int = 0;
      
      private var var_1540:String = "";
      
      private var var_1544:int = 0;
      
      private var var_1545:int = 0;
      
      private var var_1539:String = "";
      
      private var var_1263:String = "";
      
      private var _id:int = 0;
      
      private var var_187:Boolean = false;
      
      private var var_221:int = 0;
      
      private var var_1543:String = "";
      
      private var _name:String = "";
      
      private var var_1542:int = 0;
      
      private var _y:Number = 0;
      
      private var var_90:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_90;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_221;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_187)
         {
            var_221 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_187)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_1541;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_187)
         {
            var_1544 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_1543;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_187)
         {
            var_1539 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_187)
         {
            var_1543 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_187)
         {
            var_1545 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_187)
         {
            var_531 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_187)
         {
            var_1541 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_187)
         {
            var_1263 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1544;
      }
      
      public function get groupID() : String
      {
         return var_1539;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_187)
         {
            var_1542 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_187)
         {
            var_1540 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_187 = true;
      }
      
      public function get sex() : String
      {
         return var_1263;
      }
      
      public function get figure() : String
      {
         return var_531;
      }
      
      public function get webID() : int
      {
         return var_1542;
      }
      
      public function get custom() : String
      {
         return var_1540;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_187)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_187)
         {
            var_90 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_187)
         {
            var_89 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_89;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1545;
      }
   }
}
