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

require "java/lang/JavaClass"
# require "java/util/logging/Level"
# require "java/util/logging/Logger"

module ::Org; module Allbinary; module Logic; module Communication; module Log

#ActualPlatform
class LogUtil
    attr_accessor :logger, :logFormatUtil

    def jfields_org_allbinary_logic_communication_log_LogUtil
        @logger = Logger.getLogger(LogUtil.java_name)
        @logFormatUtil = LogFormatUtil.getInstance()
    end
    

    def self.getInstance()
        return LogUtil.instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_communication_log_LogUtil
    end
    

    def init()
        PreLogUtil.put("Loggin Initialized", self, "init()")
    end
    

    def putL(log)
        exception = log.getThrowable()
        begin
            if exception != nil
                specialMessage = log.getSpecialMessage()
                anyType = log.getObject()
                functionName = log.getFunctionName()
                className = ::Org::Allbinary::StringPackage::CommonStrings.getInstance().EMPTY
                clazz = anyType.class
                if clazz.java_name != nil
                    className = clazz.java_name
                end
                message = @logFormatUtil.get(className, functionName, specialMessage, exception)
                @logger.log(Level::INFO, message)
            end
        rescue StandardError => e
        end
    end
    

    def put(specialMessage, anyType, functionName, exception)
        begin
            className = ::Org::Allbinary::StringPackage::CommonStrings.getInstance().EMPTY
            clazz = anyType.class
            if clazz.java_name != nil
                className = clazz.java_name
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

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :Log, "org/allbinary/logic/communication/log/Log" unless const_defined?(:Log, false)
autoload :LogFormatUtil, "org/allbinary/logic/communication/log/LogFormatUtil" unless const_defined?(:LogFormatUtil, false)
autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false)

begin
    LogUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

