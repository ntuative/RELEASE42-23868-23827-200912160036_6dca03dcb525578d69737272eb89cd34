package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1257:int;
      
      private var var_1010:String;
      
      private var var_669:Array;
      
      private var var_928:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_669.slice();
      }
      
      public function flush() : Boolean
      {
         var_1010 = "";
         var_928 = [];
         var_669 = [];
         var_1257 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1257;
      }
      
      public function get question() : String
      {
         return var_1010;
      }
      
      public function get choices() : Array
      {
         return var_928.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1010 = param1.readString();
         var_928 = [];
         var_669 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_928.push(param1.readString());
            var_669.push(param1.readInteger());
            _loc3_++;
         }
         var_1257 = param1.readInteger();
         return true;
      }
   }
}
