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
# package org.allbinary.logic.system.hardware.components.interfaces

require "org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface"

class NoHardwareComponent
    include HardwareComponentInterface
    

    def self.getInstance()
        return NoHardwareComponent.instance
    end
    

    def compareTo(componentInterface)
        if self == componentInterface
            return true
        end
        return false
    end
    

    def toString()
        return StringUtil.getInstance().NULL_STRING
    end
    alias_method :to_s, :toString

    def self.instance()
        NoHardwareComponent.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        NoHardwareComponent.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = NoHardwareComponent.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NoHardwareComponent"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :StringUtil, "org/allbinary/logic/string/StringUtil"

begin
    NoHardwareComponent.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

