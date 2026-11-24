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


module ::Org; module Allbinary; module Graphics; module Opengles; module Shader

class ShaderComposite
    attr_accessor :disableProgramShaderOpenGLProcessor, :requiresOpenGLVersion, :shaderArray, :shaderInitializer, :compositeShaderUpdater, :modelViewProjection, :colorOpenGLProcessor, :vertexOpenGLProcessor, :useProgramShaderOpenGLProcessor, :shaderMatrixOpenGLProcessor, :colorEnableVertexAttribArrayOpenGLProcessor, :normalEnableVertexAttribArrayOpenGLProcessor, :vertexEnableVertexAttribArrayOpenGLProcessor, :textureEnableVertexAttribArrayOpenGLProcessor, :colorDisableVertexAttribArrayOpenGLProcessor, :normalDisableVertexAttribArrayOpenGLProcessor, :vertexDisableVertexAttribArrayOpenGLProcessor, :textureDisableVertexAttribArrayOpenGLProcessor, :uniformLightPositionOpenGLProcessor, :uniformLightColorOpenGLProcessor, :uniformCameraPositionOpenGLProcessor, :uniformTextureUnitOpenGLProcessor, :programHandle

    def jfields_org_allbinary_graphics_opengles_shader_ShaderComposite
        @disableProgramShaderOpenGLProcessor = nil unless instance_variable_defined?(:@disableProgramShaderOpenGLProcessor)
        @requiresOpenGLVersion = nil unless instance_variable_defined?(:@requiresOpenGLVersion)
        @shaderArray = nil unless instance_variable_defined?(:@shaderArray)
        @shaderInitializer = nil unless instance_variable_defined?(:@shaderInitializer)
        @compositeShaderUpdater = nil unless instance_variable_defined?(:@compositeShaderUpdater)
        @modelViewProjection = nil unless instance_variable_defined?(:@modelViewProjection)
        @colorOpenGLProcessor = nil unless instance_variable_defined?(:@colorOpenGLProcessor)
        @vertexOpenGLProcessor = nil unless instance_variable_defined?(:@vertexOpenGLProcessor)
        @useProgramShaderOpenGLProcessor = ::Org::Allbinary::Graphics::Opengles::NullOpenGLProcessorFactory.getInstance()
        @shaderMatrixOpenGLProcessor = ::Org::Allbinary::Graphics::Opengles::NullOpenGLProcessorFactory.getInstance()
        @colorEnableVertexAttribArrayOpenGLProcessor = ::Org::Allbinary::Graphics::Opengles::NullOpenGLProcessorFactory.getInstance()
        @normalEnableVertexAttribArrayOpenGLProcessor = ::Org::Allbinary::Graphics::Opengles::NullOpenGLProcessorFactory.getInstance()
        @vertexEnableVertexAttribArrayOpenGLProcessor = ::Org::Allbinary::Graphics::Opengles::NullOpenGLProcessorFactory.getInstance()
        @textureEnableVertexAttribArrayOpenGLProcessor = ::Org::Allbinary::Graphics::Opengles::NullOpenGLProcessorFactory.getInstance()
        @colorDisableVertexAttribArrayOpenGLProcessor = ::Org::Allbinary::Graphics::Opengles::NullOpenGLProcessorFactory.getInstance()
        @normalDisableVertexAttribArrayOpenGLProcessor = ::Org::Allbinary::Graphics::Opengles::NullOpenGLProcessorFactory.getInstance()
        @vertexDisableVertexAttribArrayOpenGLProcessor = ::Org::Allbinary::Graphics::Opengles::NullOpenGLProcessorFactory.getInstance()
        @textureDisableVertexAttribArrayOpenGLProcessor = ::Org::Allbinary::Graphics::Opengles::NullOpenGLProcessorFactory.getInstance()
        @uniformLightPositionOpenGLProcessor = NullOpenGLTextureProcessor.getInstance()
        @uniformLightColorOpenGLProcessor = NullOpenGLTextureProcessor.getInstance()
        @uniformCameraPositionOpenGLProcessor = NullOpenGLTextureProcessor.getInstance()
        @uniformTextureUnitOpenGLProcessor = NullOpenGLTextureProcessor.getInstance()
        @programHandle = 0 unless instance_variable_defined?(:@programHandle)
    end
    

    def initialize(requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, disableProgramShaderOpenGLProcessor)
        jfields_org_allbinary_graphics_opengles_shader_ShaderComposite
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

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLProcessor, "org/allbinary/graphics/opengles/OpenGLProcessor" unless const_defined?(:OpenGLProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :NullOpenGLProcessorFactory, "org/allbinary/graphics/opengles/NullOpenGLProcessorFactory" unless const_defined?(:NullOpenGLProcessorFactory, false); end; end; end; end
autoload :CompositeShaderUpdater, "org/allbinary/graphics/opengles/shader/CompositeShaderUpdater" unless const_defined?(:CompositeShaderUpdater, false)
autoload :ModelViewProjection, "org/allbinary/graphics/opengles/shader/ModelViewProjection" unless const_defined?(:ModelViewProjection, false)
autoload :NullOpenGLTextureProcessor, "org/allbinary/graphics/opengles/shader/NullOpenGLTextureProcessor" unless const_defined?(:NullOpenGLTextureProcessor, false)
autoload :OpenGLObject3dProcessor, "org/allbinary/graphics/opengles/shader/OpenGLObject3dProcessor" unless const_defined?(:OpenGLObject3dProcessor, false)
autoload :Shader, "org/allbinary/graphics/opengles/shader/Shader" unless const_defined?(:Shader, false)
autoload :ShaderInitializer, "org/allbinary/graphics/opengles/shader/ShaderInitializer" unless const_defined?(:ShaderInitializer, false)

end; end; end; end; end

