package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_122:DisplayObject;
      
      private var var_2191:uint;
      
      private var var_716:IWindowToolTipAgentService;
      
      private var var_717:IWindowMouseScalingService;
      
      private var var_370:IWindowContext;
      
      private var var_719:IWindowFocusManagerService;
      
      private var var_718:IWindowMouseListenerService;
      
      private var var_720:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2191 = 0;
         var_122 = param2;
         var_370 = param1;
         var_720 = new WindowMouseDragger(param2);
         var_717 = new WindowMouseScaler(param2);
         var_718 = new WindowMouseListener(param2);
         var_719 = new FocusManager(param2);
         var_716 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_717;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_719;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_716;
      }
      
      public function dispose() : void
      {
         if(var_720 != null)
         {
            var_720.dispose();
            var_720 = null;
         }
         if(var_717 != null)
         {
            var_717.dispose();
            var_717 = null;
         }
         if(var_718 != null)
         {
            var_718.dispose();
            var_718 = null;
         }
         if(var_719 != null)
         {
            var_719.dispose();
            var_719 = null;
         }
         if(var_716 != null)
         {
            var_716.dispose();
            var_716 = null;
         }
         var_370 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_718;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_720;
      }
   }
}
