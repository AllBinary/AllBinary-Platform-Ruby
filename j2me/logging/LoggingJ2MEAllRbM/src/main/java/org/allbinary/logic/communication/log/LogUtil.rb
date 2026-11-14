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
        print(@LOG_SUCCESS)
        puts(message)
    end
    

    def putFS(specialMessage, className, functionName)
        message = @logFormatUtil.getS(className, functionName, specialMessage)
        print(@LOG_SUCCESS)
        puts(message)
    end
    

    def put(specialMessage, anyType, functionName, exception)
        className = CommonStrings.getInstance().EMPTY
        if anyType.class.name != nil
            hashCodeValue = TsUtil.getInstance().hashCode(anyType)
            hexString = (hashCodeValue).to_s(16)
            className = String.new(StringMaker.new().append(anyType.class.name).append(CommonSeps.getInstance().COLON).append(hexString).to_s)
        end
        message = @logFormatUtil.get(className, functionName, specialMessage, exception)
        print(@LOG_SUCCESS)
        puts(message)
    end

    def self.instance()
        LogUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        LogUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = LogUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LogUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :TsUtil, "org/allbinary/TsUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :Log, "org/allbinary/logic/communication/log/Log"
autoload :LogFormatUtil, "org/allbinary/logic/communication/log/LogFormatUtil"
require "java/lang/System"

begin
    LogUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

