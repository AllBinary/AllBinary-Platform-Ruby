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
# package org.allbinary.logic.system.os


#NoPlatform
class SystemProperties
    

    def self.getInstance()
        return SystemProperties.instance
    end
    

    def initialize()
    end
    

    def getName()
        raise RuntimeError.new()
    end
    

    def getArch()
        raise RuntimeError.new()
    end
    

    def getVersion()
        raise RuntimeError.new()
    end
    

    def getUserHomePath()
        raise RuntimeError.new()
    end

    def self.instance()
        SystemProperties.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        SystemProperties.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = SystemProperties.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SystemProperties"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    SystemProperties.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

