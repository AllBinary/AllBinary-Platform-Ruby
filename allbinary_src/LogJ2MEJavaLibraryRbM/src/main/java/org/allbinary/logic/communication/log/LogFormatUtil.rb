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
class LogFormatUtil
    attr_accessor :timeStampUtil, :commonSeps, :NONE, :LOG_ERROR, :EMPTY, :STACK_TRACE, :TIME, :CLASS_NAME, :FUNCTION_CALL, :SPECIAL_MESSAGE, :stringUtil, :exceptionUtil, :nullUtil

    def initialize_fields
        @timeStampUtil = TimeStampUtil.getInstance()
        @commonSeps = CommonSeps.getInstance()
        @NONE = "None"
        @LOG_ERROR = "\nLog-Error: "
        @EMPTY = "Empty"
        @STACK_TRACE = "\nStack Trace: "
        @TIME = "Time: "
        @CLASS_NAME = @commonSeps.SPACE
        @FUNCTION_CALL = CommonLabels.getInstance().COLON_SEP
        @SPECIAL_MESSAGE = "> "
        @stringUtil = StringUtil.getInstance()
        @exceptionUtil = ExceptionUtil.getInstance()
        @nullUtil = NullUtil.getInstance()
    end
    

    def self.getInstance()
        return LogFormatUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def get(className, functionName, specialMessage, exception)
        stringBuffer = self.getF(className, functionName)
        stringBuffer.append(self.getO(exception))
        stringBuffer.append(@SPECIAL_MESSAGE)
        stringBuffer.append(specialMessage)
        stringBuffer.append(@commonSeps.NEW_LINE)
        return stringBuffer.to_s
    end
    

    def getS(className, functionName, specialMessage)
        stringBuffer = self.getF(className, functionName)
        stringBuffer.append(@SPECIAL_MESSAGE)
        stringBuffer.append(specialMessage)
        stringBuffer.append(@commonSeps.NEW_LINE)
        return stringBuffer.to_s
    end
    

    def getF(className, functionName)
        stringBuffer = StringMaker.new()
        stringBuffer.append(@TIME)
        stringBuffer.append(@timeStampUtil.getAsString())
        stringBuffer.append(@CLASS_NAME)
        stringBuffer.append(className)
        stringBuffer.append(@FUNCTION_CALL)
        stringBuffer.append(functionName)
        return stringBuffer
    end
    

    def getO(exception)
        if exception != @nullUtil.NULL_OBJECT
            stringBuffer = StringMaker.new()
            stringBuffer.append(@LOG_ERROR)
            exceptionAsString = exception.to_s
            stringBuffer.append(exceptionAsString)
            stringBuffer.append(@STACK_TRACE)
            if exception != @nullUtil.NULL_OBJECT
                stringBuffer.append(@exceptionUtil.getStackTrace(exception))
            else
                stringBuffer.append(@stringUtil.NULL_STRING)
            end
            return stringBuffer.to_s
        else
            return StringUtil.getInstance().EMPTY_STRING
        end
    end

    def self.instance()
        LogFormatUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        LogFormatUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = LogFormatUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LogFormatUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :ExceptionUtil, "org/allbinary/logic/java/exception/ExceptionUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"
autoload :TimeStampUtil, "org/allbinary/time/TimeStampUtil"

begin
    LogFormatUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

