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
# package org.allbinary.graphics.opengles.shader


class ShaderUpdater
    attr_accessor :commonStrings, :rendererStrings

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
        @rendererStrings = RendererStrings.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ShaderUpdater.instance
    end
    

    def onSurfaceCreated(gl, eglConfig)
    end

    def self.instance()
        ShaderUpdater.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ShaderUpdater.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ShaderUpdater.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ShaderUpdater"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :EGLConfig, "javax/microedition/khronos/egl/EGLConfig"
autoload :GL10, "javax/microedition/khronos/opengles/GL10"
autoload :RendererStrings, "org/allbinary/graphics/opengles/renderer/RendererStrings"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    ShaderUpdater.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

