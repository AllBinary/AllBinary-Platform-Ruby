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


module ::Org; module Allbinary; module Logic; module Communication; module Log

#ActualPlatform
class LogFormatUtil
    attr_accessor :timeStampUtil, :commonSeps, :NONE, :LOG_ERROR, :EMPTY, :STACK_TRACE, :TIME, :CLASS_NAME, :FUNCTION_CALL, :SPECIAL_MESSAGE, :stringUtil, :exceptionUtil, :nullUtil

    def jfields_org_allbinary_logic_communication_log_LogFormatUtil
        @timeStampUtil = ::Org::Allbinary::TimePackage::TimeStampUtil.getInstance()
        @commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        @NONE = "None"
        @LOG_ERROR = "\nLog-Error: "
        @EMPTY = "Empty"
        @STACK_TRACE = "\nStack Trace: "
        @TIME = "Time: "
        @CLASS_NAME = @commonSeps.SPACE
        @FUNCTION_CALL = ::Org::Allbinary::StringPackage::CommonLabels.getInstance().COLON_SEP
        @SPECIAL_MESSAGE = "> "
        @stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        @exceptionUtil = ::Org::Allbinary::Logic::Java::ExceptionPackage::ExceptionUtil.getInstance()
        @nullUtil = ::Org::Allbinary::Logic::NullUtil.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_communication_log_LogFormatUtil
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
        if functionName == nil
            functionName = @NONE
        end
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append(@LOG_ERROR)
            exceptionAsString = exception.to_s
            if exceptionAsString != nil
                stringBuffer.append(exceptionAsString)
            else
                stringBuffer.append(@EMPTY)
            end
            stringBuffer.append(@STACK_TRACE)
            if exception != @nullUtil.NULL_OBJECT
                stringBuffer.append(@exceptionUtil.getStackTrace(exception))
            else
                stringBuffer.append(@stringUtil.NULL_STRING)
            end
            return stringBuffer.to_s
        else
            return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
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

module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Java; module ExceptionPackage; autoload :ExceptionUtil, "org/allbinary/logic/java/exception/ExceptionUtil" unless const_defined?(:ExceptionUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeStampUtil, "org/allbinary/time/TimeStampUtil" unless const_defined?(:TimeStampUtil, false); end; end; end

begin
    LogFormatUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

