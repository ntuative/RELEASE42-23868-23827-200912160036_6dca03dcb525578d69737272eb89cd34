package deng.fzip
{
   import deng.utils.ChecksumUtil;
   import flash.utils.*;
   
   public class FZipFile
   {
      
      public static const const_652:int = 8;
      
      public static const const_1486:int = 10;
      
      public static const const_1251:int = 6;
      
      private static var var_1020:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").hasComplexContent();
      
      public static const const_1153:int = 0;
      
      public static const const_1437:int = 1;
      
      public static const const_1410:int = 2;
      
      public static const const_1417:int = 3;
      
      public static const const_1509:int = 4;
      
      public static const const_1401:int = 5;
      
      public static const const_1564:int = 9;
      
      public static const const_1409:int = 7;
       
      
      private var var_179:uint = 0;
      
      private var var_1019:uint = 0;
      
      private var var_690:Date;
      
      private var var_2118:int = -1;
      
      private var parseFunc:Function;
      
      private var var_484:Boolean = false;
      
      private var var_2240:int = -1;
      
      private var var_1275:uint = 0;
      
      private var var_2120:String = "";
      
      private var _extraFields:Dictionary;
      
      private var var_853:uint;
      
      private var var_34:ByteArray;
      
      private var var_689:uint;
      
      private var var_1505:Boolean = false;
      
      private var var_2239:int = -1;
      
      private var var_1507:String = "2.0";
      
      private var var_178:Boolean = false;
      
      private var var_2119:Boolean = false;
      
      private var var_348:String;
      
      private var var_574:uint = 0;
      
      private var var_1276:int = 0;
      
      private var var_410:String = "";
      
      private var var_691:int = 8;
      
      private var var_1506:Boolean = false;
      
      public function FZipFile(param1:String = "utf-8")
      {
         parseFunc = parseFileHead;
         super();
         var_348 = param1;
         _extraFields = new Dictionary();
         var_34 = new ByteArray();
         var_34.endian = Endian.BIG_ENDIAN;
      }
      
      public function get sizeUncompressed() : uint
      {
         return var_574;
      }
      
      public function set filename(param1:String) : void
      {
         var_410 = param1;
      }
      
      protected function uncompress() : void
      {
         if(var_178 && false)
         {
            var_34.position = 0;
            if(var_1020)
            {
               var_34.uncompress.apply(var_34,["deflate"]);
            }
            else
            {
               var_34.uncompress();
            }
            var_34.position = 0;
            var_178 = false;
         }
      }
      
      public function get filename() : String
      {
         return var_410;
      }
      
      public function get date() : Date
      {
         return var_690;
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         while(param1.bytesAvailable && parseFunc(param1))
         {
         }
         return parseFunc === parseFileIdle;
      }
      
      private function parseFileContent(param1:IDataInput) : Boolean
      {
         if(var_1506)
         {
            parseFunc = parseFileIdle;
            throw new Error("Data descriptors are not supported.");
         }
         if(var_179 == 0)
         {
            parseFunc = parseFileIdle;
         }
         else
         {
            if(param1.bytesAvailable < var_179)
            {
               return false;
            }
            parseContent(param1);
            parseFunc = parseFileIdle;
         }
         return true;
      }
      
      public function get versionNumber() : String
      {
         return var_1507;
      }
      
      public function getContentAsString(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:* = null;
         if(var_178)
         {
            uncompress();
         }
         var_34.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = var_34.readUTFBytes(var_34.bytesAvailable);
         }
         else
         {
            _loc3_ = var_34.readMultiByte(var_34.bytesAvailable,param2);
         }
         var_34.position = 0;
         if(param1)
         {
            compress();
         }
         return _loc3_;
      }
      
      private function parseFileIdle(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function parseContent(param1:IDataInput) : void
      {
         var _loc2_:* = 0;
         if(var_691 === const_652 && !var_1505)
         {
            if(var_1020)
            {
               param1.readBytes(var_34,0,var_179);
            }
            else
            {
               if(!var_484)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               var_34.writeByte(120);
               _loc2_ = uint(~var_2118 << 6 & 192);
               _loc2_ += 31 - (30720 | _loc2_) % 31;
               var_34.writeByte(_loc2_);
               param1.readBytes(var_34,2,var_179);
               var_34.position = var_34.length;
               var_34.writeUnsignedInt(var_853);
            }
            var_178 = true;
         }
         else
         {
            if(var_691 != const_1153)
            {
               throw new Error("Compression method " + var_691 + " is not supported.");
            }
            param1.readBytes(var_34,0,var_179);
            var_178 = false;
         }
         var_34.position = 0;
      }
      
      private function parseFileHead(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            parseHead(param1);
            if(var_1019 + var_1275 > 0)
            {
               parseFunc = parseFileHeadExt;
            }
            else
            {
               parseFunc = parseFileContent;
            }
            return true;
         }
         return false;
      }
      
      public function setContentAsString(param1:String, param2:String = "utf-8") : void
      {
         var_34.length = 0;
         var_34.position = 0;
         var_178 = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               var_34.writeUTFBytes(param1);
            }
            else
            {
               var_34.writeMultiByte(param1,param2);
            }
            var_689 = ChecksumUtil.CRC32(var_34);
            var_484 = false;
         }
         compress();
      }
      
      public function set date(param1:Date) : void
      {
         var_690 = param1 != null ? param1 : new Date();
      }
      
      public function serialize(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc10_:* = null;
         var _loc15_:* = null;
         var _loc16_:Boolean = false;
         if(param1 == null)
         {
            return 0;
         }
         if(param3)
         {
            param1.writeUnsignedInt(33639248);
            param1.writeShort(var_1276 << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(67324752);
         }
         param1.writeShort(var_1276 << 8 | 20);
         param1.writeShort(var_348 == "utf-8" ? 2048 : 0);
         param1.writeShort(const_652);
         var _loc5_:Date = var_690 != null ? var_690 : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(var_689);
         param1.writeUnsignedInt(var_179);
         param1.writeUnsignedInt(var_574);
         var _loc8_:ByteArray = new ByteArray();
         _loc8_.endian = Endian.LITTLE_ENDIAN;
         if(var_348 == "utf-8")
         {
            _loc8_.writeUTFBytes(var_410);
         }
         else
         {
            _loc8_.writeMultiByte(var_410,var_348);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in _extraFields)
         {
            _loc15_ = _extraFields[_loc10_] as ByteArray;
            if(_loc15_ != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!var_484)
            {
               _loc16_ = var_178;
               if(_loc16_)
               {
                  uncompress();
               }
               var_853 = ChecksumUtil.Adler32(var_34,0,var_34.length);
               var_484 = true;
               if(_loc16_)
               {
                  compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(var_853);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && false)
         {
            if(var_348 == "utf-8")
            {
               _loc8_.writeUTFBytes(var_2120);
            }
            else
            {
               _loc8_.writeMultiByte(var_2120,var_348);
            }
         }
         var _loc12_:uint = _loc8_.position - _loc9_ - _loc11_;
         param1.writeShort(_loc9_);
         param1.writeShort(_loc11_);
         if(param3)
         {
            param1.writeShort(_loc12_);
            param1.writeShort(0);
            param1.writeShort(0);
            param1.writeUnsignedInt(0);
            param1.writeUnsignedInt(param4);
         }
         if(_loc9_ + _loc11_ + _loc12_ > 0)
         {
            param1.writeBytes(_loc8_);
         }
         var _loc13_:int = 0;
         if(!param3 && var_179 > 0)
         {
            if(var_1020)
            {
               _loc13_ = 0;
               param1.writeBytes(var_34,0,_loc13_);
            }
            else
            {
               _loc13_ = 4294967290;
               param1.writeBytes(var_34,2,_loc13_);
            }
         }
         var _loc14_:uint = 30 + _loc9_ + _loc11_ + _loc12_ + _loc13_;
         if(param3)
         {
            _loc14_ += 16;
         }
         return _loc14_;
      }
      
      public function get sizeCompressed() : uint
      {
         return var_179;
      }
      
      protected function compress() : void
      {
         if(!var_178)
         {
            if(false)
            {
               var_34.position = 0;
               var_574 = var_34.length;
               if(var_1020)
               {
                  var_34.compress.apply(var_34,["deflate"]);
                  var_179 = var_34.length;
               }
               else
               {
                  var_34.compress();
                  var_179 = -6;
               }
               var_34.position = 0;
               var_178 = true;
            }
            else
            {
               var_179 = 0;
               var_574 = 0;
            }
         }
      }
      
      private function parseFileHeadExt(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= var_1019 + var_1275)
         {
            parseHeadExt(param1);
            parseFunc = parseFileContent;
            return true;
         }
         return false;
      }
      
      protected function parseHeadExt(param1:IDataInput) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         if(var_348 == "utf-8")
         {
            var_410 = param1.readUTFBytes(var_1019);
         }
         else
         {
            var_410 = param1.readMultiByte(var_1019,var_348);
         }
         var _loc2_:uint = var_1275;
         while(_loc2_ > 4)
         {
            _loc3_ = uint(param1.readUnsignedShort());
            _loc4_ = uint(param1.readUnsignedShort());
            if(_loc4_ > _loc2_)
            {
               throw new Error("Parse error in file " + var_410 + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               var_853 = param1.readUnsignedInt();
               var_484 = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               _extraFields[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      protected function parseHead(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         var_1276 = _loc2_ >> 8;
         var_1507 = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         var_691 = param1.readUnsignedShort();
         var_1505 = (_loc3_ & 1) !== 0;
         var_1506 = (_loc3_ & 8) !== 0;
         var_2119 = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            var_348 = "utf-8";
         }
         if(var_691 === const_1251)
         {
            var_2239 = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            var_2240 = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(var_691 === const_652)
         {
            var_2118 = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         var_690 = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         var_689 = param1.readUnsignedInt();
         var_179 = param1.readUnsignedInt();
         var_574 = param1.readUnsignedInt();
         var_1019 = param1.readUnsignedShort();
         var_1275 = param1.readUnsignedShort();
      }
      
      public function set content(param1:ByteArray) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(var_34,0,param1.length);
            var_689 = ChecksumUtil.CRC32(var_34);
            var_484 = false;
         }
         else
         {
            var_34.length = 0;
            var_34.position = 0;
            var_178 = false;
         }
         compress();
      }
      
      public function toString() : String
      {
         return "[FZipFile]\n  name:" + var_410 + "\n  date:" + var_690 + "\n  sizeCompressed:" + var_179 + "\n  sizeUncompressed:" + var_574 + "\n  versionHost:" + var_1276 + "\n  versionNumber:" + var_1507 + "\n  compressionMethod:" + var_691 + "\n  encrypted:" + var_1505 + "\n  hasDataDescriptor:" + var_1506 + "\n  hasCompressedPatchedData:" + var_2119 + "\n  filenameEncoding:" + var_348 + "\n  crc32:" + var_689.toString(16) + "\n  adler32:" + var_853.toString(16);
      }
      
      public function get content() : ByteArray
      {
         if(var_178)
         {
            uncompress();
         }
         return var_34;
      }
   }
}
