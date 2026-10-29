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
        if log == LogFactory::LOG
            return
        end
        exception = log.getThrowable()
        if exception == nil
            return
        end
        specialMessage = log.getSpecialMessage()
        anyType = log.getObject()
        functionName = log.getFunctionName()
        self.put(specialMessage, anyType, functionName, exception)
    end
    

    def putF(specialMessage, anyType, functionName)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def putF(specialMessage, className, functionName)
    end
    

    def put(specialMessage, anyType, functionName, exception)
        className = CommonStrings.getInstance().EMPTY
        if anyType.class.name != nil
            className = String.new(anyType.class.name)
        end
        message = @logFormatUtil.get(className, functionName, specialMessage, exception)
        print(@LOG_SUCCESS)
        puts(message)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/log/Log"
require "org/allbinary/logic/communication/log/LogFactory"
require "org/allbinary/logic/communication/log/LogFormatUtil"
require "java/lang/System"

class LogUtil
    @@instance = LogUtil.new()
end

