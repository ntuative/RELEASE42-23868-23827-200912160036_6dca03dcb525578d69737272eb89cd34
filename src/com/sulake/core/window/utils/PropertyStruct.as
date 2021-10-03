package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_698:String = "Rectangle";
      
      public static const const_57:String = "Boolean";
      
      public static const const_514:String = "Number";
      
      public static const const_85:String = "int";
      
      public static const const_191:String = "String";
      
      public static const const_599:String = "Point";
      
      public static const const_870:String = "Array";
      
      public static const const_1210:String = "uint";
      
      public static const const_408:String = "hex";
      
      public static const const_915:String = "Map";
       
      
      private var var_571:String;
      
      private var var_177:Object;
      
      private var var_2238:Boolean;
      
      private var _type:String;
      
      private var var_2089:Boolean;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean)
      {
         super();
         var_571 = param1;
         var_177 = param2;
         _type = param3;
         var_2089 = param4;
         var_2238 = param3 == const_915 || param3 == const_870 || param3 == const_599 || param3 == const_698;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function toString() : String
      {
         switch(_type)
         {
            case const_408:
               return "0x" + uint(var_177).toString(16);
            case const_57:
               return Boolean(var_177) == true ? "true" : "false";
            case const_599:
               return "Point(" + Point(var_177).x + ", " + Point(var_177).y + ")";
            case const_698:
               return "Rectangle(" + Rectangle(var_177).x + ", " + Rectangle(var_177).y + ", " + Rectangle(var_177).width + ", " + Rectangle(var_177).height + ")";
            default:
               return String(value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(_type)
         {
            case const_915:
               _loc3_ = var_177 as Map;
               _loc1_ = "<var key=\"" + var_571 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_870:
               _loc4_ = var_177 as Array;
               _loc1_ = "<var key=\"" + var_571 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_599:
               _loc5_ = var_177 as Point;
               _loc1_ = "<var key=\"" + var_571 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_85 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_85 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_698:
               _loc6_ = var_177 as Rectangle;
               _loc1_ = "<var key=\"" + var_571 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_85 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_85 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_85 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_85 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_408:
               _loc1_ = "<var key=\"" + var_571 + "\" value=\"" + "0x" + uint(var_177).toString(16) + "\" type=\"" + _type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + var_571 + "\" value=\"" + var_177 + "\" type=\"" + _type + "\" />";
         }
         return _loc1_;
      }
      
      public function get value() : Object
      {
         return var_177;
      }
      
      public function get valid() : Boolean
      {
         return var_2089;
      }
      
      public function get key() : String
      {
         return var_571;
      }
   }
}
