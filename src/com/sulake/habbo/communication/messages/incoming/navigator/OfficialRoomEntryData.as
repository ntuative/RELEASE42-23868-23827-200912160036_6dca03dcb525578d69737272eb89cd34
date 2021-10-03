package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_962:int = 4;
      
      public static const TYPE_PUBLIC_SPACE:int = 3;
      
      public static const const_633:int = 2;
      
      public static const const_912:int = 1;
       
      
      private var var_1795:String;
      
      private var _disposed:Boolean;
      
      private var var_1563:int;
      
      private var var_1797:Boolean;
      
      private var var_854:String;
      
      private var var_770:PublicRoomData;
      
      private var _index:int;
      
      private var var_1793:String;
      
      private var _type:int;
      
      private var var_1572:String;
      
      private var var_771:GuestRoomData;
      
      private var var_1796:String;
      
      private var var_1794:int;
      
      public function OfficialRoomEntryData(param1:int, param2:IMessageDataWrapper)
      {
         super();
         _index = param1;
         var_1795 = param2.readString();
         var_1796 = param2.readString();
         var_1797 = param2.readInteger() == 1;
         var_1793 = param2.readString();
         var_854 = param2.readString();
         var_1563 = param2.readInteger();
         _type = param2.readInteger();
         if(_type == const_912)
         {
            var_1572 = param2.readString();
         }
         else if(_type == TYPE_PUBLIC_SPACE)
         {
            var_770 = new PublicRoomData(param2);
         }
         else if(_type == const_633)
         {
            var_771 = new GuestRoomData(param2);
         }
         else if(_type == const_962)
         {
            var_1794 = param2.readInteger();
         }
      }
      
      public function get tag() : String
      {
         return var_1572;
      }
      
      public function get userCount() : int
      {
         return var_1563;
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1797;
      }
      
      public function get picText() : String
      {
         return var_1793;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_912)
         {
            return 0;
         }
         if(this.type == const_633)
         {
            return this.var_771.maxUserCount;
         }
         if(this.type == TYPE_PUBLIC_SPACE)
         {
            return this.var_770.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1796;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_771 != null)
         {
            this.var_771.dispose();
            this.var_771 = null;
         }
         if(this.var_770 != null)
         {
            this.var_770.dispose();
            this.var_770 = null;
         }
      }
      
      public function get popupCaption() : String
      {
         return var_1795;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_771;
      }
      
      public function get picRef() : String
      {
         return var_854;
      }
      
      public function get flatCategoryId() : int
      {
         return var_1794;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_770;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
