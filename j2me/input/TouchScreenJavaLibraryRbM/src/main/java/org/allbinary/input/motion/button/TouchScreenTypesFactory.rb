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
# package org.allbinary.input.motion.button


class TouchScreenTypesFactory
    attr_accessor :FINGER, :NOTOUCH, :STYLUS, :UNDEFINED

    def initialize_fields
        @FINGER = TouchScreenType.new("Finger")
        @NOTOUCH = TouchScreenType.new("No Touch")
        @STYLUS = TouchScreenType.new("Stylus")
        @UNDEFINED = TouchScreenType.new("Undefined")
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return TouchScreenTypesFactory.instance
    end

    def self.instance()
        TouchScreenTypesFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TouchScreenTypesFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TouchScreenTypesFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TouchScreenTypesFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :TouchScreenType, "org/allbinary/input/motion/button/TouchScreenType"

begin
    TouchScreenTypesFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

