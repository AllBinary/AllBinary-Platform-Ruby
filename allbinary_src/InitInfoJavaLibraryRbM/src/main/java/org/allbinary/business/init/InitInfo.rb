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
# package org.allbinary.business.init

require "java/lang/Object"

module ::Org; module Allbinary; module Business; module Init

class InitInfo
    attr_accessor :TESTING, :MAINPATH, :TESTHTMLPATH, :testing, :mainPath, :testHtmlPath, :hasRead

    def jfields_org_allbinary_business_init_InitInfo
        @TESTING = "TESTING"
        @MAINPATH = "MAINPATH"
        @TESTHTMLPATH = "TESTHTMLPATH"
        @testing = nil
        @mainPath = nil
        @testHtmlPath = nil
        @hasRead = false
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_business_init_InitInfo
    end
    

    # throws InitException
    def set_j0()
        java_monitor.synchronize do
        begin
            initInfoEntity = InitInfoEntity.new()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADER)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("created entity", "InitInfo", "set()")
            end
            if !initInfoEntity.is()
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADER)
                    ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("adding", "InitInfo", "set()")
                end
                initInfoEntity.add()
            else
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADER)
                    ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("update", "InitInfo", "set()")
                end
                initInfoEntity.update()
            end
            @hasRead = false
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADERERROR)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE("error", "InitInfo", "set()", e)
            end
        end
        end
    end
    

    def set_j1(hashMap)
        java_monitor.synchronize do
        begin
            @testing = hashMap.get(@TESTING)
            @mainPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(hashMap.get(@MAINPATH), ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
            @testHtmlPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(hashMap.get(@TESTHTMLPATH), ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADERERROR)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE("error", "InitInfo", "set()", e)
            end
        end
        end
    end

    def set(*java_overload_args)
        return set_j0(*java_overload_args) if java_overload_args.length == 0
        return set_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method set takes #{java_overload_args.length} arguments"
    end
    

    def get()
        java_monitor.synchronize do
        begin
            @testing = nil
            @mainPath = nil
            @testHtmlPath = nil
            initInfoEntity = InitInfoEntity.new()
            initInfoEntity.get()
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADERERROR)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE("error", "InitInfo", "set()", e)
            end
            return
        end
        end
    end
    

    def setHasRead(value)
        java_monitor.synchronize do
        @hasRead = value
        end
    end
    

    def updateIfNeeded()
        java_monitor.synchronize do
        begin
            if !@hasRead
                @hasRead = true
                self.get()
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADERERROR)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE("error", "InitInfo", "updateIfNeeded()", e)
            end
            return
        end
        end
    end
    

    def isTesting()
        begin
            self.updateIfNeeded()
            return ::Org::Allbinary::Logic::Java::Bool::BooleanUtil.getInstance().getFromString(@testing)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADERERROR)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE("error", "InitInfo", "updateIfNeeded()", e)
            end
            return false
        end
    end
    

    def getTesting()
        self.updateIfNeeded()
        return @testing
    end
    

    def getTestHtmlPath()
        self.updateIfNeeded()
        if @testHtmlPath != nil
            return @testHtmlPath.to_s
        else
            return nil
        end
    end
    

    def getMainPath()
        self.updateIfNeeded()
        if @mainPath != nil
            return @mainPath.to_s
        else
            return nil
        end
    end
    

    def setTesting(value)
        @testing = value
    end
    

    def setTestHtmlPath(value)
        @testHtmlPath = value
    end
    

    def setMainPath(value)
        @mainPath = value
    end
    

    def isMainPathValid(abPath)
        return true
    end
    

    def isTestHtmlPathValid(abPath)
        return true
    end
    

    # throws Exception
    def isTestingValid(testing)
        return ::Org::Allbinary::Logic::Java::Bool::BooleanUtil.getInstance().isStringBoolean(testing)
    end
    

    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        hashMap.put(@TESTING, self.getTesting())
        hashMap.put(@MAINPATH, self.getMainPath())
        hashMap.put(@TESTHTMLPATH, self.getTestHtmlPath())
        return hashMap
    end

    def self.instance()
        InitInfo.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        InitInfo.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = InitInfo.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InitInfo"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanUtil, "org/allbinary/logic/java/bool/BooleanUtil" unless const_defined?(:BooleanUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :InitException, "org/allbinary/business/init/InitException" unless const_defined?(:InitException, false)
autoload :InitInfoEntity, "org/allbinary/business/init/InitInfoEntity" unless const_defined?(:InitInfoEntity, false)

begin
    InitInfo.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

