package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_2074:Boolean;
      
      private var var_1495:Array;
      
      private var var_2078:Boolean;
      
      private var var_2080:Boolean;
      
      private var var_2075:Boolean;
      
      private var var_159:Array;
      
      private var var_2073:Boolean;
      
      private var var_2076:Boolean;
      
      private var var_1496:Array;
      
      private var var_2079:Boolean;
      
      private var var_2077:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_2077;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_2074;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_2078;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_2073;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_2076;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1495;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_159 = [];
         var_1495 = [];
         _roomMessageTemplates = [];
         var_1496 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_159.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1495.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1496.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_2073 = param1.readBoolean();
         var_2075 = param1.readBoolean();
         var_2078 = param1.readBoolean();
         var_2080 = param1.readBoolean();
         var_2077 = param1.readBoolean();
         var_2076 = param1.readBoolean();
         var_2074 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_2079 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_2080;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1496;
      }
      
      public function get issues() : Array
      {
         return var_159;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_2079;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_2075;
      }
   }
}
