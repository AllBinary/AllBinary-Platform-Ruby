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
# package org.allbinary.graphics.opengles.vbo

# require "javax/microedition/khronos/opengles/GL10"
require "org/allbinary/graphics/threed/min3d/renderer/processor/ObjectThreedOpenGLProcessor"

class VertexAttributePointerVBOOpenGLProcessor < ObjectThreedOpenGLProcessor
    

    def self.getInstance()
        return VertexAttributePointerVBOOpenGLProcessor.instance
    end
    

    def initialize()
        super()
    end
    

    def process(gl, anyType)
        raise RuntimeError.new()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class VertexAttributePointerVBOOpenGLProcessor
    @@instance = VertexAttributePointerVBOOpenGLProcessor.new()
end

