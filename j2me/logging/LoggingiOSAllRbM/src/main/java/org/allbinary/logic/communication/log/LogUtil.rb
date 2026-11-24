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

require "java/lang/Object"
require "java/lang/JavaClass"

module ::Org; module Allbinary; module Logic; module Communication; module Log

#ActualPlatform
class LogUtil
    attr_accessor :logFormatUtil

    def jfields_org_allbinary_logic_communication_log_LogUtil
        @logFormatUtil = LogFormatUtil.getInstance()
    end
    

    def self.getInstance()
        return LogUtil.instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_communication_log_LogUtil
    end
    

    def putL(log)
        specialMessage = log.getSpecialMessage()
        anyType = log.getObject()
        functionName = log.getFunctionName()
        exception = log.getThrowable()
        self.put(specialMessage, anyType, functionName, exception)
    end
    

    def putF(specialMessage, anyType, functionName)
        className = ::Org::Allbinary::StringPackage::CommonStrings.getInstance().EMPTY
        if anyType.class.java_name != nil
            className = String.new(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(anyType.class.java_name).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().COLON).append((::Org::Allbinary::Logic::TsUtil.getInstance().hashCode(anyType)).to_s(16)).to_s)
        end
        message = @logFormatUtil.getS(className, functionName, specialMessage)
        print(LogUtil::LOG_SUCCESS)
        puts(message)
    end
    

    def putFS(specialMessage, className, functionName)
        className = String.new(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(className).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().COLON).append((::Org::Allbinary::Logic::TsUtil.getInstance().hashCode(@anyType)).to_s(16)).to_s)
        message = @logFormatUtil.getS(className, functionName, specialMessage)
        print(LogUtil::LOG_SUCCESS)
        puts(message)
    end
    

    def put(specialMessage, anyType, functionName, exception)
        className = ::Org::Allbinary::StringPackage::CommonStrings.getInstance().EMPTY
        if anyType.class.java_name != nil
            className = String.new(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(anyType.class.java_name).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().COLON).append((::Org::Allbinary::Logic::TsUtil.getInstance().hashCode(anyType)).to_s(16)).to_s)
        end
        message = @logFormatUtil.get(className, functionName, specialMessage, exception)
        print(LogUtil::LOG_SUCCESS)
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
        const_set(:LOG_SUCCESS, "org.allbinary: ")
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
            return nil if [:LOG_SUCCESS].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; autoload :TsUtil, "org/allbinary/logic/TsUtil" unless const_defined?(:TsUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :Log, "org/allbinary/logic/communication/log/Log" unless const_defined?(:Log, false)
autoload :LogFormatUtil, "org/allbinary/logic/communication/log/LogFormatUtil" unless const_defined?(:LogFormatUtil, false)
require "java/lang/System"

begin
    LogUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

