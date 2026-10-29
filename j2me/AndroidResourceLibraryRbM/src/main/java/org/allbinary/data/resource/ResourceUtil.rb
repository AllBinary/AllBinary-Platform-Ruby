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

#Android
class ResourceUtil
    attr_accessor :logUtil, :context, :resources, :hashMap

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @context = NullUtil.getInstance().NULL_OBJECT
        @resources = NullUtil.getInstance().NULL_OBJECT
        @hashMap = StdUtil.getInstance().createHashtable()
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
    

    def getContext()
        return @context
    end
    

    def setContextFromActivity(activity)
        @context = activity
    end
    

    def setContext(aContext)
        @context = aContext
    end
    

    def getResourceId(resource)
        value = @hashMap.get(resource)
        if DebugFactory.getInstance() != NoDebug.getInstance()
            PreLogUtil.put(StringMaker.new().append(resource).append(CommonSeps.getInstance().COLON).append(value.to_s).to_s, self, "getResourceId")
        end
        return value
    end
    

    def addResource(resource, value)
        if DebugFactory.getInstance() != NoDebug.getInstance()
            PreLogUtil.put(StringMaker.new().append(resource).append(CommonSeps.getInstance().COLON).append(value.to_s).to_s, self, "addResource")
            if self.containsDuplicate(resource, value)
                ForcedLogUtil.log(StringMaker.new().append("Found Duplicate Resource: ").append(resource).to_s, self)
            end
        end
        @hashMap.put(resource, value)
    end
    

    def containsDuplicate(resource, value)
        objectArray = HashtableUtil.getInstance().getKeysAsArray(@hashMap)
        index = objectArray.length
        while (index -= 1) >= 0
            integer = @hashMap.get(objectArray[index])
            if resource != objectArray[index]
                if value != integer
                    if value.to_i == integer.to_i
                        return true
                    end
                end
            end
        end
        return false
    end
    

    def setResources(resources)
        @logUtil.putF(StringMaker.new().append("Resource Loader: ").append(resources.class.name).to_s, self, "setResources")
        @resources = resources
    end
    

    # throws Exception
    def getResourceAsStream(resource)
        integer = @hashMap.get(resource)
        id = integer.to_i
        resources = (@resources)
        inputStream = resources.openRawResource(id)
        if inputStream != nil
            return inputStream
        end
        return inputStream
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "android/app/Activity"
require "android/content/Context"
require "android/content/res/Resources"
require "org/allbinary/debug/DebugFactory"
require "org/allbinary/debug/NoDebug"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/HashtableUtil"

class ResourceUtil
    @@instance = ResourceUtil.new()
end

