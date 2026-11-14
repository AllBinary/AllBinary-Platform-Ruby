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


#J2SE - J2ME
class ResourceUtil
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return ResourceUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def setLoadingPaths(path, ext)
        @logUtil.putF(CommonStrings.getInstance().NOT_IMPLEMENTED, self, "setLoadingPaths")
    end
    

    def setClassLoader(classLoader)
        @logUtil.putF(StringMaker.new().append("Resource Loader: ").append(classLoader.class.name).to_s, self, "setClassLoader")
        ResourceUtil.classLoader = classLoader
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
        commonSeps = CommonSeps.getInstance()
        index = (resource.index(commonSeps.COLON) || -1)
        resourcePath = resource[index + startIndex..]
        inputStream = resource.class.getResourceAsStream(resourcePath)
        if inputStream != nil
            return inputStream
        end
        classLoader = ResourceUtil.classLoader
        inputStream = classLoader.getResourceAsStream(resourcePath)
        if inputStream != nil
            return inputStream
        end
        inputStream = JavaThread.currentThread().getContextClassLoader().getResourceAsStream(resourcePath)
        if inputStream != nil
            return inputStream
        end
        return inputStream
    end
    

    def addResource(resource, value)
    end

    def self.classLoader()
        ResourceUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@classLoader) ? @@classLoader : nil
    end

    def self.classLoader=(value)
        ResourceUtil.java_static_fields unless @java_static_fields_started
        @@classLoader = value
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
            @@classLoader = NullUtil.getInstance().NULL_OBJECT
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

autoload :InputStream, "java/io/InputStream"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
require "java/lang/Thread"

begin
    ResourceUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

