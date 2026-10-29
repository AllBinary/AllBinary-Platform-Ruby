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

# require "java/io/InputStream"

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
        return defined?(@@classLoader) ? @@classLoader : nil
    end

    def self.classLoader=(value)
        @@classLoader = value
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
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "java/lang/Thread"

class ResourceUtil
    @@classLoader = NullUtil.getInstance().NULL_OBJECT
    @@instance = ResourceUtil.new()
end

