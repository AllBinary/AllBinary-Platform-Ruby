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

# require "javax/microedition/khronos/opengles/GL10"
require "org/allbinary/graphics/opengles/shader/ShaderComposite"

class NullShaderComposite < ShaderComposite
    

    def self.getInstance()
        return NullShaderComposite.instance
    end
    

    def initialize(requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, disableProgramShaderOpenGLProcessor)
        super(requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, disableProgramShaderOpenGLProcessor)
        @useProgramShaderOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/opengles/NullOpenGLProcessorFactory"
require "org/allbinary/graphics/opengles/OpenGLCapabilities"
require "org/allbinary/graphics/opengles/OpenGLProcessor"
require "org/allbinary/graphics/opengles/shader/CompositeShaderUpdater"
require "org/allbinary/graphics/opengles/shader/ModelViewProjection"
require "org/allbinary/graphics/opengles/shader/Shader"
require "org/allbinary/graphics/opengles/shader/ShaderInitializer"

class NullShaderComposite
    @@instance = Class.new(NullShaderComposite.is_a?(Class) ? NullShaderComposite : Object) do
        include(NullShaderComposite) unless NullShaderComposite.is_a?(Class)
        

        def init(gl)
        end
    end.new(OpenGLCapabilities.getInstance().VERSION_2_0, [Shader.new(), Shader.new()], CompositeShaderUpdater.getInstance(), ShaderInitializer.getInstance(), ModelViewProjection.getInstance(), nil, nil, NullOpenGLProcessorFactory.getInstance())
end

