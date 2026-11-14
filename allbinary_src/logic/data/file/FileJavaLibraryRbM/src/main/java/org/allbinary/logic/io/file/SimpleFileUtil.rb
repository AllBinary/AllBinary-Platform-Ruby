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


class SimpleFileUtil
    attr_accessor :logUtil, :NULL_WRITER, :NULL_READER, :commonStrings, :nullUtil, :streamUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @NULL_WRITER = SimpleFileUtil.nullWriter()
        @NULL_READER = SimpleFileUtil.nullReader()
        @commonStrings = CommonStrings.getInstance()
        @nullUtil = NullUtil.getInstance()
        @streamUtil = StreamUtil.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return SimpleFileUtil.instance
    end
    

    def self.nullOutputStream()
        return NullOutputStream::NULL_OUTPUT_STREAM
    end
    

    def self.nullWriter()
        return NullWriter::NULL_WRITER
    end
    

    def self.nullReader()
        return NullReader::NULL_READER
    end
    

    def loadFileAsList(inputStream, max, byteArray1)
        return self.loadFileAsListReturnLine(inputStream, max, byteArray1, 0)
    end
    

    def loadFileAsListReturnLine(inputStream, max, byteArray1, includeReturnLine)
        stringList = BasicArrayListD.new()
        if inputStream == nil
            return stringList
        end
        byteArray = @nullUtil.NULL_BYTE_ARRAY
        begin
            outputStream2 = ByteArrayOutputStream.new(max)
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
        stringMaker = StringMaker.new()
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

autoload :ByteArrayOutputStream, "java/io/ByteArrayOutputStream"
autoload :InputStream, "java/io/InputStream"
autoload :OutputStream, "java/io/OutputStream"
autoload :Reader, "java/io/Reader"
autoload :Writer, "java/io/Writer"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :NullOutputStream, "org/allbinary/logic/io/NullOutputStream"
autoload :NullReader, "org/allbinary/logic/io/NullReader"
autoload :NullWriter, "org/allbinary/logic/io/NullWriter"
autoload :StreamUtil, "org/allbinary/logic/io/StreamUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"

begin
    SimpleFileUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

