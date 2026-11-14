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

require "org/allbinary/graphics/opengles/shader/ShaderComposite"

class PlatformShaderComposite < ShaderComposite
    

    def initialize(requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor)
        super(requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, NullOpenGLProcessorFactory.getInstance())
    end
end

autoload :NullOpenGLProcessorFactory, "org/allbinary/graphics/opengles/NullOpenGLProcessorFactory"
autoload :OpenGLProcessor, "org/allbinary/graphics/opengles/OpenGLProcessor"
autoload :CompositeShaderUpdater, "org/allbinary/graphics/opengles/shader/CompositeShaderUpdater"
autoload :ModelViewProjection, "org/allbinary/graphics/opengles/shader/ModelViewProjection"
autoload :Shader, "org/allbinary/graphics/opengles/shader/Shader"
autoload :ShaderInitializer, "org/allbinary/graphics/opengles/shader/ShaderInitializer"

