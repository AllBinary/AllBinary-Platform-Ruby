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
        return defined?(@@logConfigInfoList) ? @@logConfigInfoList : nil
    end

    def self.logConfigInfoList=(value)
        @@logConfigInfoList = value
    end

    def self.hasRead()
        return defined?(@@hasRead) ? @@hasRead : nil
    end

    def self.hasRead=(value)
        @@hasRead = value
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/communication/log/config/LogConfig"

class LoggingInitInfo
    @@logConfigInfoList = nil
    @@hasRead = false
end

