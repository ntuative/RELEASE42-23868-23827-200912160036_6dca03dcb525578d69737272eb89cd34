package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct
   {
       
      
      private var var_967:IID;
      
      private var var_385:uint;
      
      private var var_1179:IUnknown;
      
      private var var_1180:String;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_967 = param1;
         var_1180 = getQualifiedClassName(var_967);
         var_1179 = param2;
         var_385 = 0;
      }
      
      public function get iid() : IID
      {
         return var_967;
      }
      
      public function get references() : uint
      {
         return var_385;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_385) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1179;
      }
      
      public function get iis() : String
      {
         return var_1180;
      }
      
      public function reserve() : uint
      {
         return ++var_385;
      }
      
      public function dispose() : void
      {
         var_967 = null;
         var_1180 = null;
         var_1179 = null;
         var_385 = 0;
      }
   }
}
