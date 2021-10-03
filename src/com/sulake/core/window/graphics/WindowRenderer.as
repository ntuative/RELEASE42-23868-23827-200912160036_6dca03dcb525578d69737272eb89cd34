package com.sulake.core.window.graphics
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContext;
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.events.WindowDisposeEvent;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class WindowRenderer implements IWindowRenderer
   {
       
      
      private var var_57:DisplayObjectContainer;
      
      private var _disposed:Boolean;
      
      private var var_667:ISkinContainer;
      
      private var var_1471:Rectangle;
      
      private var var_298:Dictionary;
      
      private var _drawBufferAllocator:DrawBufferAllocator;
      
      private var var_867:Boolean = false;
      
      private var var_561:Array;
      
      private var var_297:Rectangle;
      
      private var var_1470:Point;
      
      public function WindowRenderer(param1:ISkinContainer)
      {
         super();
         _disposed = false;
         var_561 = new Array();
         var_1470 = new Point();
         var_1471 = new Rectangle();
         var_297 = new Rectangle();
         var_298 = new Dictionary(true);
         var_667 = param1;
         _drawBufferAllocator = new DrawBufferAllocator();
      }
      
      private static function getDrawLocationAndClipRegion(param1:WindowController, param2:Rectangle, param3:Point, param4:Rectangle) : Boolean
      {
         var _loc7_:int = 0;
         var _loc5_:Rectangle = param1.rectangle.clone();
         var _loc6_:Boolean = true;
         param4.x = 0;
         param4.y = 0;
         param4.width = _loc5_.width;
         param4.height = _loc5_.height;
         if(!param1.testParamFlag(WindowParam.const_33))
         {
            param3.x = 0;
            param3.y = 0;
         }
         else if(param1.parent != null)
         {
            _loc6_ = WindowController(param1.parent).childRectToClippedDrawRegion(_loc5_,param4);
            param3.x = _loc5_.x;
            param3.y = _loc5_.y;
         }
         else
         {
            param3.x = 0;
            param3.y = 0;
         }
         if(param2.x > param4.x)
         {
            _loc7_ = param2.x - param4.x;
            param3.x += _loc7_;
            param4.x += _loc7_;
            param4.width -= _loc7_;
         }
         if(param2.y > param4.y)
         {
            _loc7_ = param2.y - param4.y;
            param3.y += _loc7_;
            param4.y += _loc7_;
            param4.height -= _loc7_;
         }
         if(param2.right < param4.right)
         {
            _loc7_ = param4.right - param2.right;
            param4.width -= _loc7_;
         }
         if(param2.bottom < param4.bottom)
         {
            _loc7_ = param4.bottom - param2.bottom;
            param4.height -= _loc7_;
         }
         return _loc6_ && param4.width > 0 && param4.height > 0;
      }
      
      public function getDrawBufferForRenderable(param1:IWindow) : BitmapData
      {
         var _loc2_:WindowRendererItem = var_298[param1] as WindowRendererItem;
         return _loc2_ != null ? _loc2_.buffer : null;
      }
      
      public function update(param1:uint) : void
      {
         render();
         flushRenderQueue();
      }
      
      public function get debug() : Boolean
      {
         return var_867;
      }
      
      public function render() : void
      {
         var _loc1_:* = null;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc2_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            _loc1_ = var_561.pop() as WindowController;
            if(!_loc1_.disposed)
            {
               _loc3_ = getWindowRendererItem(_loc1_);
               var_297.x = _loc3_.dirty.x;
               var_297.y = _loc3_.dirty.y;
               var_297.width = _loc3_.dirty.width;
               var_297.height = _loc3_.dirty.height;
               renderWindowBranch(_loc1_,_loc3_,var_297);
            }
            _loc4_++;
         }
      }
      
      public function removeRenderable(param1:IWindow) : void
      {
         param1.removeEventListener(WindowDisposeEvent.const_515,windowDisposedCallback);
         var _loc2_:WindowRendererItem = var_298[param1] as WindowRendererItem;
         if(_loc2_ != null)
         {
            _loc2_.dispose();
            delete var_298[param1];
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         if(!_disposed)
         {
            _disposed = true;
            var_561 = null;
            for(_loc1_ in var_298)
            {
               delete var_298[_loc1_];
            }
            var_298 = null;
            _drawBufferAllocator.dispose();
            _drawBufferAllocator = null;
         }
      }
      
      public function get allocatedByteCount() : uint
      {
         return _drawBufferAllocator.allocatedByteCount;
      }
      
      private function windowDisposedCallback(param1:WindowDisposeEvent) : void
      {
         removeRenderable(param1.window);
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function set debug(param1:Boolean) : void
      {
         var_867 = param1;
      }
      
      private function renderWindowBranch(param1:WindowController, param2:WindowRendererItem, param3:Rectangle) : void
      {
         var _loc4_:* = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:int = 0;
         if(param1.visible)
         {
            if(getDrawLocationAndClipRegion(param1,param3,var_1470,var_1471))
            {
               if(param2.render(param1,var_1470,var_1471))
               {
                  _loc4_ = uint(param1.numChildren);
                  _loc7_ = 0;
                  while(_loc7_ < _loc4_)
                  {
                     _loc5_ = param1.getChildAt(_loc7_) as WindowController;
                     _loc6_ = _loc5_.rectangle;
                     if(_loc6_.intersects(param3))
                     {
                        if(_loc5_.testParamFlag(WindowParam.const_33))
                        {
                           param3.offset(-_loc6_.x,-_loc6_.y);
                           renderWindowBranch(_loc5_,getWindowRendererItem(_loc5_),param3);
                           param3.offset(_loc6_.x,_loc6_.y);
                        }
                     }
                     _loc7_++;
                  }
               }
            }
         }
      }
      
      public function registerRenderable(param1:IWindow) : void
      {
         var _loc2_:WindowRendererItem = var_298[param1] as WindowRendererItem;
         if(_loc2_ == null)
         {
            _loc2_ = new WindowRendererItem(this,_drawBufferAllocator,var_667);
            var_298[param1] = _loc2_;
            param1.addEventListener(WindowDisposeEvent.const_515,windowDisposedCallback);
         }
      }
      
      public function invalidate(param1:IWindowContext, param2:Rectangle) : void
      {
         var _loc5_:* = null;
         var _loc3_:IDesktopWindow = param1.getDesktopWindow();
         var _loc4_:uint = _loc3_.numChildren;
         while(_loc4_-- > 0)
         {
            _loc5_ = _loc3_.getChildAt(_loc4_) as WindowController;
            addToRenderQueue(_loc5_,_loc5_.rectangle,WindowRedrawFlag.const_71);
         }
      }
      
      protected function getWindowRendererItem(param1:IWindow) : WindowRendererItem
      {
         var _loc2_:WindowRendererItem = var_298[param1] as WindowRendererItem;
         if(_loc2_ == null)
         {
            registerRenderable(param1);
            _loc2_ = var_298[param1];
         }
         return _loc2_;
      }
      
      public function flushRenderQueue() : void
      {
         while(var_561.pop() != null)
         {
         }
      }
      
      public function addToRenderQueue(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(getWindowRendererItem(param1).invalidate(param1,param2,param3))
         {
            _loc5_ = param1.context.getDesktopWindow();
            var_297.x = param2.x - param1.x;
            var_297.y = param2.y - param1.y;
            var_297.width = param2.width;
            var_297.height = param2.height;
            if(param1.testParamFlag(WindowParam.const_33))
            {
               while(param1.testParamFlag(WindowParam.const_33))
               {
                  _loc4_ = param1.parent as WindowController;
                  if(_loc4_ == null)
                  {
                     return;
                  }
                  if(_loc4_ == _loc5_)
                  {
                     return;
                  }
                  if(_loc4_.visible == false)
                  {
                     return;
                  }
                  var_297.offset(param1.x,param1.y);
                  param1 = _loc4_;
               }
            }
            getWindowRendererItem(param1).invalidate(param1,var_297,WindowRedrawFlag.const_247);
            if(var_561.indexOf(param1) == -1)
            {
               var_561.push(param1);
            }
         }
      }
   }
}
