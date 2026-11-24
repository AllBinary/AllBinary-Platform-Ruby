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
require "org/allbinary/graphics/opengles/shader/OpenGLObject3dProcessor"

module ::Org; module Allbinary; module Graphics; module Opengles; module Shader

class UniformCameraPositionOpenGLProcessor < OpenGLObject3dProcessor
    

    def initialize(shaderComposite, handleIndex)
        super()
    end
    

    def process(gl, anyType)
    end
    java_overload :process, 2
end

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end
autoload :ShaderComposite, "org/allbinary/graphics/opengles/shader/ShaderComposite" unless const_defined?(:ShaderComposite, false)

end; end; end; end; end

