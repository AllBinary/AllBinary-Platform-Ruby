# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.emulator.swt


class SWTProcessor
    attr_accessor :runnable

    def initialize_fields
        @runnable = NullRunnable.getInstance()
    end
    

    def self.getInstance()
        return SWTProcessor.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def process(display)
        display.sleep()
    end

    def self.instance()
        SWTProcessor.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        SWTProcessor.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = SWTProcessor.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SWTProcessor"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :NullRunnable, "org/allbinary/thread/NullRunnable"
autoload :Display, "org/eclipse/swt/widgets/Display"
require "java/lang/Runnable"

begin
    SWTProcessor.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

