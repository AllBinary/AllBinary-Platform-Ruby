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
    attr_accessor :logFormatUtil

    def initialize_fields
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
        className = CommonStrings.getInstance().EMPTY
        if anyType.class.name != nil
            className = String.new(StringMaker.new().append(anyType.class.name).append(CommonSeps.getInstance().COLON).append((TsUtil.getInstance().hashCode(anyType)).to_s(16)).to_s)
        end
        message = @logFormatUtil.getS(className, functionName, specialMessage)
        print(LogUtil::LOG_SUCCESS)
        puts(message)
    end
    

    def putFS(specialMessage, className, functionName)
        className = String.new(StringMaker.new().append(className).append(CommonSeps.getInstance().COLON).append((TsUtil.getInstance().hashCode(@anyType)).to_s(16)).to_s)
        message = @logFormatUtil.getS(className, functionName, specialMessage)
        print(LogUtil::LOG_SUCCESS)
        puts(message)
    end
    

    def put(specialMessage, anyType, functionName, exception)
        className = CommonStrings.getInstance().EMPTY
        if anyType.class.name != nil
            className = String.new(StringMaker.new().append(anyType.class.name).append(CommonSeps.getInstance().COLON).append((TsUtil.getInstance().hashCode(anyType)).to_s(16)).to_s)
        end
        message = @logFormatUtil.get(className, functionName, specialMessage, exception)
        print(LogUtil::LOG_SUCCESS)
        puts(message)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/TsUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/log/Log"
require "org/allbinary/logic/communication/log/LogFormatUtil"
require "java/lang/System"

class LogUtil
    @@instance = LogUtil.new()
    LOG_SUCCESS = "org.allbinary: "
end

