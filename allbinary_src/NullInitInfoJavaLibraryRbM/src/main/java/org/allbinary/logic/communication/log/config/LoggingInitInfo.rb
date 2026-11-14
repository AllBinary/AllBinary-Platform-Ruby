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
# package org.allbinary.logic.communication.log.config

require "java/lang/Object"

class LoggingInitInfo
    

    def initialize()
    end
    

    # throws Exception
    def self.write()
        java_monitor.synchronize do
        begin
            LoggingInitInfo.hasRead = false
        rescue StandardError => e
            raise e
        end
        end
    end
    

    # throws Exception
    def self.read()
        java_monitor.synchronize do
        begin
        rescue StandardError => e
            raise e
        end
        end
    end
    

    def self.setHasRead(value)
        java_monitor.synchronize do
        LoggingInitInfo.hasRead = value
        end
    end
    

    # throws Exception
    def self.updateIfNeeded()
        java_monitor.synchronize do
        if !LoggingInitInfo.hasRead
            LoggingInitInfo.read()
            LoggingInitInfo.hasRead = true
            if LoggingInitInfo.logConfigInfoList == nil
                raise StandardError.new("Read Failed")
            end
        end
        end
    end
    

    def isValid()
        begin
            return true
        rescue StandardError => e
            return false
        end
    end
    

    def self.set(logConfigInfoList)
        java_monitor.synchronize do
        LoggingInitInfo.logConfigInfoList = logConfigInfoList
        end
    end
    

    # throws Exception
    def self.get()
        LoggingInitInfo.updateIfNeeded()
        return LoggingInitInfo.logConfigInfoList
    end
    

    # throws Exception
    def self.getTypeList()
        LoggingInitInfo.updateIfNeeded()
        allLogTypeVector = BasicArrayListD.new()
        size = LoggingInitInfo.logConfigInfoList.size()
        (0...size).each do |index|
            logConfigInfo = LoggingInitInfo.logConfigInfoList.objectArray[index]
            logTypeVector = logConfigInfo.getTypeVector()
            if logConfigInfo.isEnabled()
                allLogTypeVector.addAllList(logTypeVector)
            end
        end
        return allLogTypeVector
    end
    

    # throws Exception
    def getNumberOfLogConfigs()
        return LoggingInitInfo.logConfigInfoList.size()
    end
    

    def toString()
        begin
            return nil
        rescue StandardError => e
            return "Error"
        end
    end
    alias_method :to_s, :toString

    def self.logConfigInfoList()
        LoggingInitInfo.java_static_fields unless @java_static_fields_started
        return defined?(@@logConfigInfoList) ? @@logConfigInfoList : nil
    end

    def self.logConfigInfoList=(value)
        LoggingInitInfo.java_static_fields unless @java_static_fields_started
        @@logConfigInfoList = value
    end

    def self.hasRead()
        LoggingInitInfo.java_static_fields unless @java_static_fields_started
        return defined?(@@hasRead) ? @@hasRead : nil
    end

    def self.hasRead=(value)
        LoggingInitInfo.java_static_fields unless @java_static_fields_started
        @@hasRead = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        @@logConfigInfoList = nil
        @@hasRead = false
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LoggingInitInfo"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :LogConfig, "org/allbinary/logic/communication/log/config/LogConfig"

begin
    LoggingInitInfo.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

