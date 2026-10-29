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

# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsConstructor"

#ActualPlatform
class LogUtil
    attr_accessor :logFormatUtil, :LOG_SUCCESS

    def initialize_fields
        @logFormatUtil = LogFormatUtil.getInstance()
        @LOG_SUCCESS = "org.allbinary: "
    end
    

    def self.getInstance()
        return LogUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def putL(log)
        if log == nil
            return
        end
        specialMessage = log.getSpecialMessage()
        anyType = log.getObject()
        functionName = log.getFunctionName()
        exception = log.getThrowable()
        self.put(specialMessage, anyType, functionName, exception)
    end
    

    def putF(specialMessage, anyType, functionName)
        className = PreLogUtil.getClassName(anyType)
        if className == nil
            className = CommonStrings.getInstance().EMPTY
        end
        message = @logFormatUtil.getS(className, functionName, specialMessage)
        playN = PlayN.getInstance()
        playN.log().debug(@LOG_SUCCESS + message)
    end
    

    def putFS(specialMessage, className, functionName)
        message = @logFormatUtil.getS(className, functionName, specialMessage)
        playN = PlayN.getInstance()
        playN.log().debug(@LOG_SUCCESS + message)
    end
    

    def put(specialMessage, anyType, functionName, exception)
        className = PreLogUtil.getClassName(anyType)
        if className == nil
            className = CommonStrings.getInstance().EMPTY
        end
        message = @logFormatUtil.get(className, functionName, specialMessage, exception)
        playN = PlayN.getInstance()
        if exception != nil
            playN.log().error(@LOG_SUCCESS + message, exception)
        else
            playN.log().debug(@LOG_SUCCESS + message)
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/string/CommonStrings"
require "playn/core/PlayN"
require "org/allbinary/logic/communication/log/Log"
require "org/allbinary/logic/communication/log/LogFormatUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"

class LogUtil
    @@instance = LogUtil.new()
end

