package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_794:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_794 = new Array();
         var_794.push(param1.length);
         var_794 = var_794.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_794;
      }
   }
}
