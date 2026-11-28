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
class LogUtil
    attr_accessor :logFormatUtil, :LOG_SUCCESS

    def jfields_org_allbinary_logic_communication_log_LogUtil
        @logFormatUtil = LogFormatUtil.getInstance()
        @LOG_SUCCESS = "org.allbinary: "
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_communication_log_LogUtil
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
            className = ::Org::Allbinary::StringPackage::CommonStrings.getInstance().EMPTY
        end
        message = @logFormatUtil.getS(className, functionName, specialMessage)
        ::Playn::Core::PlayN.log().debug(@LOG_SUCCESS + message)
    end
    

    def putFS(specialMessage, className, functionName)
        message = @logFormatUtil.getS(className, functionName, specialMessage)
        ::Playn::Core::PlayN.log().debug(@LOG_SUCCESS + message)
    end
    

    def put(specialMessage, anyType, functionName, exception)
        className = PreLogUtil.getClassName(anyType)
        if className == nil
            className = ::Org::Allbinary::StringPackage::CommonStrings.getInstance().EMPTY
        end
        message = @logFormatUtil.get(className, functionName, specialMessage, exception)
        if exception != nil
            ::Playn::Core::PlayN.log().error(@LOG_SUCCESS + message, exception)
        else
            ::Playn::Core::PlayN.log().debug(@LOG_SUCCESS + message)
        end
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

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Playn; module Core; autoload :PlayN, "playn/core/PlayN" unless const_defined?(:PlayN, false); end; end
autoload :Log, "org/allbinary/logic/communication/log/Log" unless const_defined?(:Log, false)
autoload :LogFormatUtil, "org/allbinary/logic/communication/log/LogFormatUtil" unless const_defined?(:LogFormatUtil, false)
autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false)

begin
    LogUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

