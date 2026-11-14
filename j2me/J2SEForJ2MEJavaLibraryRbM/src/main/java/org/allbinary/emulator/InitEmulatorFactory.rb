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
# package org.allbinary.emulator


class InitEmulatorFactory
    attr_accessor :initEmulator

    def initialize_fields
        @initEmulator = false
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return InitEmulatorFactory.instance
    end
    

    def setInitEmulator(initEmulator)
        @initEmulator = initEmulator
    end
    

    def isInitEmulator()
        return @initEmulator
    end

    def self.instance()
        InitEmulatorFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        InitEmulatorFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = InitEmulatorFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InitEmulatorFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    InitEmulatorFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

