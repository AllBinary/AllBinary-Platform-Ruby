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

class InitInfo
    attr_accessor :TESTING, :MAINPATH, :TESTHTMLPATH, :testing, :mainPath, :testHtmlPath, :hasRead

    def initialize_fields
        @TESTING = "TESTING"
        @MAINPATH = "MAINPATH"
        @TESTHTMLPATH = "TESTHTMLPATH"
        @testing = nil
        @mainPath = nil
        @testHtmlPath = nil
        @hasRead = false
    end
    

    def self.getInstance()
        return InitInfo.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws InitException
    def set()
        java_monitor.synchronize do
        begin
            initInfoEntity = InitInfoEntity.new()
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADER)
                PreLogUtil.put("created entity", "InitInfo", "set()")
            end
            if !initInfoEntity.is()
                if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADER)
                    PreLogUtil.put("adding", "InitInfo", "set()")
                end
                initInfoEntity.add()
            else
                if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADER)
                    PreLogUtil.put("update", "InitInfo", "set()")
                end
                initInfoEntity.update()
            end
            @hasRead = false
        rescue StandardError => e
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADERERROR)
                PreLogUtil.putOE("error", "InitInfo", "set()", e)
            end
        end
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def set(hashMap)
        java_monitor.synchronize do
        begin
            @testing = hashMap.get(@TESTING)
            @mainPath = AbPath.new(hashMap.get(@MAINPATH), StringUtil.getInstance().EMPTY_STRING)
            @testHtmlPath = AbPath.new(hashMap.get(@TESTHTMLPATH), StringUtil.getInstance().EMPTY_STRING)
        rescue StandardError => e
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADERERROR)
                PreLogUtil.putOE("error", "InitInfo", "set()", e)
            end
        end
        end
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
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADERERROR)
                PreLogUtil.putOE("error", "InitInfo", "set()", e)
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
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADERERROR)
                PreLogUtil.putOE("error", "InitInfo", "updateIfNeeded()", e)
            end
            return
        end
        end
    end
    

    def isTesting()
        begin
            self.updateIfNeeded()
            return BooleanUtil.getInstance().getFromString(@testing)
        rescue StandardError => e
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADERERROR)
                PreLogUtil.putOE("error", "InitInfo", "updateIfNeeded()", e)
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
        return BooleanUtil.getInstance().isStringBoolean(testing)
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(@TESTING, self.getTesting())
        hashMap.put(@MAINPATH, self.getMainPath())
        hashMap.put(@TESTHTMLPATH, self.getTestHtmlPath())
        return hashMap
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory"
require "org/allbinary/logic/communication/log/config/type/LogConfigTypes"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/java/bool/BooleanUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/business/init/InitException"
require "org/allbinary/business/init/InitInfoEntity"

class InitInfo
    @@instance = InitInfo.new()
end

