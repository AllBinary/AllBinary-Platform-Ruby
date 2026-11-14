#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
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
# package org.allbinary.logic.io


class StreamUtil
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return StreamUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def get(inputStream, outputStream, buffer)
        len = 0
        while true
            len = inputStream.read(buffer, 0, buffer.length)
            if len != -1
            else
                break
            end
            outputStream.write(buffer, 0, len)
        end
        return outputStream
    end
    

    # throws Exception
    def getByteArray(inputStream, outputStream2, byteArray)
        outputStream = outputStream2
        begin
            self.get(inputStream, outputStream, byteArray)
            return outputStream.toByteArray()
        rescue StandardError => e
            raise e
        ensure
            self.close(outputStream)
        end
    end
    

    def close(closeable)
        begin
            if closeable != nil
                closeable.close()
            end
            return true
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.CLOSE, e)
            return false
        end
    end

    def self.instance()
        StreamUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        StreamUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = StreamUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "StreamUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :ByteArrayOutputStream, "java/io/ByteArrayOutputStream"
autoload :Closeable, "java/io/Closeable"
autoload :InputStream, "java/io/InputStream"
autoload :OutputStream, "java/io/OutputStream"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    StreamUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

