package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_952:SoundChannel = null;
      
      private var var_787:Boolean;
      
      private var var_953:Sound = null;
      
      private var var_657:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_953 = param1;
         var_953.addEventListener(Event.COMPLETE,onComplete);
         var_657 = 1;
         var_787 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_787;
      }
      
      public function stop() : Boolean
      {
         var_952.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_787 = false;
         var_952 = var_953.play(0);
         this.volume = var_657;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_657;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_952.position;
      }
      
      public function get length() : Number
      {
         return var_953.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_657 = param1;
         if(var_952 != null)
         {
            var_952.soundTransform = new SoundTransform(var_657);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_787 = true;
      }
   }
}
