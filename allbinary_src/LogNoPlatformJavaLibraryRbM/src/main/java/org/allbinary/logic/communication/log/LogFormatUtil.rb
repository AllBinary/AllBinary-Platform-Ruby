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


#NoPlatform
class LogFormatUtil
    

    def self.getInstance()
        return LogFormatUtil.instance
    end
    

    def initialize()
    end
    

    def get(className, functionName, specialMessage, exception)
        raise RuntimeError.new()
    end
    

    def getS(className, functionName, specialMessage)
        raise RuntimeError.new()
    end
    

    def getO(exception)
        raise RuntimeError.new()
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

