package com.sulake.core.window.utils
{
   import com.sulake.core.runtime.IDisposable;
   
   public class TextMargins implements IMargins, IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_799:int;
      
      private var _right:int;
      
      private var var_800:int;
      
      private var var_798:int;
      
      private var var_183:Function;
      
      public function TextMargins(param1:int, param2:int, param3:int, param4:int, param5:Function)
      {
         super();
         var_800 = param1;
         var_798 = param2;
         _right = param3;
         var_799 = param4;
         var_183 = param5 != null ? param5 : nullCallback;
      }
      
      public function set bottom(param1:int) : void
      {
         var_799 = param1;
         var_183(this);
      }
      
      public function get left() : int
      {
         return var_800;
      }
      
      public function get isZeroes() : Boolean
      {
         return var_800 == 0 && _right == 0 && var_798 == 0 && var_799 == 0;
      }
      
      public function get right() : int
      {
         return _right;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function set top(param1:int) : void
      {
         var_798 = param1;
         var_183(this);
      }
      
      public function get top() : int
      {
         return var_798;
      }
      
      public function set left(param1:int) : void
      {
         var_800 = param1;
         var_183(this);
      }
      
      public function get bottom() : int
      {
         return var_799;
      }
      
      public function clone(param1:Function) : TextMargins
      {
         return new TextMargins(var_800,var_798,_right,var_799,param1);
      }
      
      public function dispose() : void
      {
         var_183 = null;
         _disposed = true;
      }
      
      public function set right(param1:int) : void
      {
         _right = param1;
         var_183(this);
      }
      
      private function nullCallback(param1:IMargins) : void
      {
      }
   }
}
