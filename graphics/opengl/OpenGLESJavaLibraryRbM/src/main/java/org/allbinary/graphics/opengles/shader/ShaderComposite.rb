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

class ShaderComposite
    attr_accessor :disableProgramShaderOpenGLProcessor, :requiresOpenGLVersion, :shaderArray, :shaderInitializer, :compositeShaderUpdater, :modelViewProjection, :colorOpenGLProcessor, :vertexOpenGLProcessor, :useProgramShaderOpenGLProcessor, :shaderMatrixOpenGLProcessor, :colorEnableVertexAttribArrayOpenGLProcessor, :normalEnableVertexAttribArrayOpenGLProcessor, :vertexEnableVertexAttribArrayOpenGLProcessor, :textureEnableVertexAttribArrayOpenGLProcessor, :colorDisableVertexAttribArrayOpenGLProcessor, :normalDisableVertexAttribArrayOpenGLProcessor, :vertexDisableVertexAttribArrayOpenGLProcessor, :textureDisableVertexAttribArrayOpenGLProcessor, :uniformLightPositionOpenGLProcessor, :uniformLightColorOpenGLProcessor, :uniformCameraPositionOpenGLProcessor, :uniformTextureUnitOpenGLProcessor, :programHandle

    def initialize_fields
        @disableProgramShaderOpenGLProcessor = nil
        @requiresOpenGLVersion = nil
        @shaderArray = nil
        @shaderInitializer = nil
        @compositeShaderUpdater = nil
        @modelViewProjection = nil
        @colorOpenGLProcessor = nil
        @vertexOpenGLProcessor = nil
        @useProgramShaderOpenGLProcessor = nil
        @shaderMatrixOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
        @colorEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
        @normalEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
        @vertexEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
        @textureEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
        @colorDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
        @normalDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
        @vertexDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
        @textureDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
        @uniformLightPositionOpenGLProcessor = NullOpenGLTextureProcessor.getInstance()
        @uniformLightColorOpenGLProcessor = NullOpenGLTextureProcessor.getInstance()
        @uniformCameraPositionOpenGLProcessor = NullOpenGLTextureProcessor.getInstance()
        @uniformTextureUnitOpenGLProcessor = NullOpenGLTextureProcessor.getInstance()
        @programHandle = 0
    end
    

    def initialize(requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, disableProgramShaderOpenGLProcessor)
        initialize_fields
        @requiresOpenGLVersion = requiresOpenGLVersion
        @shaderArray = shaderArray
        @shaderInitializer = shaderInitializer
        @compositeShaderUpdater = compositeShaderUpdater
        @modelViewProjection = modelViewProjection
        @colorOpenGLProcessor = colorOpenGLProcessor
        @vertexOpenGLProcessor = vertexOpenGLProcessor
        @disableProgramShaderOpenGLProcessor = disableProgramShaderOpenGLProcessor
    end
    

    def init(gl)
        @programHandle = @shaderInitializer.init(gl, @shaderArray, @compositeShaderUpdater.attributeArray)
    end
end

require "org/allbinary/graphics/opengles/OpenGLProcessor"
require "org/allbinary/graphics/opengles/NullOpenGLProcessorFactory"
require "org/allbinary/graphics/opengles/shader/CompositeShaderUpdater"
require "org/allbinary/graphics/opengles/shader/ModelViewProjection"
require "org/allbinary/graphics/opengles/shader/NullOpenGLTextureProcessor"
require "org/allbinary/graphics/opengles/shader/OpenGLObject3dProcessor"
require "org/allbinary/graphics/opengles/shader/Shader"
require "org/allbinary/graphics/opengles/shader/ShaderInitializer"

