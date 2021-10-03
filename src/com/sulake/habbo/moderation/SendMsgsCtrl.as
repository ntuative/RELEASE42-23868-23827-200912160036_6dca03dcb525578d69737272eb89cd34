package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModMessageMessageComposer;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class SendMsgsCtrl implements IDisposable, TrackedWindow
   {
       
      
      private var var_1109:String;
      
      private var _disposed:Boolean;
      
      private var var_1363:String;
      
      private var var_1110:int;
      
      private var var_56:ModerationManager;
      
      private var var_744:IDropMenuWindow;
      
      private var var_369:ITextFieldWindow;
      
      private var var_58:IFrameWindow;
      
      private var var_292:Boolean = true;
      
      public function SendMsgsCtrl(param1:ModerationManager, param2:int, param3:String, param4:String)
      {
         super();
         var_56 = param1;
         var_1110 = param2;
         var_1363 = param3;
         var_1109 = param4;
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
         var_369.text = "";
         var_292 = false;
      }
      
      public function getFrame() : IFrameWindow
      {
         return var_58;
      }
      
      public function getId() : String
      {
         return var_1363;
      }
      
      private function onSendMessageButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Sending message...");
         if(var_292 || false)
         {
            var_56.windowManager.alert("Alert","You must input a message to the user",0,onAlertClose);
            return;
         }
         var_56.connection.send(new ModMessageMessageComposer(var_1110,var_369.text,var_1109));
         this.dispose();
      }
      
      public function show() : void
      {
         var_58 = IFrameWindow(var_56.getXmlWindow("send_msgs"));
         var_58.caption = "Msg To: " + var_1363;
         var_58.findChildByName("send_message_but").procedure = onSendMessageButton;
         var_369 = ITextFieldWindow(var_58.findChildByName("message_input"));
         var_369.procedure = onInputClick;
         var_744 = IDropMenuWindow(var_58.findChildByName("msgTemplatesSelect"));
         prepareMsgSelect(var_744);
         var_744.procedure = onSelectTemplate;
         var _loc1_:IWindow = var_58.findChildByTag("close");
         _loc1_.procedure = onClose;
         var_58.visible = true;
      }
      
      private function prepareMsgSelect(param1:IDropMenuWindow) : void
      {
         Logger.log("MSG TEMPLATES: " + var_56.initMsg.messageTemplates.length);
         param1.populate(var_56.initMsg.messageTemplates);
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_58 != null)
         {
            var_58.destroy();
            var_58 = null;
         }
         var_744 = null;
         var_369 = null;
         var_56 = null;
      }
      
      private function onSelectTemplate(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_52)
         {
            return;
         }
         var _loc3_:String = var_56.initMsg.messageTemplates["null"];
         if(_loc3_ != null)
         {
            var_292 = false;
            var_369.text = _loc3_;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         dispose();
      }
      
      private function onAlertClose(param1:IAlertDialog, param2:Event) : void
      {
         param1.dispose();
      }
      
      public function getType() : int
      {
         return WindowTracker.const_1348;
      }
   }
}
