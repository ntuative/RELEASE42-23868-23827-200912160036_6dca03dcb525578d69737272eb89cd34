package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LagWarningReportMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LagWarningLogger
   {
      
      public static const const_930:int = 0;
      
      public static const WARNING_TYPE_CHAT_DELAY:int = 1;
       
      
      private var var_1157:Boolean = true;
      
      private var var_1132:int = 0;
      
      private var var_757:int = 0;
      
      private var var_1127:int = 0;
      
      private var var_756:int = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_1131:int = 15;
      
      private var var_173:IHabboConfigurationManager;
      
      private var _connection:IConnection;
      
      private var var_1133:int = 60;
      
      public function LagWarningLogger()
      {
         super();
         var_1127 = getTimer();
      }
      
      public function logWarnings() : void
      {
         if(!var_1157)
         {
            return;
         }
         if(nothingToReport)
         {
            return;
         }
         var _loc1_:LagWarningReportMessageComposer = new LagWarningReportMessageComposer(var_757,var_756);
         if(_connection != null)
         {
            _connection.send(_loc1_);
         }
         resetLog();
         ++var_1132;
      }
      
      private function get nothingToReport() : Boolean
      {
         return var_757 == 0 && var_756 == 0;
      }
      
      private function resetLog() : void
      {
         var_757 = 0;
         var_756 = 0;
      }
      
      public function update(param1:uint) : void
      {
         if(!var_1157)
         {
            return;
         }
         if(getTimer() - var_1127 > var_1133 * 1000 && var_1132 < var_1131)
         {
            var_1127 = getTimer();
            logWarnings();
         }
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_173 = param1;
         var_1133 = int(var_173.getKey("lagwarninglog.interval","60"));
         var_1131 = int(var_173.getKey("lagwarninglog.reportlimit","15"));
         var_1157 = Boolean(int(var_173.getKey("lagwarninglog.enabled","1")));
      }
      
      public function registerWarning(param1:int) : void
      {
         switch(param1)
         {
            case WARNING_TYPE_CHAT_DELAY:
               var_756 += 1;
            case const_930:
               var_757 += 1;
         }
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         _communication = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
