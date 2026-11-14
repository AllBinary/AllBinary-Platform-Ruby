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
# package org.allbinary.data.resource


#J2SE - PC
class ResourceUtil
    attr_accessor :logUtil, :path, :ext

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @path = StringUtil.getInstance().EMPTY_STRING
        @ext = StringUtil.getInstance().EMPTY_STRING
    end
    

    def self.getInstance()
        return ResourceUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def setLoadingPaths(path, ext)
        @path = path
        @ext = ext
    end
    

    def setClassLoader(classLoader)
    end
    

    # throws Exception
    def getResourceAsStream(resource)
        inputStream = self.getResourceAsStreamAtStart(resource, 2)
        if inputStream == nil
            inputStream = self.getResourceAsStreamAtStart(resource, 1)
            if inputStream == nil
                raise StandardError.new(StringMaker.new().append("Unable to obtain: ").append(resource).to_s)
            end
        end
        return inputStream
    end
    

    # throws Exception
    def getResourceAsStreamAtStart(resource, startIndex)
        inputStream = FileInputStream.new(StringMaker.new().append(@path).append(resource).append(@ext).to_s)
        if inputStream != nil
            byteArray = Array.new(inputStream.available(), 0)
            StreamUtil.getInstance().getByteArray(inputStream, ByteArrayOutputStream.new(), byteArray)
            return ByteArrayInputStream.new(byteArray)
        end
        return inputStream
    end
    

    def addResource(resource, value)
    end

    def self.instance()
        ResourceUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ResourceUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ResourceUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ResourceUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :ByteArrayInputStream, "java/io/ByteArrayInputStream"
autoload :ByteArrayOutputStream, "java/io/ByteArrayOutputStream"
autoload :FileInputStream, "java/io/FileInputStream"
autoload :InputStream, "java/io/InputStream"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StreamUtil, "org/allbinary/logic/io/StreamUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"

begin
    ResourceUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

