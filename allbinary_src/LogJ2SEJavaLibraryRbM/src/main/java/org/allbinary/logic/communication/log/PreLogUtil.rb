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
class PreLogUtil
    

    def initialize()
    end
    

    def self.put(specialMessage, anyType, functionName)
        PreLogUtil.putOE(specialMessage, anyType, functionName, NullUtil.getInstance().NULL_OBJECT)
    end
    

    def self.putOE(specialMessage, anyType, functionName, exception)
        className = CommonStrings.getInstance().EMPTY
        if anyType.class.name != nil
            className = String.new(anyType.class.name)
        end
        message = LogFormatUtil.getInstance().get(className, functionName, specialMessage, exception)
        print(PreLogUtil::LOG_SUCCESS)
        puts(message)
    end
    

    def self.putS(specialMessage, className, functionName)
        PreLogUtil.putSE(specialMessage, className, functionName, NullUtil.getInstance().NULL_OBJECT)
    end
    

    def self.putSE(specialMessage, className, functionName, exception)
        message = LogFormatUtil.getInstance().get(className, functionName, specialMessage, exception)
        print(PreLogUtil::LOG_SUCCESS)
        puts(message)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:LOG_SUCCESS, "org.allbinary: ")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PreLogUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:LOG_SUCCESS].include?(name)
        end
        super
    end
end

autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :LogFormatUtil, "org/allbinary/logic/communication/log/LogFormatUtil"
require "java/lang/System"

begin
    PreLogUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

