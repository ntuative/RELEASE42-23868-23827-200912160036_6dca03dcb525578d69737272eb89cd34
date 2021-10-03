package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_1665:int;
      
      private var var_1667:String;
      
      private var var_1401:IActionDefinition;
      
      private var var_1663:Boolean;
      
      private var _color:IPartColor;
      
      private var var_1666:String;
      
      private var var_1662:String;
      
      private var var_1534:Boolean;
      
      private var var_1664:ColorTransform;
      
      private var var_1533:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_1667 = param1;
         var_1666 = param2;
         var_1665 = param3;
         _color = param4;
         _frames = param5;
         var_1401 = param6;
         var_1534 = param7;
         var_1533 = param8;
         var_1662 = param9;
         var_1663 = param10;
         var_1664 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1534;
      }
      
      public function get partType() : String
      {
         return var_1666;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1533;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_1663;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_1665;
      }
      
      public function get flippedPartType() : String
      {
         return var_1662;
      }
      
      public function get bodyPartId() : String
      {
         return var_1667;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1401;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_1664;
      }
   }
}
