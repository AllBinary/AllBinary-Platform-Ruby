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
# package org.allbinary.logic.communication.log

# require "java/util/logging/Level"
# require "java/util/logging/Logger"

#ActualPlatform
class LogUtil
    attr_accessor :logger, :logFormatUtil

    def initialize_fields
        @logger = Logger.getLogger(LogUtil.getName())
        @logFormatUtil = LogFormatUtil.getInstance()
    end
    

    def self.getInstance()
        return LogUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def putL(log)
        specialMessage = log.getSpecialMessage()
        anyType = log.getObject()
        functionName = log.getFunctionName()
        exception = log.getThrowable()
        self.put(specialMessage, anyType, functionName, exception)
    end
    

    def putF(specialMessage, anyType, functionName)
        self.put(specialMessage, anyType, functionName, NullUtil.getInstance().NULL_OBJECT)
    end
    

    def putFS(specialMessage, className, functionName)
        self.putS(specialMessage, className, functionName, NullUtil.getInstance().NULL_OBJECT)
    end
    

    def put(specialMessage, anyType, functionName, exception)
        begin
            className = CommonStrings.getInstance().EMPTY
            clazz = anyType.class
            if clazz.getName() != nil
                className = clazz.getName()
            end
            message = @logFormatUtil.getS(className, functionName, specialMessage)
            if exception != nil
                @logger.log(Level::SEVERE, message, exception)
            else
                @logger.log(Level::INFO, message)
            end
        rescue StandardError => e
        end
    end
    

    def putS(specialMessage, className, functionName, exception)
        begin
            message = @logFormatUtil.getS(className, functionName, specialMessage)
            if exception != nil
                @logger.log(Level::SEVERE, message, exception)
            else
                @logger.log(Level::INFO, message)
            end
        rescue StandardError => e
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/log/Log"
require "org/allbinary/logic/communication/log/LogFormatUtil"

class LogUtil
    @@instance = LogUtil.new()
end

