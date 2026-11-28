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


module ::Org; module Allbinary; module DataPackage; module Resource

#J2ME
class ResourceUtil
    attr_accessor :logUtil

    def jfields_org_allbinary_data_resource_ResourceUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_data_resource_ResourceUtil
    end
    

    def setLoadingPaths(path, ext)
        @logUtil.putF(::Org::Allbinary::StringPackage::CommonStrings.getInstance().NOT_IMPLEMENTED, self, "setLoadingPaths")
    end
    

    # throws Exception
    def getResourceAsStream(resource)
        inputStream = resource.class.getResourceAsStream(resource)
        if inputStream == nil
            inputStream = self.getResourceAsStreamAtStart(resource, 2)
            if inputStream == nil
                inputStream = self.getResourceAsStreamAtStart(resource, 1)
                if inputStream == nil
                    stringMaker = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
                                _COLON = ::Org::Allbinary::StringPackage::CommonSeps.getInstance().COLON
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
        stringMaker = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        index = (resource.index(::Org::Allbinary::StringPackage::CommonSeps.getInstance().COLON) || -1)
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

module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    ResourceUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

