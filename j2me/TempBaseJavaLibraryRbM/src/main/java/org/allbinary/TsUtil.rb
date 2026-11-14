# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary

require "java/lang/Object"

#TempBase
class TsUtil
    

    def self.getInstance()
        return TsUtil.instance
    end
    

    def longBitsToDouble(bits)
        return java.lang.Double.longBitsToDouble(bits)
    end
    

    def intBitsToFloat(bits)
        return java.lang.Float.intBitsToFloat(bits)
    end
    

    def hashCode(anyType)
        return anyType.hash
    end
    

    # throws InterruptedException
    def waitFor(any, timeoutMillis)
        anyType = any
        anyType.wait(timeoutMillis)
    end
    

    def compareTo(a, b)
        return (a <=> b)
    end

    def self.instance()
        TsUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TsUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TsUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TsUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

require "java/lang/InterruptedException"

begin
    TsUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

