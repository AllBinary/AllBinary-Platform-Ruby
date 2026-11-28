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

require "java/lang/JavaOverload"
require "org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface"

module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Interfaces

class NoHardwareComponent
    include HardwareComponentInterface
    

    def self.getInstance()
        return @@instance
    end
    

    def compareTo(componentInterface)
        if self == componentInterface
            return true
        end
        return false
    end
    java_overload :compareTo, 1
    

    def toString()
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().NULL_STRING
    end
    java_overload :toString, 0
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

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

begin
    NoHardwareComponent.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

