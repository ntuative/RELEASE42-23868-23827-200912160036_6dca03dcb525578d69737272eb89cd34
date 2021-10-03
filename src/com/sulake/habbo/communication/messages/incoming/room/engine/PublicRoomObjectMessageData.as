package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var var_927:int = 0;
      
      private var var_90:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_187:Boolean = false;
      
      private var var_221:int = 0;
      
      private var _type:String = "";
      
      private var _name:String = "";
      
      private var var_89:Number = 0;
      
      private var var_925:int = 0;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_187)
         {
            var_90 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return var_927;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get dir() : int
      {
         return var_221;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         if(!var_187)
         {
            _name = param1;
         }
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_187)
         {
            var_221 = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_187)
         {
            _y = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_187 = true;
      }
      
      public function get z() : Number
      {
         return var_90;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_187)
         {
            var_927 = param1;
         }
      }
      
      public function set method_6(param1:int) : void
      {
         if(!var_187)
         {
            var_925 = param1;
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
      
      public function get type() : String
      {
         return _type;
      }
      
      public function set type(param1:String) : void
      {
         if(!var_187)
         {
            _type = param1;
         }
      }
      
      public function get method_6() : int
      {
         return var_925;
      }
   }
}
