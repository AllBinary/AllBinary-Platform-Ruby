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
    attr_accessor :logFormatUtil, :LABEL, :LOG_SUCCESS

    def initialize_fields
        @logFormatUtil = LogFormatUtil.getInstance()
        @LABEL = "org.allbinary"
        @LOG_SUCCESS = "org.allbinary: "
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
        if log != nil
            self.put(specialMessage, anyType, functionName, exception)
        end
    end
    

    def putF(specialMessage, anyType, functionName)
    end
    

    def putFS(specialMessage, className, functionName)
    end
    

    def put(specialMessage, anyType, functionName, exception)
        className = @LABEL
        className = anyType.class.name
        message = @logFormatUtil.get(className, functionName, specialMessage, exception)
        android.util.Log.i(@LABEL, @LOG_SUCCESS + message)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/Log"
require "org/allbinary/logic/communication/log/LogFormatUtil"

class LogUtil
    @@instance = LogUtil.new()
end

