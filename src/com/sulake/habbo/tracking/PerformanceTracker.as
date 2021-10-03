package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1381:GarbageMonitor = null;
      
      private var var_1127:int = 0;
      
      private var var_1146:Boolean = false;
      
      private var var_1752:String = "";
      
      private var var_1382:String = "";
      
      private var var_331:Number = 0;
      
      private var var_1131:int = 10;
      
      private var var_2197:Array;
      
      private var var_586:int = 0;
      
      private var var_1133:int = 60;
      
      private var var_932:int = 0;
      
      private var var_933:int = 0;
      
      private var var_1788:String = "";
      
      private var var_1755:Number = 0;
      
      private var var_1134:int = 1000;
      
      private var var_1754:Boolean = true;
      
      private var var_1753:Number = 0.15;
      
      private var var_173:IHabboConfigurationManager = null;
      
      private var var_1756:String = "";
      
      private var var_1132:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2197 = [];
         super();
         var_1382 = Capabilities.version;
         var_1752 = Capabilities.os;
         var_1146 = Capabilities.isDebugger;
         var_1756 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1381 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1127 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1381.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1381.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_331;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1133 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1382;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_933;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1134)
         {
            ++var_932;
            _loc3_ = true;
         }
         else
         {
            ++var_586;
            if(var_586 <= 1)
            {
               var_331 = param1;
            }
            else
            {
               _loc4_ = Number(var_586);
               var_331 = var_331 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1127 > var_1133 * 1000 && var_1132 < var_1131)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_331);
            _loc5_ = true;
            if(var_1754 && var_1132 > 0)
            {
               _loc6_ = differenceInPercents(var_1755,var_331);
               if(_loc6_ < var_1753)
               {
                  _loc5_ = false;
               }
            }
            var_1127 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_1755 = var_331;
               if(sendReport())
               {
                  ++var_1132;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1131 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1134 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1756,var_1382,var_1752,var_1788,var_1146,_loc4_,_loc3_,var_933,var_331,var_932);
            _connection.send(_loc1_);
            var_933 = 0;
            var_331 = 0;
            var_586 = 0;
            var_932 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_173 = param1;
         var_1133 = int(var_173.getKey("performancetest.interval","60"));
         var_1134 = int(var_173.getKey("performancetest.slowupdatelimit","1000"));
         var_1131 = int(var_173.getKey("performancetest.reportlimit","10"));
         var_1753 = Number(var_173.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_1754 = Boolean(int(var_173.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
