package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_2038:int = 0;
      
      private var var_2040:int = 0;
      
      private var var_2041:int = 0;
      
      private var var_2039:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get pixels() : int
      {
         return var_2040;
      }
      
      public function set pixels(param1:int) : void
      {
         var_2040 = param1;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_2038 = param1;
      }
      
      public function get credits() : int
      {
         return var_2041;
      }
      
      public function get clubDays() : int
      {
         return var_2038;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_2039 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_2041 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_2039;
      }
   }
}
