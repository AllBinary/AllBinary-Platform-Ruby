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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/opengles/shader/ShaderUpdater"

module ::Org; module Allbinary; module Graphics; module Opengles; module Shader

class AppRendererShaderUpdaterFactory < ShaderUpdater
    attr_accessor :NULL_SHADER_COMPOSITE_ARRAY, :shaderCompositeArray, :shaderOpenGLProcessorArray

    def jfields_org_allbinary_graphics_opengles_shader_AppRendererShaderUpdaterFactory
        @NULL_SHADER_COMPOSITE_ARRAY = Array.new(0, nil)
        @shaderCompositeArray = @NULL_SHADER_COMPOSITE_ARRAY
        @shaderOpenGLProcessorArray = Array.new(0, nil)
    end

    def initialize
        super()
        jfields_org_allbinary_graphics_opengles_shader_AppRendererShaderUpdaterFactory
    end
    

    def self.getInstance()
        return @@instanceC
    end
    

    def getTestShaders()
        return @shaderOpenGLProcessorArray
    end
    java_overload :getTestShaders, 0
    

    def setShaderComposite(object3d)
    end
    java_overload :setShaderComposite, 1

    def self.instanceC()
        AppRendererShaderUpdaterFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        AppRendererShaderUpdaterFactory.java_static_fields unless @java_static_fields_started
        @@instanceC = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instanceC = AppRendererShaderUpdaterFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AppRendererShaderUpdaterFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :ShaderComposite, "org/allbinary/graphics/opengles/shader/ShaderComposite" unless const_defined?(:ShaderComposite, false)
autoload :ShaderOpenGLProcessor, "org/allbinary/graphics/opengles/shader/ShaderOpenGLProcessor" unless const_defined?(:ShaderOpenGLProcessor, false)

begin
    AppRendererShaderUpdaterFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

