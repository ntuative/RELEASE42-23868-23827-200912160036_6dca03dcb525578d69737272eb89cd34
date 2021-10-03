package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_932:int = 0;
      
      private var var_1146:int = 0;
      
      private var var_1752:String = "";
      
      private var var_933:int = 0;
      
      private var var_1788:String = "";
      
      private var var_1787:int = 0;
      
      private var var_1382:String = "";
      
      private var var_1789:int = 0;
      
      private var var_1785:int = 0;
      
      private var var_1756:String = "";
      
      private var var_1786:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1789 = param1;
         var_1756 = param2;
         var_1382 = param3;
         var_1752 = param4;
         var_1788 = param5;
         if(param6)
         {
            var_1146 = 1;
         }
         else
         {
            var_1146 = 0;
         }
         var_1787 = param7;
         var_1785 = param8;
         var_933 = param9;
         var_1786 = param10;
         var_932 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1789,var_1756,var_1382,var_1752,var_1788,var_1146,var_1787,var_1785,var_933,var_1786,var_932];
      }
      
      public function dispose() : void
      {
      }
   }
}
