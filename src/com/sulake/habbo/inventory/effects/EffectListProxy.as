package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDataProvider;
   
   public class EffectListProxy implements IThumbListDataProvider
   {
       
      
      private var var_433:int;
      
      private var var_91:EffectsModel;
      
      public function EffectListProxy(param1:EffectsModel, param2:int)
      {
         super();
         var_91 = param1;
         var_433 = param2;
      }
      
      public function getDrawableList() : Array
      {
         return var_91.getEffects(var_433);
      }
      
      public function dispose() : void
      {
         var_91 = null;
      }
   }
}
