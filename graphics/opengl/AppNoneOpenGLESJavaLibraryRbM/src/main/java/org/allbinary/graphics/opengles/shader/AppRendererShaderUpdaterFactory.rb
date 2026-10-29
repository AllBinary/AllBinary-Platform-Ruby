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

require "org/allbinary/graphics/opengles/shader/ShaderUpdater"

class AppRendererShaderUpdaterFactory < ShaderUpdater
    attr_accessor :NULL_SHADER_COMPOSITE_ARRAY, :shaderCompositeArray, :shaderOpenGLProcessorArray

    def initialize_fields
        @NULL_SHADER_COMPOSITE_ARRAY = Array.new(0, nil)
        @shaderCompositeArray = @NULL_SHADER_COMPOSITE_ARRAY
        @shaderOpenGLProcessorArray = Array.new(0, nil)
    end

    def initialize
        super()
        initialize_fields
    end
    

    def self.getInstance()
        return AppRendererShaderUpdaterFactory.instanceC
    end
    

    def getTestShaders()
        return @shaderOpenGLProcessorArray
    end
    

    def setShaderComposite(object3d)
    end

    def self.instanceC()
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        @@instanceC = value
    end
end

require "org/allbinary/graphics/opengles/shader/ShaderComposite"
require "org/allbinary/graphics/opengles/shader/ShaderOpenGLProcessor"

class AppRendererShaderUpdaterFactory
    @@instanceC = AppRendererShaderUpdaterFactory.new()
end

