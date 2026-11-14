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
# package org.allbinary.image.opengles

require "org/allbinary/image/opengles/OpenGLESImageProcessor"

class ModifierOpenGLESImageProcessor < OpenGLESImageProcessor
    

    def self.getInstance()
        return ModifierOpenGLESImageProcessor.instanceC
    end

    def self.instanceC()
        ModifierOpenGLESImageProcessor.java_static_fields unless @java_static_fields_started
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        ModifierOpenGLESImageProcessor.java_static_fields unless @java_static_fields_started
        @@instanceC = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instanceC = ModifierOpenGLESImageProcessor.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ModifierOpenGLESImageProcessor"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    ModifierOpenGLESImageProcessor.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

