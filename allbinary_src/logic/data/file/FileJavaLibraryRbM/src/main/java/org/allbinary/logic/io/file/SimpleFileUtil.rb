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

# require "java/io/ByteArrayOutputStream"
# require "java/io/IOException"
# require "java/io/InputStream"
# require "java/io/OutputStream"
# require "java/io/Reader"
# require "java/io/Writer"
# require "java/nio/CharBuffer"

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
        return Class.new(OutputStream.is_a?(Class) ? OutputStream : Object) do
            include(OutputStream) unless OutputStream.is_a?(Class)
            

            # throws IOException
            def write(b)
            end
            

            # throws IOException
            def write(b, off, len)
            end
            

            def close()
            end
        end.new()
    end
    

    def self.nullWriter()
        return Class.new(Writer.is_a?(Class) ? Writer : Object) do
            include(Writer) unless Writer.is_a?(Class)
            @closed = false
            

            # throws IOException
            def append(c)
                return self
            end
            

            # throws IOException
            def append(csq)
                return self
            end
            

            # throws IOException
            def append(csq, start, end_)
                return self
            end
            

            # throws IOException
            def write(c)
            end
            

            # throws IOException
            def write(cbuf, off, len)
            end
            

            # throws IOException
            def write(str)
            end
            

            # throws IOException
            def write(str, off, len)
            end
            

            # throws IOException
            def flush()
            end
            

            # throws IOException
            def close()
            end
        end.new()
    end
    

    def self.nullReader()
        return Class.new(Reader.is_a?(Class) ? Reader : Object) do
            include(Reader) unless Reader.is_a?(Class)
            

            # throws IOException
            def read()
                return -1
            end
            

            # throws IOException
            def read(cbuf, off, len)
                return -1
            end
            

            # throws IOException
            def read(target)
                return -1
            end
            

            # throws IOException
            def ready()
                return false
            end
            

            # throws IOException
            def skip(n)
                return 0
            end
            

            def close()
            end
        end.new()
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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/StreamUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

class SimpleFileUtil
    @@instance = SimpleFileUtil.new()
end

