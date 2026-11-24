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
require "org/allbinary/graphics/opengles/shader/ShaderComposite"

module ::Org; module Allbinary; module Graphics; module Opengles; module Shader

class PlatformShaderComposite < ShaderComposite
    

    def initialize(requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor)
        super(requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, ::Org::Allbinary::Graphics::Opengles::NullOpenGLProcessorFactory.getInstance())
    end
end

module ::Org; module Allbinary; module Graphics; module Opengles; autoload :NullOpenGLProcessorFactory, "org/allbinary/graphics/opengles/NullOpenGLProcessorFactory" unless const_defined?(:NullOpenGLProcessorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLProcessor, "org/allbinary/graphics/opengles/OpenGLProcessor" unless const_defined?(:OpenGLProcessor, false); end; end; end; end
autoload :CompositeShaderUpdater, "org/allbinary/graphics/opengles/shader/CompositeShaderUpdater" unless const_defined?(:CompositeShaderUpdater, false)
autoload :ModelViewProjection, "org/allbinary/graphics/opengles/shader/ModelViewProjection" unless const_defined?(:ModelViewProjection, false)
autoload :Shader, "org/allbinary/graphics/opengles/shader/Shader" unless const_defined?(:Shader, false)
autoload :ShaderInitializer, "org/allbinary/graphics/opengles/shader/ShaderInitializer" unless const_defined?(:ShaderInitializer, false)

end; end; end; end; end

