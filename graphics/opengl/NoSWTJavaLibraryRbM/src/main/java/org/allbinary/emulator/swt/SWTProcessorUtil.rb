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


class SWTProcessorUtil
    attr_accessor :swtProcessor

    def initialize_fields
        @swtProcessor = SWTProcessor.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return SWTProcessorUtil.instance
    end

    def self.instance()
        SWTProcessorUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        SWTProcessorUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = SWTProcessorUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SWTProcessorUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :SWTProcessor, "org/allbinary/emulator/swt/SWTProcessor"

begin
    SWTProcessorUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

