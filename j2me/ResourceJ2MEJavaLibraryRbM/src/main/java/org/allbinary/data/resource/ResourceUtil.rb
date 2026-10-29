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

#J2ME
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
    

    # throws Exception
    def getResourceAsStream(resource)
        inputStream = resource.class.getResourceAsStream(resource)
        if inputStream == nil
            inputStream = self.getResourceAsStreamAtStart(resource, 2)
            if inputStream == nil
                inputStream = self.getResourceAsStreamAtStart(resource, 1)
                if inputStream == nil
                    stringMaker = StringMaker.new()
                    index = (resource.rindex("/") || -1)
                    resourcePath = resource[index + 1..]
                    inputStream = resource.class.getResourceAsStream(resourcePath)
                    if inputStream == nil
                        resourcePath = resource[index..]
                        inputStream = resource.class.getResourceAsStream(resourcePath)
                        if inputStream == nil
                            _RES = "res"
                            resourcePath = stringMaker.append(_RES).append(resource[index..]).to_s
                            inputStream = resource.class.getResourceAsStream(resourcePath)
                            if inputStream == nil
                                stringMaker.delete(0, stringMaker.length())
                                resourcePath = stringMaker.append("/").append(_RES).append(resource[index..]).to_s
                                inputStream = resource.class.getResourceAsStream(resourcePath)
                                _COLON = CommonSeps.getInstance().COLON
                                if inputStream == nil
                                    stringMaker.delete(0, stringMaker.length())
                                    resourcePath = stringMaker.append(_RES).append(_COLON).append(resource[index..]).to_s
                                    inputStream = resource.class.getResourceAsStream(resourcePath)
                                    if inputStream == nil
                                        stringMaker.delete(0, stringMaker.length())
                                        resourcePath = stringMaker.append(_RES).append(_COLON).append(resource[index + 1..]).to_s
                                        inputStream = resource.class.getResourceAsStream(resourcePath)
                                        if inputStream == nil
                                            _RESOURCE_STRING = "resource"
                                            stringMaker.delete(0, stringMaker.length())
                                            resourcePath = stringMaker.append(_RESOURCE_STRING).append(_COLON).append(resource[index..]).to_s
                                            inputStream = resource.class.getResourceAsStream(resourcePath)
                                            if inputStream == nil
                                                stringMaker.delete(0, stringMaker.length())
                                                resourcePath = stringMaker.append(_RESOURCE_STRING).append(_COLON).append(resource[index + 1..]).to_s
                                                inputStream = resource.class.getResourceAsStream(resourcePath)
                                                if inputStream == nil
                                                    stringMaker.delete(0, stringMaker.length())
                                                    raise StandardError.new(stringMaker.append("Unable to obtain: ").append(resource).to_s)
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        return inputStream
    end
    

    # throws Exception
    def getResourceAsStreamAtStart(resource, startIndex)
        stringMaker = StringMaker.new()
        index = (resource.index(CommonSeps.getInstance().COLON) || -1)
        resourcePath = resource[index + startIndex..]
        inputStream = resource.class.getResourceAsStream(resourcePath)
        if inputStream != nil
            return inputStream
        end
        return inputStream
    end
    

    def addResource(resource, value)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"

class ResourceUtil
    @@instance = ResourceUtil.new()
end

