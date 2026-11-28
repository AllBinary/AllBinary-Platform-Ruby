# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
#  
# By agreeing to this license you and any business entity you represent are 
# legally bound to the AllBinary Open License Version 1 legal agreement. 
#  
# You may obtain the AllBinary Open License Version 1 legal agreement from 
# AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
#  
# Created By: Travis Berthelot 
#   
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.io.file


module ::Org; module Allbinary; module Logic; module Io; module FilePackage

class SimpleFileUtil
    attr_accessor :logUtil, :NULL_WRITER, :NULL_READER, :commonStrings, :nullUtil, :streamUtil

    def jfields_org_allbinary_logic_io_file_SimpleFileUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @NULL_WRITER = SimpleFileUtil.nullWriter()
        @NULL_READER = SimpleFileUtil.nullReader()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @nullUtil = ::Org::Allbinary::Logic::NullUtil.getInstance()
        @streamUtil = ::Org::Allbinary::Logic::Io::StreamUtil.getInstance()
    end

    def initialize
        jfields_org_allbinary_logic_io_file_SimpleFileUtil
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def self.nullOutputStream()
        return ::Org::Allbinary::Logic::Io::NullOutputStream::NULL_OUTPUT_STREAM
    end
    

    def self.nullWriter()
        return ::Org::Allbinary::Logic::Io::NullWriter::NULL_WRITER
    end
    

    def self.nullReader()
        return ::Org::Allbinary::Logic::Io::NullReader::NULL_READER
    end
    

    def loadFileAsList(inputStream, max, byteArray1)
        return self.loadFileAsListReturnLine(inputStream, max, byteArray1, 0)
    end
    

    def loadFileAsListReturnLine(inputStream, max, byteArray1, includeReturnLine)
        stringList = ::Org::Allbinary::Util::BasicArrayListD.new()
        if inputStream == nil
            return stringList
        end
        byteArray = @nullUtil.NULL_BYTE_ARRAY
        begin
            outputStream2 = ::Java::Io::ByteArrayOutputStream.new(max)
            byteArray = @streamUtil.getByteArray(inputStream, outputStream2, byteArray1)
            @streamUtil.close(inputStream)
        rescue StandardError => e
            @streamUtil.close(inputStream)
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.ADD, e)
        end
        if byteArray == nil
            return stringList
        end
        size = byteArray.length
        index = 0
        startIndex = 0
        returnLine = 0
        while index < size
            startIndex = index
            while index < size - 1 && byteArray[index] != ("\n").ord
                index += 1
            end
            if includeReturnLine == 0
                if index > 0 && byteArray[index - 1] == ("\r").ord
                    returnLine = 1
                else
                    returnLine = 0
                end
            end
            s = byteArray, startIndex, (index + includeReturnLine - returnLine - startIndex).pack("c*").force_encoding("UTF-8")
            stringList.add(s)
            index += 1
        end
        return stringList
    end
    

    def createStringFromArrayOfStrings(stringArray)
        stringMaker = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        size = stringArray.length
        (0...size).each do |index|
            stringMaker.append(stringArray[index])
        end
        return stringMaker.to_s
    end

    def self.instance()
        SimpleFileUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        SimpleFileUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = SimpleFileUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SimpleFileUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Io; autoload :ByteArrayOutputStream, "java/io/ByteArrayOutputStream" unless const_defined?(:ByteArrayOutputStream, false); end; end
module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Java; module Io; autoload :OutputStream, "java/io/OutputStream" unless const_defined?(:OutputStream, false); end; end
module ::Java; module Io; autoload :Reader, "java/io/Reader" unless const_defined?(:Reader, false); end; end
module ::Java; module Io; autoload :Writer, "java/io/Writer" unless const_defined?(:Writer, false); end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :NullOutputStream, "org/allbinary/logic/io/NullOutputStream" unless const_defined?(:NullOutputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :NullReader, "org/allbinary/logic/io/NullReader" unless const_defined?(:NullReader, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :NullWriter, "org/allbinary/logic/io/NullWriter" unless const_defined?(:NullWriter, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :StreamUtil, "org/allbinary/logic/io/StreamUtil" unless const_defined?(:StreamUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

begin
    SimpleFileUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

