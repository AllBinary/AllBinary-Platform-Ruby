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

require "java/lang/JavaClass"

module ::Org; module Allbinary; module DataPackage; module Resource

#Android
class ResourceUtil
    attr_accessor :logUtil, :context, :resources, :hashMap

    def jfields_org_allbinary_data_resource_ResourceUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @context = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
        @resources = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
        @hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
    end
    

    def self.getInstance()
        return ResourceUtil.instance
    end
    

    def initialize()
        jfields_org_allbinary_data_resource_ResourceUtil
    end
    

    def setLoadingPaths(path, ext)
        @logUtil.putF(::Org::Allbinary::StringPackage::CommonStrings.getInstance().NOT_IMPLEMENTED, self, "setLoadingPaths")
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
        if ::Org::Allbinary::Debug::DebugFactory.getInstance() != ::Org::Allbinary::Debug::NoDebug.getInstance()
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(resource).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().COLON).append(value.to_s).to_s, self, "getResourceId")
        end
        return value
    end
    

    def addResource(resource, value)
        if ::Org::Allbinary::Debug::DebugFactory.getInstance() != ::Org::Allbinary::Debug::NoDebug.getInstance()
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(resource).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().COLON).append(value.to_s).to_s, self, "addResource")
            if self.containsDuplicate(resource, value)
                ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Found Duplicate Resource: ").append(resource).to_s, self)
            end
        end
        @hashMap.put(resource, value)
    end
    

    def containsDuplicate(resource, value)
        objectArray = ::Org::Allbinary::Util::HashtableUtil.getInstance().getKeysAsArray(@hashMap)
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
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Resource Loader: ").append(resources.class.java_name).to_s, self, "setResources")
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
module ::Android; module App; autoload :Activity, "android/app/Activity" unless const_defined?(:Activity, false); end; end
module ::Android; module Content; autoload :Context, "android/content/Context" unless const_defined?(:Context, false); end; end
module ::Android; module Content; module Res; autoload :Resources, "android/content/res/Resources" unless const_defined?(:Resources, false); end; end; end
module ::Org; module Allbinary; module Debug; autoload :DebugFactory, "org/allbinary/debug/DebugFactory" unless const_defined?(:DebugFactory, false); end; end; end
module ::Org; module Allbinary; module Debug; autoload :NoDebug, "org/allbinary/debug/NoDebug" unless const_defined?(:NoDebug, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :HashtableUtil, "org/allbinary/util/HashtableUtil" unless const_defined?(:HashtableUtil, false); end; end; end

begin
    ResourceUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

