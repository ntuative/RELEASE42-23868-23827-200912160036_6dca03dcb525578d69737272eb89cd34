package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var var_2218:Boolean;
      
      private var var_1447:int;
      
      private var var_2220:String = "";
      
      private var var_77:ITextFieldWindow;
      
      private var var_2219:uint;
      
      private var _orgTextBackgroundColor:uint;
      
      private var _navigator:HabboNavigator;
      
      private var var_1081:String = "";
      
      private var var_157:IWindowContainer;
      
      private var var_292:Boolean;
      
      private var var_1207:Function;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         _navigator = param1;
         var_77 = param2;
         var_1447 = param3;
         var_1207 = param4;
         if(param5 != null)
         {
            var_292 = true;
            var_1081 = param5;
            var_77.text = param5;
         }
         Util.setProcDirectly(var_77,onInputClick);
         var_77.addEventListener(WindowKeyboardEvent.const_128,checkEnterPress);
         var_77.addEventListener(WindowEvent.const_205,checkMaxLen);
         this.var_2218 = var_77.textBackground;
         this._orgTextBackgroundColor = var_77.textBackgroundColor;
         this.var_2219 = var_77.textColor;
      }
      
      private function checkEnterPress(param1:Event) : void
      {
         var _loc2_:IWindow = IWindow(param1.target);
         if(!(param1 is WindowKeyboardEvent))
         {
            return;
         }
         var _loc3_:WindowKeyboardEvent = WindowKeyboardEvent(param1);
         if(_loc3_.charCode == Keyboard.ENTER)
         {
            if(var_1207 != null)
            {
               var_1207();
            }
         }
      }
      
      public function goBackToInitialState() : void
      {
         clearErrors();
         if(var_1081 != null)
         {
            var_77.text = var_1081;
            var_292 = true;
         }
         else
         {
            var_77.text = "";
            var_292 = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return var_77;
      }
      
      public function restoreBackground() : void
      {
         var_77.textBackground = this.var_2218;
         var_77.textBackgroundColor = this._orgTextBackgroundColor;
         var_77.textColor = this.var_2219;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_292)
         {
            return;
         }
         if(!var_292)
         {
            return;
         }
         var_77.text = var_2220;
         var_292 = false;
         this.restoreBackground();
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_157 != null)
         {
            var_157.visible = false;
         }
      }
      
      public function displayError(param1:String) : void
      {
         var_77.textBackground = true;
         var_77.textBackgroundColor = 4294021019;
         var_77.textColor = 4278190080;
         if(this.var_157 == null)
         {
            this.var_157 = IWindowContainer(_navigator.getXmlWindow("nav_error_popup"));
            _navigator.refreshButton(this.var_157,"popup_arrow_down",true,null,0);
            IWindowContainer(var_77.parent).addChild(this.var_157);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_157.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         var_157.findChildByName("border").width = _loc2_.width + 15;
         var_157.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         var_77.getLocalPosition(_loc3_);
         this.var_157.x = _loc3_.x;
         this.var_157.y = _loc3_.y - this.var_157.height + 3;
         var _loc4_:IWindow = var_157.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_157.width / 2 - _loc4_.width / 2;
         var_157.x += (0 - 0) / 2;
         this.var_157.visible = true;
      }
      
      public function getText() : String
      {
         if(var_292)
         {
            return var_2220;
         }
         return var_77.text;
      }
      
      private function isInputValid() : Boolean
      {
         return !var_292 && Util.trim(getText()).length > 2;
      }
      
      public function setText(param1:String) : void
      {
         var_292 = false;
         var_77.text = param1;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!isInputValid())
         {
            displayError(param1);
            return false;
         }
         restoreBackground();
         return true;
      }
      
      private function checkMaxLen(param1:Event) : void
      {
         var _loc2_:String = "null";
         if(_loc2_.length > var_1447)
         {
            var_77.text = _loc2_.substring(0,var_1447);
         }
      }
   }
}
