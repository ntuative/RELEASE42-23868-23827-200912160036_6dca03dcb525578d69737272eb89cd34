package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2062:Boolean = false;
      
      private var var_2061:int = 0;
      
      private var var_2038:int = 0;
      
      private var var_2060:int = 0;
      
      private var var_1367:int = 0;
      
      private var var_2039:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1367 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_2061;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_2062;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_2062 = param1;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_2061 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_2038 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1367;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_2060 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_2038;
      }
      
      public function get pixelBalance() : int
      {
         return var_2060;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_2039 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_2039;
      }
   }
}
