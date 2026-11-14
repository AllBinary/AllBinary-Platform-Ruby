# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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
# package org.allbinary.logic

# require "jsinterop/annotations/JsType"

class ABSystemWrapper
    

    def self.getInstance()
        return ABSystemWrapper.instance
    end
    

    def arraycopy(src, srcPos, dest, destPos, length)
        dest[destPos, length] = src[srcPos, length]
    end
    

    def currentTimeMillis()
        return (Time.now.to_f * 1000).to_i
    end

    def self.instance()
        ABSystemWrapper.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ABSystemWrapper.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ABSystemWrapper.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ABSystemWrapper"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

require "java/lang/System"

begin
    ABSystemWrapper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

