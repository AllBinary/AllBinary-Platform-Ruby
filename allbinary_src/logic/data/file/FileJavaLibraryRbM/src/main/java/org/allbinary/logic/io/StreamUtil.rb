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

# require "java/io/ByteArrayOutputStream"
# require "java/io/InputStream"
# require "java/io/OutputStream"

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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "java/io/Closeable"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"

class StreamUtil
    @@instance = StreamUtil.new()
end

