package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_1913:Boolean;
      
      private var var_1912:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_1913 = Boolean(parseInt(param1.@club));
         var_1912 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_1913;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1912;
      }
   }
}
